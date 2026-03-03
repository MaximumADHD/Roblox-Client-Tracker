PROTO_0:
        0 DUPTABLE                         R0 K4 [{"filepath", "preset", "creatorId", "creatorType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["filepath"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["preset"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["creatorId"]
       10 GETUPVAL                         R2 2
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R1 K5 ["group"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["creatorType"]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K6 ["doSaveConfig"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_6:
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
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R7 R8 K3 ["useState"]
       46 GETTABLEKS                       R9 R1 K7 ["creatorId"]
       48 ORK                              R8 R9 K6 []
       49 CALL                             R7 1 2
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 JUMPIFNOTEQKNIL                  R3 ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 NEWTABLE                         R11 0 1
       61 GETUPVAL                         R12 2
       62 GETUPVAL                         R13 3
       63 DUPTABLE                         R14 K12 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       64 SETTABLEKS                       R10 R14 K8 ["canSave"]
       66 SETTABLEKS                       R9 R14 K9 ["doSaveConfig"]
       68 GETTABLEKS                       R15 R0 K10 ["doReimport"]
       70 SETTABLEKS                       R15 R14 K10 ["doReimport"]
       72 GETTABLEKS                       R15 R0 K11 ["onClose"]
       74 SETTABLEKS                       R15 R14 K11 ["onClose"]
       76 NEWTABLE                         R15 0 1
       78 GETUPVAL                         R16 2
       79 GETUPVAL                         R17 4
       80 NEWTABLE                         R18 0 0
       82 NEWTABLE                         R19 0 3
       84 DUPTABLE                         R20 K15 [{"label", "content"}]
       85 LOADK                            R21 K16 ["File Path"]
       86 SETTABLEKS                       R21 R20 K13 ["label"]
       88 GETUPVAL                         R21 2
       89 GETUPVAL                         R22 5
       90 DUPTABLE                         R23 K19 [{"filepath", "doPickFile", "onFilepathChanged"}]
       91 SETTABLEKS                       R3 R23 K4 ["filepath"]
       93 DUPCLOSURE                       R24 K20 [PROTO_1]
       94 CAPTURE                          UPVAL U6
       95 SETTABLEKS                       R24 R23 K17 ["doPickFile"]
       97 NEWCLOSURE                       R24 P2
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R24 R23 K18 ["onFilepathChanged"]
      101 CALL                             R21 2 1
      102 SETTABLEKS                       R21 R20 K14 ["content"]
      104 GETUPVAL                         R22 7
      105 CALL                             R22 0 1
      106 JUMPIFNOT                        R22 ; [+26]
      107 DUPTABLE                         R21 K15 [{"label", "content"}]
      108 LOADK                            R22 K21 ["Creator"]
      109 SETTABLEKS                       R22 R21 K13 ["label"]
      111 GETUPVAL                         R22 2
      112 GETUPVAL                         R23 8
      113 DUPTABLE                         R24 K25 [{"size", "value", "onItemChanged"}]
      114 GETUPVAL                         R28 9
      115 GETTABLEKS                       R27 R28 K26 ["Enums"]
      117 GETTABLEKS                       R26 R27 K27 ["InputSize"]
      119 GETTABLEKS                       R25 R26 K28 ["Small"]
      121 SETTABLEKS                       R25 R24 K22 ["size"]
      123 SETTABLEKS                       R7 R24 K23 ["value"]
      125 NEWCLOSURE                       R25 P3
      126 CAPTURE                          VAL R8
      127 SETTABLEKS                       R25 R24 K24 ["onItemChanged"]
      129 CALL                             R22 2 1
      130 SETTABLEKS                       R22 R21 K14 ["content"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R21
      134 DUPTABLE                         R22 K15 [{"label", "content"}]
      135 LOADK                            R23 K29 ["Import Preset"]
      136 SETTABLEKS                       R23 R22 K13 ["label"]
      138 GETUPVAL                         R23 2
      139 GETUPVAL                         R24 10
      140 DUPTABLE                         R25 K31 [{"label", "size", "value", "onItemChanged", "items"}]
      141 LOADK                            R26 K32 [""]
      142 SETTABLEKS                       R26 R25 K13 ["label"]
      144 GETUPVAL                         R29 9
      145 GETTABLEKS                       R28 R29 K26 ["Enums"]
      147 GETTABLEKS                       R27 R28 K27 ["InputSize"]
      149 GETTABLEKS                       R26 R27 K28 ["Small"]
      151 SETTABLEKS                       R26 R25 K22 ["size"]
      153 SETTABLEKS                       R5 R25 K23 ["value"]
      155 NEWCLOSURE                       R26 P4
      156 CAPTURE                          VAL R6
      157 SETTABLEKS                       R26 R25 K24 ["onItemChanged"]
      159 GETUPVAL                         R27 11
      160 GETTABLEKS                       R26 R27 K33 ["map"]
      162 MOVE                             R27 R2
      163 DUPCLOSURE                       R28 K34 [PROTO_5]
      164 CALL                             R26 2 1
      165 SETTABLEKS                       R26 R25 K30 ["items"]
      167 CALL                             R23 2 1
      168 SETTABLEKS                       R23 R22 K14 ["content"]
      170 SETLIST                          R19 R20 3 [1]
      172 CALL                             R16 3 -1
      173 SETLIST                          R15 R16 -1 [1]
      175 CALL                             R12 3 -1
      176 SETLIST                          R11 R12 -1 [1]
      178 RETURN                           R11 1

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
       77 GETTABLEKS                       R14 R0 K13 ["Src"]
       79 GETTABLEKS                       R13 R14 K14 ["Dialogs"]
       81 GETTABLEKS                       R12 R13 K19 ["Common"]
       83 GETTABLEKS                       R11 R12 K21 ["GroupPicker"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Lib"]
       90 GETTABLEKS                       R13 R14 K22 ["Reimport"]
       92 GETTABLEKS                       R12 R13 K23 ["Types"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Flags"]
       99 GETTABLEKS                       R13 R14 K25 ["GetFFlagEnableGroupUpload"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K5 [require]
      104 GETTABLEKS                       R16 R0 K13 ["Src"]
      106 GETTABLEKS                       R15 R16 K14 ["Dialogs"]
      108 GETTABLEKS                       R14 R15 K23 ["Types"]
      110 CALL                             R13 1 1
      111 DUPCLOSURE                       R14 K26 [PROTO_6]
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R1
      124 RETURN                           R14 1
