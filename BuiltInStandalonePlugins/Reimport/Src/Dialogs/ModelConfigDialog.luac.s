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
       16 JUMP                             ; [+1]
       17 DUPTABLE                         R3 K8 [{["filepath"] = , ["preset"] = , ["creatorId"] = }]
       18 GETTABLEKS                       R5 R0 K9 ["presets"]
       20 JUMPIFNOT                        R5 ; [+9]
       21 GETTABLEKS                       R6 R0 K9 ["presets"]
       23 LENGTH                           R5 R6
       24 LOADN                            R6 0
       25 JUMPIFNOTLT                      R6 R5 ; [+4]
       27 GETTABLEKS                       R4 R0 K9 ["presets"]
       29 JUMP                             ; [+7]
       30 NEWTABLE                         R4 0 1
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K10 ["StudioDefaultPreset"]
       35 SETLIST                          R4 R5 1 [1]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K11 ["useState"]
       40 GETTABLEKS                       R6 R3 K4 ["filepath"]
       42 CALL                             R5 1 2
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K11 ["useState"]
       46 GETTABLEKS                       R8 R3 K6 ["preset"]
       48 JUMPIF                           R8 ; [+3]
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K10 ["StudioDefaultPreset"]
       52 CALL                             R7 1 2
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R9 R9 K11 ["useState"]
       56 GETTABLEKS                       R11 R3 K7 ["creatorId"]
       58 ORK                              R10 R11 K5 []
       59 CALL                             R9 1 2
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R0
       65 JUMPIFNOTEQKNIL                  R5 ; [+2]
       67 LOADB                            R12 0 +1
       68 LOADB                            R12 1
       69 GETUPVAL                         R13 4
       70 GETUPVAL                         R14 5
       71 DUPTABLE                         R15 K16 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       72 SETTABLEKS                       R12 R15 K12 ["canSave"]
       74 SETTABLEKS                       R11 R15 K13 ["doSaveConfig"]
       76 GETTABLEKS                       R16 R0 K14 ["doReimport"]
       78 SETTABLEKS                       R16 R15 K14 ["doReimport"]
       80 GETTABLEKS                       R16 R0 K15 ["onClose"]
       82 SETTABLEKS                       R16 R15 K15 ["onClose"]
       84 NEWTABLE                         R16 0 1
       86 GETUPVAL                         R17 4
       87 GETUPVAL                         R18 6
       88 NEWTABLE                         R19 0 0
       90 NEWTABLE                         R20 0 3
       92 DUPTABLE                         R21 K19 [{"label", "content"}]
       93 LOADK                            R24 K20 ["ConfigDialog"]
       94 LOADK                            R25 K21 ["FilePath"]
       95 NAMECALL                         R22 R1 K22 ["getText"]
       97 CALL                             R22 3 1
       98 SETTABLEKS                       R22 R21 K17 ["label"]
      100 GETUPVAL                         R22 4
      101 GETUPVAL                         R23 7
      102 DUPTABLE                         R24 K25 [{"filepath", "doPickFile", "onFilepathChanged"}]
      103 SETTABLEKS                       R5 R24 K4 ["filepath"]
      105 DUPCLOSURE                       R25 K26 [PROTO_1]
      106 CAPTURE                          UPVAL U8
      107 SETTABLEKS                       R25 R24 K23 ["doPickFile"]
      109 NEWCLOSURE                       R25 P2
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R25 R24 K24 ["onFilepathChanged"]
      113 CALL                             R22 2 1
      114 SETTABLEKS                       R22 R21 K18 ["content"]
      116 GETUPVAL                         R23 9
      117 CALL                             R23 0 1
      118 JUMPIFNOT                        R23 ; [+30]
      119 DUPTABLE                         R22 K19 [{"label", "content"}]
      120 LOADK                            R25 K20 ["ConfigDialog"]
      121 LOADK                            R26 K27 ["Creator"]
      122 NAMECALL                         R23 R1 K22 ["getText"]
      124 CALL                             R23 3 1
      125 SETTABLEKS                       R23 R22 K17 ["label"]
      127 GETUPVAL                         R23 4
      128 GETUPVAL                         R24 10
      129 DUPTABLE                         R25 K31 [{"size", "value", "onItemChanged"}]
      130 GETUPVAL                         R26 11
      131 GETTABLEKS                       R26 R26 K32 ["Enums"]
      133 GETTABLEKS                       R26 R26 K33 ["InputSize"]
      135 GETTABLEKS                       R26 R26 K34 ["Small"]
      137 SETTABLEKS                       R26 R25 K28 ["size"]
      139 SETTABLEKS                       R9 R25 K29 ["value"]
      141 NEWCLOSURE                       R26 P3
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R26 R25 K30 ["onItemChanged"]
      145 CALL                             R23 2 1
      146 SETTABLEKS                       R23 R22 K18 ["content"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R22
      150 DUPTABLE                         R23 K19 [{"label", "content"}]
      151 LOADK                            R26 K20 ["ConfigDialog"]
      152 LOADK                            R27 K35 ["Preset"]
      153 NAMECALL                         R24 R1 K22 ["getText"]
      155 CALL                             R24 3 1
      156 SETTABLEKS                       R24 R23 K17 ["label"]
      158 GETUPVAL                         R24 4
      159 GETUPVAL                         R25 12
      160 DUPTABLE                         R26 K39 [{["label"] = "", ["size"], ["value"], ["onItemChanged"], ["maxHeight"], ["items"]}]
      161 GETUPVAL                         R27 11
      162 GETTABLEKS                       R27 R27 K32 ["Enums"]
      164 GETTABLEKS                       R27 R27 K33 ["InputSize"]
      166 GETTABLEKS                       R27 R27 K34 ["Small"]
      168 SETTABLEKS                       R27 R26 K28 ["size"]
      170 SETTABLEKS                       R7 R26 K29 ["value"]
      172 NEWCLOSURE                       R27 P4
      173 CAPTURE                          VAL R8
      174 SETTABLEKS                       R27 R26 K30 ["onItemChanged"]
      176 GETTABLEKS                       R27 R2 K40 ["dialogSize"]
      178 GETTABLEKS                       R27 R27 K41 ["Y"]
      180 SETTABLEKS                       R27 R26 K37 ["maxHeight"]
      182 GETUPVAL                         R27 13
      183 GETTABLEKS                       R27 R27 K42 ["map"]
      185 MOVE                             R28 R4
      186 DUPCLOSURE                       R29 K43 [PROTO_5]
      187 CALL                             R27 2 1
      188 SETTABLEKS                       R27 R26 K38 ["items"]
      190 CALL                             R24 2 1
      191 SETTABLEKS                       R24 R23 K18 ["content"]
      193 SETLIST                          R20 R21 3 [1]
      195 CALL                             R17 3 -1
      196 SETLIST                          R16 R17 -1 [1]
      198 CALL                             R13 3 -1
      199 RETURN                           R13 -1

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
      124 GETTABLEKS                       R18 R0 K16 ["Src"]
      126 GETTABLEKS                       R18 R18 K17 ["Dialogs"]
      128 GETTABLEKS                       R18 R18 K26 ["Types"]
      130 CALL                             R17 1 1
      131 DUPCLOSURE                       R18 K31 [PROTO_6]
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R1
      146 RETURN                           R18 1
