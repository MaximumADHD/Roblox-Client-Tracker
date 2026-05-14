PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 SETTABLEKS                       R0 R2 K0 ["plugin"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["mock"]
        8 CALL                             R3 0 1
        9 JUMP                             ; [+14]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["new"]
       13 DUPTABLE                         R4 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K3 ["stringResourceTable"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K4 ["translationResourceTable"]
       20 LOADK                            R5 K7 ["AssetImporter"]
       21 SETTABLEKS                       R5 R4 K5 ["pluginName"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K8 ["localization"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K9 ["actionConnection"]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K2 ["new"]
       32 MOVE                             R4 R0
       33 LOADNIL                          R5
       34 GETTABLEKS                       R6 R2 K8 ["localization"]
       36 MOVE                             R7 R1
       37 CALL                             R3 4 1
       38 SETTABLEKS                       R3 R2 K10 ["storelessPresetController"]
       40 GETUPVAL                         R5 4
       41 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K12 [setmetatable]
       46 CALL                             R3 2 1
       47 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickMeshFileWithPrompt"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["run"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 DUPTABLE                         R3 K10 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
        7 GETUPVAL                         R4 0
        8 SETTABLEKS                       R4 R3 K3 ["Uri"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K4 ["Enabled"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K5 ["Visible"]
       16 GETTABLEKS                       R4 R0 K11 ["localization"]
       18 LOADK                            R6 K12 ["QuickImport"]
       19 LOADK                            R7 K13 ["ActionText"]
       20 NAMECALL                         R4 R4 K14 ["getText"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K6 ["Text"]
       25 GETTABLEKS                       R4 R0 K11 ["localization"]
       27 LOADK                            R6 K12 ["QuickImport"]
       28 LOADK                            R7 K7 ["Tooltip"]
       29 NAMECALL                         R4 R4 K14 ["getText"]
       31 CALL                             R4 3 1
       32 SETTABLEKS                       R4 R3 K7 ["Tooltip"]
       34 LOADK                            R4 K15 ["3DImport"]
       35 SETTABLEKS                       R4 R3 K8 ["Icon"]
       37 NEWTABLE                         R4 0 1
       39 LOADK                            R5 K16 ["Alt+M"]
       40 SETLIST                          R4 R5 1 [1]
       42 SETTABLEKS                       R4 R3 K9 ["Shortcuts"]
       44 GETTABLEKS                       R4 R0 K17 ["actionConnection"]
       46 JUMPIFNOT                        R4 ; [+8]
       47 GETTABLEKS                       R4 R0 K17 ["actionConnection"]
       49 NAMECALL                         R4 R4 K18 ["Disconnect"]
       51 CALL                             R4 1 0
       52 LOADNIL                          R4
       53 SETTABLEKS                       R4 R0 K17 ["actionConnection"]
       55 MOVE                             R7 R3
       56 LOADB                            R8 1
       57 NAMECALL                         R5 R2 K19 ["CreateAsync"]
       59 CALL                             R5 3 1
       60 GETTABLEN                        R4 R5 1
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R4 R4 K20 ["Connect"]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R0 K17 ["actionConnection"]
       69 JUMPIFNOT                        R1 ; [+2]
       70 MOVE                             R4 R1
       71 CALL                             R4 0 0
       72 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["actionConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["actionConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["actionConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["session"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["session"]
       16 NAMECALL                         R1 R1 K3 ["Cancel"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["session"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Frame"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["createRoot"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 MOVE                             R7 R4
       10 MOVE                             R8 R1
       11 MOVE                             R9 R2
       12 NAMECALL                         R5 R0 K5 ["_createFailureDialog"]
       14 CALL                             R5 4 1
       15 MOVE                             R8 R5
       16 NAMECALL                         R6 R4 K6 ["render"]
       18 CALL                             R6 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["Retry"] ; [+14]
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R3
        4 NAMECALL                         R1 R1 K1 ["render"]
        6 CALL                             R1 2 0
        7 LOADNIL                          R1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R1 R1 K2 ["run"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0
       15 JUMPIFNOTEQKS                    R0 K3 ["Close"] ; [+8]
       17 GETUPVAL                         R1 0
       18 LOADNIL                          R3
       19 NAMECALL                         R1 R1 K1 ["render"]
       21 CALL                             R1 2 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 0
       24 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R3 ; [+3]
        1 GETTABLEKS                       R4 R3 K0 ["ErrorMessages"]
        3 JUMP                             ; [+18]
        4 NEWTABLE                         R4 1 0
        6 GETUPVAL                         R5 0
        7 DUPTABLE                         R7 K4 [{"httpResponse", "simpleErrorMessage", "operationId"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K1 ["httpResponse"]
       12 LOADK                            R8 K5 ["Corrupted"]
       13 SETTABLEKS                       R8 R7 K2 ["simpleErrorMessage"]
       15 LOADN                            R8 255
       16 SETTABLEKS                       R8 R7 K3 ["operationId"]
       18 NAMECALL                         R5 R5 K6 ["JSONEncode"]
       20 CALL                             R5 2 1
       21 SETTABLE                         R5 R4 R2
       22 NEWTABLE                         R5 0 2
       24 DUPTABLE                         R6 K10 [{"Key", "Text", "Style"}]
       25 LOADK                            R7 K11 ["Retry"]
       26 SETTABLEKS                       R7 R6 K7 ["Key"]
       28 GETTABLEKS                       R7 R0 K12 ["localization"]
       30 LOADK                            R9 K13 ["Plugin"]
       31 LOADK                            R10 K11 ["Retry"]
       32 NAMECALL                         R7 R7 K14 ["getText"]
       34 CALL                             R7 3 1
       35 SETTABLEKS                       R7 R6 K8 ["Text"]
       37 LOADK                            R7 K15 ["RoundPrimary"]
       38 SETTABLEKS                       R7 R6 K9 ["Style"]
       40 DUPTABLE                         R7 K16 [{"Key", "Text"}]
       41 LOADK                            R8 K17 ["Close"]
       42 SETTABLEKS                       R8 R7 K7 ["Key"]
       44 GETTABLEKS                       R8 R0 K12 ["localization"]
       46 LOADK                            R10 K13 ["Plugin"]
       47 LOADK                            R11 K17 ["Close"]
       48 NAMECALL                         R8 R8 K14 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K8 ["Text"]
       53 SETLIST                          R5 R6 2 [1]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          REF R1
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          REF R1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K18 ["createElement"]
       64 GETUPVAL                         R9 2
       65 DUPTABLE                         R10 K24 [{"Title", "Buttons", "OnClose", "OnButtonPressed", "MinContentSize"}]
       66 GETTABLEKS                       R11 R0 K12 ["localization"]
       68 LOADK                            R13 K25 ["Error"]
       69 LOADK                            R14 K26 ["WindowTitle"]
       70 NAMECALL                         R11 R11 K14 ["getText"]
       72 CALL                             R11 3 1
       73 SETTABLEKS                       R11 R10 K19 ["Title"]
       75 SETTABLEKS                       R5 R10 K20 ["Buttons"]
       77 SETTABLEKS                       R6 R10 K21 ["OnClose"]
       79 SETTABLEKS                       R7 R10 K22 ["OnButtonPressed"]
       81 GETIMPORT                        R11 K29 [Vector2.new]
       83 LOADN                            R12 144
       84 LOADN                            R13 110
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K23 ["MinContentSize"]
       88 DUPTABLE                         R11 K31 [{"Content"}]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K18 ["createElement"]
       92 GETUPVAL                         R13 3
       93 DUPTABLE                         R14 K36 [{"LayoutOrder", "ErrorMap", "ExistingPackageId", "UploadWidgetItem"}]
       94 LOADN                            R15 1
       95 SETTABLEKS                       R15 R14 K32 ["LayoutOrder"]
       97 SETTABLEKS                       R4 R14 K33 ["ErrorMap"]
       99 LOADN                            R15 255
      100 SETTABLEKS                       R15 R14 K34 ["ExistingPackageId"]
      102 GETUPVAL                         R15 4
      103 GETTABLEKS                       R15 R15 K28 ["new"]
      105 CALL                             R15 0 1
      106 SETTABLEKS                       R15 R14 K35 ["UploadWidgetItem"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K30 ["Content"]
      111 CALL                             R8 3 -1
      112 CLOSEUPVALS                      R1
      113 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
       11 JUMPIFEQKNIL                     R1 ; [+10]
       13 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
       15 JUMPIF                           R1 ; [+6]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 NAMECALL                         R1 R1 K2 ["_importFailed"]
       21 CALL                             R1 3 0
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R2 R0 K3 ["AssetIds"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 4
       27 MOVE                             R2 R0
       28 GETUPVAL                         R3 5
       29 LOADB                            R4 1
       30 CALL                             R1 3 1
       31 CALL                             R1 0 0
       32 GETUPVAL                         R1 6
       33 JUMPIFNOT                        R1 ; [+4]
       34 GETUPVAL                         R1 6
       35 GETTABLEKS                       R2 R0 K4 ["ErrorMessages"]
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 NAMECALL                         R0 R0 K1 ["Upload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["StartSessionWithPathAsync"]
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R3 R0 K1 ["session"]
        7 GETTABLEKS                       R4 R0 K1 ["session"]
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETTABLEKS                       R3 R0 K1 ["session"]
       12 NAMECALL                         R3 R3 K2 ["GetImportTree"]
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIF                           R3 ; [+5]
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R0 K3 ["_importFailed"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K4 ["AddModelToInventory"]
       26 NAMECALL                         R4 R3 K5 ["GetDescendants"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 LOADK                            R11 K6 ["AnimationImportData"]
       31 NAMECALL                         R9 R8 K7 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+3]
       35 LOADB                            R9 0
       36 SETTABLEKS                       R9 R8 K8 ["ShouldImport"]
       38 FORGLOOP                         R4 2 ; [-9]
       40 LOADNIL                          R4
       41 GETTABLEKS                       R5 R0 K1 ["session"]
       43 GETTABLEKS                       R5 R5 K9 ["UploadComplete"]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          REF R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 NAMECALL                         R5 R5 K10 ["Connect"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R0 K11 ["uploadConnection"]
       58 GETIMPORT                        R5 K14 [task.spawn]
       60 NEWCLOSURE                       R6 P1
       61 CAPTURE                          VAL R0
       62 CALL                             R5 1 0
       63 CLOSEUPVALS                      R4
       64 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["HttpService"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K13 ["Framework"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["ReactRoblox"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Packages"]
       42 GETTABLEKS                       R7 R7 K15 ["React"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R4 K16 ["ContextServices"]
       47 GETTABLEKS                       R7 R7 K17 ["Localization"]
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Src"]
       53 GETTABLEKS                       R9 R9 K18 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R10 K19 ["Components"]
       62 GETTABLEKS                       R10 R10 K20 ["Dialogs"]
       64 GETTABLEKS                       R10 R10 K21 ["AdHocDialogue"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Src"]
       71 GETTABLEKS                       R11 R11 K19 ["Components"]
       73 GETTABLEKS                       R11 R11 K20 ["Dialogs"]
       75 GETTABLEKS                       R11 R11 K22 ["UploadWidgets"]
       77 GETTABLEKS                       R11 R11 K23 ["FailureWidget"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K6 ["Src"]
       84 GETTABLEKS                       R12 R12 K18 ["Types"]
       86 GETTABLEKS                       R12 R12 K24 ["QueuedSession"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K5 [require]
       91 GETTABLEKS                       R13 R0 K6 ["Src"]
       93 GETTABLEKS                       R13 R13 K25 ["Controllers"]
       95 GETTABLEKS                       R13 R13 K26 ["PresetController"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K6 ["Src"]
      102 GETTABLEKS                       R14 R14 K27 ["Thunks"]
      104 GETTABLEKS                       R14 R14 K28 ["InsertModelInWorkspace"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K6 ["Src"]
      111 GETTABLEKS                       R15 R15 K7 ["Utility"]
      113 GETTABLEKS                       R15 R15 K29 ["reportUploadedAssetId"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R0 K6 ["Src"]
      118 GETTABLEKS                       R15 R15 K30 ["Resources"]
      120 GETTABLEKS                       R15 R15 K17 ["Localization"]
      122 GETTABLEKS                       R15 R15 K31 ["LocalizedStrings"]
      124 GETTABLEKS                       R16 R0 K6 ["Src"]
      126 GETTABLEKS                       R16 R16 K30 ["Resources"]
      128 GETTABLEKS                       R16 R16 K17 ["Localization"]
      130 GETTABLEKS                       R16 R16 K32 ["SourceStrings"]
      132 GETIMPORT                        R17 K5 [require]
      134 GETTABLEKS                       R18 R0 K6 ["Src"]
      136 GETTABLEKS                       R18 R18 K33 ["QuickImporter"]
      138 GETTABLEKS                       R18 R18 K34 ["QuickImportActionUri"]
      140 CALL                             R17 1 1
      141 NEWTABLE                         R18 8 0
      143 SETTABLEKS                       R18 R18 K35 ["__index"]
      145 DUPCLOSURE                       R19 K36 [PROTO_0]
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R18
      151 SETTABLEKS                       R19 R18 K37 ["new"]
      153 DUPCLOSURE                       R19 K38 [PROTO_2]
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R19 R18 K39 ["registerAction"]
      158 DUPCLOSURE                       R19 K40 [PROTO_3]
      159 SETTABLEKS                       R19 R18 K41 ["destroy"]
      161 DUPCLOSURE                       R19 K42 [PROTO_4]
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R19 R18 K43 ["_importFailed"]
      165 DUPCLOSURE                       R19 K44 [PROTO_7]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R11
      171 SETTABLEKS                       R19 R18 K45 ["_createFailureDialog"]
      173 DUPCLOSURE                       R19 K46 [PROTO_10]
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R19 R18 K47 ["run"]
      179 RETURN                           R18 1
