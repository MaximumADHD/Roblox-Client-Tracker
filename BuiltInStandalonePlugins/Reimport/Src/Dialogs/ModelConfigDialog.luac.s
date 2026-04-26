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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K2 ["configData"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R2 R0 K2 ["configData"]
       12 JUMP                             ; [+2]
       13 NEWTABLE                         R2 0 0
       15 GETTABLEKS                       R4 R0 K3 ["presets"]
       17 JUMPIFNOT                        R4 ; [+9]
       18 GETTABLEKS                       R5 R0 K3 ["presets"]
       20 LENGTH                           R4 R5
       21 LOADN                            R5 0
       22 JUMPIFNOTLT                      R5 R4 ; [+4]
       24 GETTABLEKS                       R3 R0 K3 ["presets"]
       26 JUMP                             ; [+7]
       27 NEWTABLE                         R3 0 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K4 ["StudioDefaultPreset"]
       32 SETLIST                          R3 R4 1 [1]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K5 ["useState"]
       37 GETTABLEKS                       R5 R2 K6 ["filepath"]
       39 CALL                             R4 1 2
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K5 ["useState"]
       43 GETTABLEKS                       R7 R2 K7 ["preset"]
       45 JUMPIF                           R7 ; [+3]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R7 R8 K4 ["StudioDefaultPreset"]
       49 CALL                             R6 1 2
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K5 ["useState"]
       53 GETTABLEKS                       R10 R2 K9 ["creatorId"]
       55 ORK                              R9 R10 K8 []
       56 CALL                             R8 1 2
       57 NEWCLOSURE                       R10 P0
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R0
       62 JUMPIFNOTEQKNIL                  R4 ; [+2]
       64 LOADB                            R11 0 +1
       65 LOADB                            R11 1
       66 NEWTABLE                         R12 0 1
       68 GETUPVAL                         R13 3
       69 GETUPVAL                         R14 4
       70 DUPTABLE                         R15 K14 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       71 SETTABLEKS                       R11 R15 K10 ["canSave"]
       73 SETTABLEKS                       R10 R15 K11 ["doSaveConfig"]
       75 GETTABLEKS                       R16 R0 K12 ["doReimport"]
       77 SETTABLEKS                       R16 R15 K12 ["doReimport"]
       79 GETTABLEKS                       R16 R0 K13 ["onClose"]
       81 SETTABLEKS                       R16 R15 K13 ["onClose"]
       83 NEWTABLE                         R16 0 1
       85 GETUPVAL                         R17 3
       86 GETUPVAL                         R18 5
       87 NEWTABLE                         R19 0 0
       89 NEWTABLE                         R20 0 3
       91 DUPTABLE                         R21 K17 [{"label", "content"}]
       92 LOADK                            R22 K18 ["File Path"]
       93 SETTABLEKS                       R22 R21 K15 ["label"]
       95 GETUPVAL                         R22 3
       96 GETUPVAL                         R23 6
       97 DUPTABLE                         R24 K21 [{"filepath", "doPickFile", "onFilepathChanged"}]
       98 SETTABLEKS                       R4 R24 K6 ["filepath"]
      100 DUPCLOSURE                       R25 K22 [PROTO_1]
      101 CAPTURE                          UPVAL U7
      102 SETTABLEKS                       R25 R24 K19 ["doPickFile"]
      104 NEWCLOSURE                       R25 P2
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R25 R24 K20 ["onFilepathChanged"]
      108 CALL                             R22 2 1
      109 SETTABLEKS                       R22 R21 K16 ["content"]
      111 GETUPVAL                         R23 8
      112 CALL                             R23 0 1
      113 JUMPIFNOT                        R23 ; [+26]
      114 DUPTABLE                         R22 K17 [{"label", "content"}]
      115 LOADK                            R23 K23 ["Creator"]
      116 SETTABLEKS                       R23 R22 K15 ["label"]
      118 GETUPVAL                         R23 3
      119 GETUPVAL                         R24 9
      120 DUPTABLE                         R25 K27 [{"size", "value", "onItemChanged"}]
      121 GETUPVAL                         R29 10
      122 GETTABLEKS                       R28 R29 K28 ["Enums"]
      124 GETTABLEKS                       R27 R28 K29 ["InputSize"]
      126 GETTABLEKS                       R26 R27 K30 ["Small"]
      128 SETTABLEKS                       R26 R25 K24 ["size"]
      130 SETTABLEKS                       R8 R25 K25 ["value"]
      132 NEWCLOSURE                       R26 P3
      133 CAPTURE                          VAL R9
      134 SETTABLEKS                       R26 R25 K26 ["onItemChanged"]
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K16 ["content"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R22
      141 DUPTABLE                         R23 K17 [{"label", "content"}]
      142 LOADK                            R24 K31 ["Import Preset"]
      143 SETTABLEKS                       R24 R23 K15 ["label"]
      145 GETUPVAL                         R24 3
      146 GETUPVAL                         R25 11
      147 DUPTABLE                         R26 K34 [{"label", "size", "value", "onItemChanged", "maxHeight", "items"}]
      148 LOADK                            R27 K35 [""]
      149 SETTABLEKS                       R27 R26 K15 ["label"]
      151 GETUPVAL                         R30 10
      152 GETTABLEKS                       R29 R30 K28 ["Enums"]
      154 GETTABLEKS                       R28 R29 K29 ["InputSize"]
      156 GETTABLEKS                       R27 R28 K30 ["Small"]
      158 SETTABLEKS                       R27 R26 K24 ["size"]
      160 SETTABLEKS                       R6 R26 K25 ["value"]
      162 NEWCLOSURE                       R27 P4
      163 CAPTURE                          VAL R7
      164 SETTABLEKS                       R27 R26 K26 ["onItemChanged"]
      166 GETUPVAL                         R28 12
      167 CALL                             R28 0 1
      168 JUMPIFNOT                        R28 ; [+5]
      169 GETTABLEKS                       R28 R1 K36 ["dialogSize"]
      171 GETTABLEKS                       R27 R28 K37 ["Y"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R27
      175 SETTABLEKS                       R27 R26 K32 ["maxHeight"]
      177 GETUPVAL                         R28 13
      178 GETTABLEKS                       R27 R28 K38 ["map"]
      180 MOVE                             R28 R3
      181 DUPCLOSURE                       R29 K39 [PROTO_5]
      182 CALL                             R27 2 1
      183 SETTABLEKS                       R27 R26 K33 ["items"]
      185 CALL                             R24 2 1
      186 SETTABLEKS                       R24 R23 K16 ["content"]
      188 SETLIST                          R20 R21 3 [1]
      190 CALL                             R17 3 -1
      191 SETLIST                          R16 R17 -1 [1]
      193 CALL                             R13 3 -1
      194 SETLIST                          R12 R13 -1 [1]
      196 RETURN                           R12 1

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
       97 GETTABLEKS                       R15 R0 K13 ["Src"]
       99 GETTABLEKS                       R14 R15 K24 ["Contexts"]
      101 GETTABLEKS                       R13 R14 K25 ["DialogContext"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R15 R0 K26 ["Flags"]
      108 GETTABLEKS                       R14 R15 K27 ["GetFFlagEnableGroupUpload"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R16 R0 K26 ["Flags"]
      115 GETTABLEKS                       R15 R16 K28 ["GetFFlagReimportScrollableDropdowns"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K5 [require]
      120 GETTABLEKS                       R18 R0 K13 ["Src"]
      122 GETTABLEKS                       R17 R18 K14 ["Dialogs"]
      124 GETTABLEKS                       R16 R17 K23 ["Types"]
      126 CALL                             R15 1 1
      127 DUPCLOSURE                       R16 K29 [PROTO_6]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R1
      142 RETURN                           R16 1
