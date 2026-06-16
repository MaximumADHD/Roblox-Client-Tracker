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
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K6 ["doSaveConfig"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Lib"]
        5 GETTABLEKS                       R1 R1 K3 ["External"]
        7 GETTABLEKS                       R1 R1 K4 ["AssetImportService"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K3 ["configData"]
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R0 K3 ["configData"]
       16 JUMP                             ; [+2]
       17 NEWTABLE                         R3 0 0
       19 GETTABLEKS                       R5 R0 K4 ["presets"]
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETTABLEKS                       R6 R0 K4 ["presets"]
       24 LENGTH                           R5 R6
       25 LOADN                            R6 0
       26 JUMPIFNOTLT                      R6 R5 ; [+4]
       28 GETTABLEKS                       R4 R0 K4 ["presets"]
       30 JUMP                             ; [+7]
       31 NEWTABLE                         R4 0 1
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K5 ["StudioDefaultPreset"]
       36 SETLIST                          R4 R5 1 [1]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K6 ["useState"]
       41 GETTABLEKS                       R6 R3 K7 ["filepath"]
       43 CALL                             R5 1 2
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K6 ["useState"]
       47 GETTABLEKS                       R8 R3 K8 ["preset"]
       49 JUMPIF                           R8 ; [+3]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K5 ["StudioDefaultPreset"]
       53 CALL                             R7 1 2
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K6 ["useState"]
       57 GETTABLEKS                       R11 R3 K10 ["creatorId"]
       59 ORK                              R10 R11 K9 []
       60 CALL                             R9 1 2
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R0
       66 JUMPIFNOTEQKNIL                  R5 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 NEWTABLE                         R13 0 1
       72 GETUPVAL                         R14 4
       73 GETUPVAL                         R15 5
       74 DUPTABLE                         R16 K15 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       75 SETTABLEKS                       R12 R16 K11 ["canSave"]
       77 SETTABLEKS                       R11 R16 K12 ["doSaveConfig"]
       79 GETTABLEKS                       R17 R0 K13 ["doReimport"]
       81 SETTABLEKS                       R17 R16 K13 ["doReimport"]
       83 GETTABLEKS                       R17 R0 K14 ["onClose"]
       85 SETTABLEKS                       R17 R16 K14 ["onClose"]
       87 NEWTABLE                         R17 0 1
       89 GETUPVAL                         R18 4
       90 GETUPVAL                         R19 6
       91 NEWTABLE                         R20 0 0
       93 NEWTABLE                         R21 0 3
       95 DUPTABLE                         R22 K18 [{"label", "content"}]
       96 GETUPVAL                         R24 7
       97 CALL                             R24 0 1
       98 JUMPIFNOT                        R24 ; [+6]
       99 LOADK                            R25 K19 ["ConfigDialog"]
      100 LOADK                            R26 K20 ["FilePath"]
      101 NAMECALL                         R23 R1 K21 ["getText"]
      103 CALL                             R23 3 1
      104 JUMP                             ; [+1]
      105 LOADK                            R23 K22 ["File Path"]
      106 SETTABLEKS                       R23 R22 K16 ["label"]
      108 GETUPVAL                         R23 4
      109 GETUPVAL                         R24 8
      110 DUPTABLE                         R25 K25 [{"filepath", "doPickFile", "onFilepathChanged"}]
      111 SETTABLEKS                       R5 R25 K7 ["filepath"]
      113 DUPCLOSURE                       R26 K26 [PROTO_1]
      114 CAPTURE                          UPVAL U9
      115 SETTABLEKS                       R26 R25 K23 ["doPickFile"]
      117 NEWCLOSURE                       R26 P2
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R26 R25 K24 ["onFilepathChanged"]
      121 CALL                             R23 2 1
      122 SETTABLEKS                       R23 R22 K17 ["content"]
      124 GETUPVAL                         R24 10
      125 CALL                             R24 0 1
      126 JUMPIFNOT                        R24 ; [+35]
      127 DUPTABLE                         R23 K18 [{"label", "content"}]
      128 GETUPVAL                         R25 7
      129 CALL                             R25 0 1
      130 JUMPIFNOT                        R25 ; [+6]
      131 LOADK                            R26 K19 ["ConfigDialog"]
      132 LOADK                            R27 K27 ["Creator"]
      133 NAMECALL                         R24 R1 K21 ["getText"]
      135 CALL                             R24 3 1
      136 JUMP                             ; [+1]
      137 LOADK                            R24 K27 ["Creator"]
      138 SETTABLEKS                       R24 R23 K16 ["label"]
      140 GETUPVAL                         R24 4
      141 GETUPVAL                         R25 11
      142 DUPTABLE                         R26 K31 [{"size", "value", "onItemChanged"}]
      143 GETUPVAL                         R27 12
      144 GETTABLEKS                       R27 R27 K32 ["Enums"]
      146 GETTABLEKS                       R27 R27 K33 ["InputSize"]
      148 GETTABLEKS                       R27 R27 K34 ["Small"]
      150 SETTABLEKS                       R27 R26 K28 ["size"]
      152 SETTABLEKS                       R9 R26 K29 ["value"]
      154 NEWCLOSURE                       R27 P3
      155 CAPTURE                          VAL R10
      156 SETTABLEKS                       R27 R26 K30 ["onItemChanged"]
      158 CALL                             R24 2 1
      159 SETTABLEKS                       R24 R23 K17 ["content"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R23
      163 DUPTABLE                         R24 K18 [{"label", "content"}]
      164 GETUPVAL                         R26 7
      165 CALL                             R26 0 1
      166 JUMPIFNOT                        R26 ; [+6]
      167 LOADK                            R27 K19 ["ConfigDialog"]
      168 LOADK                            R28 K35 ["Preset"]
      169 NAMECALL                         R25 R1 K21 ["getText"]
      171 CALL                             R25 3 1
      172 JUMP                             ; [+1]
      173 LOADK                            R25 K36 ["Import Preset"]
      174 SETTABLEKS                       R25 R24 K16 ["label"]
      176 GETUPVAL                         R25 4
      177 GETUPVAL                         R26 13
      178 DUPTABLE                         R27 K39 [{"label", "size", "value", "onItemChanged", "maxHeight", "items"}]
      179 LOADK                            R28 K40 [""]
      180 SETTABLEKS                       R28 R27 K16 ["label"]
      182 GETUPVAL                         R28 12
      183 GETTABLEKS                       R28 R28 K32 ["Enums"]
      185 GETTABLEKS                       R28 R28 K33 ["InputSize"]
      187 GETTABLEKS                       R28 R28 K34 ["Small"]
      189 SETTABLEKS                       R28 R27 K28 ["size"]
      191 SETTABLEKS                       R7 R27 K29 ["value"]
      193 NEWCLOSURE                       R28 P4
      194 CAPTURE                          VAL R8
      195 SETTABLEKS                       R28 R27 K30 ["onItemChanged"]
      197 GETTABLEKS                       R28 R2 K41 ["dialogSize"]
      199 GETTABLEKS                       R28 R28 K42 ["Y"]
      201 SETTABLEKS                       R28 R27 K37 ["maxHeight"]
      203 GETUPVAL                         R28 14
      204 GETTABLEKS                       R28 R28 K43 ["map"]
      206 MOVE                             R29 R4
      207 DUPCLOSURE                       R30 K44 [PROTO_5]
      208 CALL                             R28 2 1
      209 SETTABLEKS                       R28 R27 K38 ["items"]
      211 CALL                             R25 2 1
      212 SETTABLEKS                       R25 R24 K17 ["content"]
      214 SETLIST                          R21 R22 3 [1]
      216 CALL                             R18 3 -1
      217 SETLIST                          R17 R18 -1 [1]
      219 CALL                             R14 3 -1
      220 SETLIST                          R13 R14 -1 [1]
      222 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["createElement"]
       37 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["Localization"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Lib"]
       45 GETTABLEKS                       R9 R9 K15 ["Constants"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R0 K16 ["Src"]
       52 GETTABLEKS                       R10 R10 K17 ["Dialogs"]
       54 GETTABLEKS                       R10 R10 K18 ["ConfigDialogBase"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Src"]
       61 GETTABLEKS                       R11 R11 K19 ["Components"]
       63 GETTABLEKS                       R11 R11 K20 ["Form"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K16 ["Src"]
       70 GETTABLEKS                       R12 R12 K19 ["Components"]
       72 GETTABLEKS                       R12 R12 K21 ["FillDropdown"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K16 ["Src"]
       79 GETTABLEKS                       R13 R13 K17 ["Dialogs"]
       81 GETTABLEKS                       R13 R13 K22 ["Common"]
       83 GETTABLEKS                       R13 R13 K23 ["PickableFilePath"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K16 ["Src"]
       90 GETTABLEKS                       R14 R14 K17 ["Dialogs"]
       92 GETTABLEKS                       R14 R14 K22 ["Common"]
       94 GETTABLEKS                       R14 R14 K24 ["GroupPicker"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K14 ["Lib"]
      101 GETTABLEKS                       R15 R15 K25 ["Reimport"]
      103 GETTABLEKS                       R15 R15 K26 ["Types"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K16 ["Src"]
      110 GETTABLEKS                       R16 R16 K27 ["Contexts"]
      112 GETTABLEKS                       R16 R16 K28 ["DialogContext"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K5 [require]
      117 GETTABLEKS                       R17 R0 K29 ["Flags"]
      119 GETTABLEKS                       R17 R17 K30 ["GetFFlagEnableGroupUpload"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K5 [require]
      124 GETTABLEKS                       R18 R0 K29 ["Flags"]
      126 GETTABLEKS                       R18 R18 K31 ["GetFFlagReimportLocalizeDialogs"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K5 [require]
      131 GETTABLEKS                       R19 R0 K16 ["Src"]
      133 GETTABLEKS                       R19 R19 K17 ["Dialogs"]
      135 GETTABLEKS                       R19 R19 K26 ["Types"]
      137 CALL                             R18 1 1
      138 DUPCLOSURE                       R19 K32 [PROTO_6]
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R1
      154 RETURN                           R19 1
