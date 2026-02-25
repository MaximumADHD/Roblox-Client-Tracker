PROTO_0:
        0 DUPTABLE                         R0 K2 [{"filepath", "preset"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["filepath"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["preset"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K3 ["doSaveConfig"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Lib"]
        5 GETTABLEKS                       R2 R3 K3 ["External"]
        7 GETTABLEKS                       R1 R2 K4 ["AssetImportService"]
        9 CALL                             R0 1 1
       10 NAMECALL                         R1 R0 K5 ["PickMeshFileWithPrompt"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["configData"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["configData"]
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R3 R0 K1 ["presets"]
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETTABLEKS                       R4 R0 K1 ["presets"]
       13 LENGTH                           R3 R4
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+4]
       17 GETTABLEKS                       R2 R0 K1 ["presets"]
       19 JUMP                             ; [+7]
       20 NEWTABLE                         R2 0 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K2 ["StudioDefaultPreset"]
       25 SETLIST                          R2 R3 1 [1]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K3 ["useState"]
       30 GETTABLEKS                       R4 R1 K4 ["filepath"]
       32 CALL                             R3 1 2
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K3 ["useState"]
       36 GETTABLEKS                       R6 R1 K5 ["preset"]
       38 JUMPIF                           R6 ; [+3]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K2 ["StudioDefaultPreset"]
       42 CALL                             R5 1 2
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 JUMPIFNOTEQKNIL                  R3 ; [+2]
       49 LOADB                            R8 0 +1
       50 LOADB                            R8 1
       51 NEWTABLE                         R9 0 1
       53 GETUPVAL                         R10 2
       54 GETUPVAL                         R11 3
       55 DUPTABLE                         R12 K10 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       56 SETTABLEKS                       R8 R12 K6 ["canSave"]
       58 SETTABLEKS                       R7 R12 K7 ["doSaveConfig"]
       60 GETTABLEKS                       R13 R0 K8 ["doReimport"]
       62 SETTABLEKS                       R13 R12 K8 ["doReimport"]
       64 GETTABLEKS                       R13 R0 K9 ["onClose"]
       66 SETTABLEKS                       R13 R12 K9 ["onClose"]
       68 NEWTABLE                         R13 0 1
       70 GETUPVAL                         R14 2
       71 GETUPVAL                         R15 4
       72 NEWTABLE                         R16 0 0
       74 NEWTABLE                         R17 0 2
       76 DUPTABLE                         R18 K13 [{"label", "content"}]
       77 LOADK                            R19 K14 ["File Path"]
       78 SETTABLEKS                       R19 R18 K11 ["label"]
       80 GETUPVAL                         R19 2
       81 GETUPVAL                         R20 5
       82 DUPTABLE                         R21 K17 [{"filepath", "doPickFile", "onFilepathChanged"}]
       83 SETTABLEKS                       R3 R21 K4 ["filepath"]
       85 DUPCLOSURE                       R22 K18 [PROTO_1]
       86 CAPTURE                          UPVAL U6
       87 SETTABLEKS                       R22 R21 K15 ["doPickFile"]
       89 NEWCLOSURE                       R22 P2
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R22 R21 K16 ["onFilepathChanged"]
       93 CALL                             R19 2 1
       94 SETTABLEKS                       R19 R18 K12 ["content"]
       96 DUPTABLE                         R19 K13 [{"label", "content"}]
       97 LOADK                            R20 K19 ["Import Preset"]
       98 SETTABLEKS                       R20 R19 K11 ["label"]
      100 GETUPVAL                         R20 2
      101 GETUPVAL                         R21 7
      102 DUPTABLE                         R22 K24 [{"label", "size", "value", "onItemChanged", "items"}]
      103 LOADK                            R23 K25 [""]
      104 SETTABLEKS                       R23 R22 K11 ["label"]
      106 GETUPVAL                         R26 8
      107 GETTABLEKS                       R25 R26 K26 ["Enums"]
      109 GETTABLEKS                       R24 R25 K27 ["InputSize"]
      111 GETTABLEKS                       R23 R24 K28 ["Small"]
      113 SETTABLEKS                       R23 R22 K20 ["size"]
      115 SETTABLEKS                       R5 R22 K21 ["value"]
      117 NEWCLOSURE                       R23 P3
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R23 R22 K22 ["onItemChanged"]
      121 GETUPVAL                         R24 9
      122 GETTABLEKS                       R23 R24 K29 ["map"]
      124 MOVE                             R24 R2
      125 DUPCLOSURE                       R25 K30 [PROTO_4]
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K23 ["items"]
      129 CALL                             R20 2 1
      130 SETTABLEKS                       R20 R19 K12 ["content"]
      132 SETLIST                          R17 R18 2 [1]
      134 CALL                             R14 3 -1
      135 SETLIST                          R13 R14 -1 [1]
      137 CALL                             R10 3 -1
      138 SETLIST                          R9 R10 -1 [1]
      140 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Lib"]
       34 GETTABLEKS                       R6 R7 K12 ["Constants"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R9 R0 K13 ["Src"]
       41 GETTABLEKS                       R8 R9 K14 ["Dialogs"]
       43 GETTABLEKS                       R7 R8 K15 ["ConfigDialogBase"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K13 ["Src"]
       50 GETTABLEKS                       R9 R10 K16 ["Components"]
       52 GETTABLEKS                       R8 R9 K17 ["Form"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R11 R0 K13 ["Src"]
       59 GETTABLEKS                       R10 R11 K16 ["Components"]
       61 GETTABLEKS                       R9 R10 K18 ["FillDropdown"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R13 R0 K13 ["Src"]
       68 GETTABLEKS                       R12 R13 K14 ["Dialogs"]
       70 GETTABLEKS                       R11 R12 K19 ["Common"]
       72 GETTABLEKS                       R10 R11 K20 ["PickableFilePath"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Lib"]
       79 GETTABLEKS                       R12 R13 K21 ["Reimport"]
       81 GETTABLEKS                       R11 R12 K22 ["Types"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R14 R0 K13 ["Src"]
       88 GETTABLEKS                       R13 R14 K14 ["Dialogs"]
       90 GETTABLEKS                       R12 R13 K22 ["Types"]
       92 CALL                             R11 1 1
       93 DUPCLOSURE                       R12 K23 [PROTO_5]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R1
      104 RETURN                           R12 1
