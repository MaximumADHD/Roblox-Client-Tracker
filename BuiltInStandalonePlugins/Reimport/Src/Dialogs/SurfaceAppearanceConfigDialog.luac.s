PROTO_0:
        0 DUPTABLE                         R0 K3 [{"filepath", "creatorId", "creatorType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["filepath"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["creatorId"]
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADK                            R1 K4 ["group"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["creatorType"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K5 ["doSaveConfig"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Lib"]
        5 GETTABLEKS                       R1 R1 K3 ["External"]
        7 GETTABLEKS                       R1 R1 K4 ["AssetImportService"]
        9 CALL                             R0 1 1
       10 NAMECALL                         R1 R0 K5 ["PickImageFileWithPrompt"]
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
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["configData"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R2 R0 K1 ["configData"]
        9 JUMP                             ; [+1]
       10 DUPTABLE                         R2 K6 [{["filepath"] = , ["preset"] = , ["creatorId"] = }]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K7 ["useState"]
       14 GETTABLEKS                       R4 R2 K2 ["filepath"]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["useState"]
       20 GETTABLEKS                       R7 R2 K5 ["creatorId"]
       22 ORK                              R6 R7 K3 []
       23 CALL                             R5 1 2
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R0
       28 JUMPIFNOTEQKNIL                  R3 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 GETUPVAL                         R9 2
       33 GETUPVAL                         R10 3
       34 DUPTABLE                         R11 K12 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       35 SETTABLEKS                       R8 R11 K8 ["canSave"]
       37 SETTABLEKS                       R7 R11 K9 ["doSaveConfig"]
       39 GETTABLEKS                       R12 R0 K10 ["doReimport"]
       41 SETTABLEKS                       R12 R11 K10 ["doReimport"]
       43 GETTABLEKS                       R12 R0 K11 ["onClose"]
       45 SETTABLEKS                       R12 R11 K11 ["onClose"]
       47 NEWTABLE                         R12 0 1
       49 GETUPVAL                         R13 2
       50 GETUPVAL                         R14 4
       51 NEWTABLE                         R15 0 0
       53 NEWTABLE                         R16 0 2
       55 DUPTABLE                         R17 K15 [{"label", "content"}]
       56 GETUPVAL                         R19 5
       57 CALL                             R19 0 1
       58 JUMPIFNOT                        R19 ; [+6]
       59 LOADK                            R20 K16 ["ConfigDialog"]
       60 LOADK                            R21 K17 ["FilePath"]
       61 NAMECALL                         R18 R1 K18 ["getText"]
       63 CALL                             R18 3 1
       64 JUMP                             ; [+1]
       65 LOADK                            R18 K19 ["File Path"]
       66 SETTABLEKS                       R18 R17 K13 ["label"]
       68 GETUPVAL                         R18 2
       69 GETUPVAL                         R19 6
       70 DUPTABLE                         R20 K22 [{"filepath", "doPickFile", "onFilepathChanged"}]
       71 SETTABLEKS                       R3 R20 K2 ["filepath"]
       73 DUPCLOSURE                       R21 K23 [PROTO_1]
       74 CAPTURE                          UPVAL U7
       75 SETTABLEKS                       R21 R20 K20 ["doPickFile"]
       77 NEWCLOSURE                       R21 P2
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R21 R20 K21 ["onFilepathChanged"]
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K14 ["content"]
       84 GETUPVAL                         R19 8
       85 CALL                             R19 0 1
       86 JUMPIFNOT                        R19 ; [+35]
       87 DUPTABLE                         R18 K15 [{"label", "content"}]
       88 GETUPVAL                         R20 5
       89 CALL                             R20 0 1
       90 JUMPIFNOT                        R20 ; [+6]
       91 LOADK                            R21 K16 ["ConfigDialog"]
       92 LOADK                            R22 K24 ["Creator"]
       93 NAMECALL                         R19 R1 K18 ["getText"]
       95 CALL                             R19 3 1
       96 JUMP                             ; [+1]
       97 LOADK                            R19 K24 ["Creator"]
       98 SETTABLEKS                       R19 R18 K13 ["label"]
      100 GETUPVAL                         R19 2
      101 GETUPVAL                         R20 9
      102 DUPTABLE                         R21 K28 [{"size", "value", "onItemChanged"}]
      103 GETUPVAL                         R22 10
      104 GETTABLEKS                       R22 R22 K29 ["Enums"]
      106 GETTABLEKS                       R22 R22 K30 ["InputSize"]
      108 GETTABLEKS                       R22 R22 K31 ["Small"]
      110 SETTABLEKS                       R22 R21 K25 ["size"]
      112 SETTABLEKS                       R5 R21 K26 ["value"]
      114 NEWCLOSURE                       R22 P3
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R22 R21 K27 ["onItemChanged"]
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K14 ["content"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R18
      123 SETLIST                          R16 R17 2 [1]
      125 CALL                             R13 3 -1
      126 SETLIST                          R12 R13 -1 [1]
      128 CALL                             R9 3 -1
      129 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Dialogs"]
       40 GETTABLEKS                       R8 R8 K15 ["ConfigDialogBase"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Components"]
       49 GETTABLEKS                       R9 R9 K17 ["Form"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Src"]
       56 GETTABLEKS                       R10 R10 K14 ["Dialogs"]
       58 GETTABLEKS                       R10 R10 K18 ["Common"]
       60 GETTABLEKS                       R10 R10 K19 ["GroupPicker"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K13 ["Src"]
       67 GETTABLEKS                       R11 R11 K14 ["Dialogs"]
       69 GETTABLEKS                       R11 R11 K18 ["Common"]
       71 GETTABLEKS                       R11 R11 K20 ["PickableFilePath"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K21 ["Lib"]
       78 GETTABLEKS                       R12 R12 K22 ["Reimport"]
       80 GETTABLEKS                       R12 R12 K23 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R13 R0 K24 ["Flags"]
       87 GETTABLEKS                       R13 R13 K25 ["GetFFlagEnableGroupUpload"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K24 ["Flags"]
       94 GETTABLEKS                       R14 R14 K26 ["GetFFlagReimportLocalizeDialogs"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K13 ["Src"]
      101 GETTABLEKS                       R15 R15 K14 ["Dialogs"]
      103 GETTABLEKS                       R15 R15 K23 ["Types"]
      105 CALL                             R14 1 1
      106 DUPCLOSURE                       R15 K27 [PROTO_4]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R1
      118 RETURN                           R15 1
