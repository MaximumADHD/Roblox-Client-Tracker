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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected preset id to be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

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
       16 JUMP                             ; [+10]
       17 DUPTABLE                         R3 K7 [{"filepath", "preset", "creatorId"}]
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R3 K4 ["filepath"]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R3 K5 ["preset"]
       24 LOADNIL                          R4
       25 SETTABLEKS                       R4 R3 K6 ["creatorId"]
       27 GETTABLEKS                       R5 R0 K8 ["presets"]
       29 JUMPIFNOT                        R5 ; [+9]
       30 GETTABLEKS                       R6 R0 K8 ["presets"]
       32 LENGTH                           R5 R6
       33 LOADN                            R6 0
       34 JUMPIFNOTLT                      R6 R5 ; [+4]
       36 GETTABLEKS                       R4 R0 K8 ["presets"]
       38 JUMP                             ; [+7]
       39 NEWTABLE                         R4 0 1
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K9 ["StudioDefaultPreset"]
       44 SETLIST                          R4 R5 1 [1]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K10 ["useState"]
       49 GETTABLEKS                       R6 R3 K4 ["filepath"]
       51 CALL                             R5 1 2
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K10 ["useState"]
       55 GETTABLEKS                       R8 R3 K5 ["preset"]
       57 JUMPIF                           R8 ; [+3]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K9 ["StudioDefaultPreset"]
       61 CALL                             R7 1 2
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K10 ["useState"]
       65 GETTABLEKS                       R11 R3 K6 ["creatorId"]
       67 ORK                              R10 R11 K11 []
       68 CALL                             R9 1 2
       69 NEWCLOSURE                       R11 P0
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R0
       74 JUMPIFNOTEQKNIL                  R5 ; [+2]
       76 LOADB                            R12 0 +1
       77 LOADB                            R12 1
       78 GETUPVAL                         R13 4
       79 GETUPVAL                         R14 5
       80 DUPTABLE                         R15 K16 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       81 SETTABLEKS                       R12 R15 K12 ["canSave"]
       83 SETTABLEKS                       R11 R15 K13 ["doSaveConfig"]
       85 GETTABLEKS                       R16 R0 K14 ["doReimport"]
       87 SETTABLEKS                       R16 R15 K14 ["doReimport"]
       89 GETTABLEKS                       R16 R0 K15 ["onClose"]
       91 SETTABLEKS                       R16 R15 K15 ["onClose"]
       93 NEWTABLE                         R16 0 1
       95 GETUPVAL                         R17 4
       96 GETUPVAL                         R18 6
       97 NEWTABLE                         R19 0 0
       99 NEWTABLE                         R20 0 3
      101 DUPTABLE                         R21 K19 [{"label", "content"}]
      102 GETUPVAL                         R23 7
      103 CALL                             R23 0 1
      104 JUMPIFNOT                        R23 ; [+6]
      105 LOADK                            R24 K20 ["ConfigDialog"]
      106 LOADK                            R25 K21 ["FilePath"]
      107 NAMECALL                         R22 R1 K22 ["getText"]
      109 CALL                             R22 3 1
      110 JUMP                             ; [+1]
      111 LOADK                            R22 K23 ["File Path"]
      112 SETTABLEKS                       R22 R21 K17 ["label"]
      114 GETUPVAL                         R22 4
      115 GETUPVAL                         R23 8
      116 DUPTABLE                         R24 K26 [{"filepath", "doPickFile", "onFilepathChanged"}]
      117 SETTABLEKS                       R5 R24 K4 ["filepath"]
      119 DUPCLOSURE                       R25 K27 [PROTO_1]
      120 CAPTURE                          UPVAL U9
      121 SETTABLEKS                       R25 R24 K24 ["doPickFile"]
      123 NEWCLOSURE                       R25 P2
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R25 R24 K25 ["onFilepathChanged"]
      127 CALL                             R22 2 1
      128 SETTABLEKS                       R22 R21 K18 ["content"]
      130 GETUPVAL                         R23 10
      131 CALL                             R23 0 1
      132 JUMPIFNOT                        R23 ; [+35]
      133 DUPTABLE                         R22 K19 [{"label", "content"}]
      134 GETUPVAL                         R24 7
      135 CALL                             R24 0 1
      136 JUMPIFNOT                        R24 ; [+6]
      137 LOADK                            R25 K20 ["ConfigDialog"]
      138 LOADK                            R26 K28 ["Creator"]
      139 NAMECALL                         R23 R1 K22 ["getText"]
      141 CALL                             R23 3 1
      142 JUMP                             ; [+1]
      143 LOADK                            R23 K28 ["Creator"]
      144 SETTABLEKS                       R23 R22 K17 ["label"]
      146 GETUPVAL                         R23 4
      147 GETUPVAL                         R24 11
      148 DUPTABLE                         R25 K32 [{"size", "value", "onItemChanged"}]
      149 GETUPVAL                         R26 12
      150 GETTABLEKS                       R26 R26 K33 ["Enums"]
      152 GETTABLEKS                       R26 R26 K34 ["InputSize"]
      154 GETTABLEKS                       R26 R26 K35 ["Small"]
      156 SETTABLEKS                       R26 R25 K29 ["size"]
      158 SETTABLEKS                       R9 R25 K30 ["value"]
      160 NEWCLOSURE                       R26 P3
      161 CAPTURE                          VAL R10
      162 SETTABLEKS                       R26 R25 K31 ["onItemChanged"]
      164 CALL                             R23 2 1
      165 SETTABLEKS                       R23 R22 K18 ["content"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R22
      169 DUPTABLE                         R23 K19 [{"label", "content"}]
      170 GETUPVAL                         R25 7
      171 CALL                             R25 0 1
      172 JUMPIFNOT                        R25 ; [+6]
      173 LOADK                            R26 K20 ["ConfigDialog"]
      174 LOADK                            R27 K36 ["Preset"]
      175 NAMECALL                         R24 R1 K22 ["getText"]
      177 CALL                             R24 3 1
      178 JUMP                             ; [+1]
      179 LOADK                            R24 K37 ["Import Preset"]
      180 SETTABLEKS                       R24 R23 K17 ["label"]
      182 GETUPVAL                         R24 4
      183 GETUPVAL                         R25 13
      184 DUPTABLE                         R26 K40 [{"label", "size", "value", "onItemChanged", "maxHeight", "items"}]
      185 LOADK                            R27 K41 [""]
      186 SETTABLEKS                       R27 R26 K17 ["label"]
      188 GETUPVAL                         R27 12
      189 GETTABLEKS                       R27 R27 K33 ["Enums"]
      191 GETTABLEKS                       R27 R27 K34 ["InputSize"]
      193 GETTABLEKS                       R27 R27 K35 ["Small"]
      195 SETTABLEKS                       R27 R26 K29 ["size"]
      197 SETTABLEKS                       R7 R26 K30 ["value"]
      199 NEWCLOSURE                       R27 P4
      200 CAPTURE                          VAL R8
      201 SETTABLEKS                       R27 R26 K31 ["onItemChanged"]
      203 GETTABLEKS                       R27 R2 K42 ["dialogSize"]
      205 GETTABLEKS                       R27 R27 K43 ["Y"]
      207 SETTABLEKS                       R27 R26 K38 ["maxHeight"]
      209 GETUPVAL                         R27 14
      210 GETTABLEKS                       R27 R27 K44 ["map"]
      212 MOVE                             R28 R4
      213 DUPCLOSURE                       R29 K45 [PROTO_5]
      214 CALL                             R27 2 1
      215 SETTABLEKS                       R27 R26 K39 ["items"]
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K18 ["content"]
      220 SETLIST                          R20 R21 3 [1]
      222 CALL                             R17 3 -1
      223 SETLIST                          R16 R17 -1 [1]
      225 CALL                             R13 3 -1
      226 RETURN                           R13 -1

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
