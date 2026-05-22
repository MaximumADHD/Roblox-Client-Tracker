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
        9 JUMP                             ; [+2]
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["useState"]
       15 GETTABLEKS                       R4 R2 K3 ["filepath"]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K2 ["useState"]
       21 GETTABLEKS                       R7 R2 K5 ["creatorId"]
       23 ORK                              R6 R7 K4 []
       24 CALL                             R5 1 2
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R0
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 NEWTABLE                         R9 0 1
       35 GETUPVAL                         R10 2
       36 GETUPVAL                         R11 3
       37 DUPTABLE                         R12 K10 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       38 SETTABLEKS                       R8 R12 K6 ["canSave"]
       40 SETTABLEKS                       R7 R12 K7 ["doSaveConfig"]
       42 GETTABLEKS                       R13 R0 K8 ["doReimport"]
       44 SETTABLEKS                       R13 R12 K8 ["doReimport"]
       46 GETTABLEKS                       R13 R0 K9 ["onClose"]
       48 SETTABLEKS                       R13 R12 K9 ["onClose"]
       50 NEWTABLE                         R13 0 1
       52 GETUPVAL                         R14 2
       53 GETUPVAL                         R15 4
       54 NEWTABLE                         R16 0 0
       56 NEWTABLE                         R17 0 2
       58 DUPTABLE                         R18 K13 [{"label", "content"}]
       59 GETUPVAL                         R20 5
       60 CALL                             R20 0 1
       61 JUMPIFNOT                        R20 ; [+6]
       62 LOADK                            R21 K14 ["ConfigDialog"]
       63 LOADK                            R22 K15 ["FilePath"]
       64 NAMECALL                         R19 R1 K16 ["getText"]
       66 CALL                             R19 3 1
       67 JUMP                             ; [+1]
       68 LOADK                            R19 K17 ["File Path"]
       69 SETTABLEKS                       R19 R18 K11 ["label"]
       71 GETUPVAL                         R19 2
       72 GETUPVAL                         R20 6
       73 DUPTABLE                         R21 K20 [{"filepath", "doPickFile", "onFilepathChanged"}]
       74 SETTABLEKS                       R3 R21 K3 ["filepath"]
       76 DUPCLOSURE                       R22 K21 [PROTO_1]
       77 CAPTURE                          UPVAL U7
       78 SETTABLEKS                       R22 R21 K18 ["doPickFile"]
       80 NEWCLOSURE                       R22 P2
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R22 R21 K19 ["onFilepathChanged"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K12 ["content"]
       87 GETUPVAL                         R20 8
       88 CALL                             R20 0 1
       89 JUMPIFNOT                        R20 ; [+35]
       90 DUPTABLE                         R19 K13 [{"label", "content"}]
       91 GETUPVAL                         R21 5
       92 CALL                             R21 0 1
       93 JUMPIFNOT                        R21 ; [+6]
       94 LOADK                            R22 K14 ["ConfigDialog"]
       95 LOADK                            R23 K22 ["Creator"]
       96 NAMECALL                         R20 R1 K16 ["getText"]
       98 CALL                             R20 3 1
       99 JUMP                             ; [+1]
      100 LOADK                            R20 K22 ["Creator"]
      101 SETTABLEKS                       R20 R19 K11 ["label"]
      103 GETUPVAL                         R20 2
      104 GETUPVAL                         R21 9
      105 DUPTABLE                         R22 K26 [{"size", "value", "onItemChanged"}]
      106 GETUPVAL                         R23 10
      107 GETTABLEKS                       R23 R23 K27 ["Enums"]
      109 GETTABLEKS                       R23 R23 K28 ["InputSize"]
      111 GETTABLEKS                       R23 R23 K29 ["Small"]
      113 SETTABLEKS                       R23 R22 K23 ["size"]
      115 SETTABLEKS                       R5 R22 K24 ["value"]
      117 NEWCLOSURE                       R23 P3
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R23 R22 K25 ["onItemChanged"]
      121 CALL                             R20 2 1
      122 SETTABLEKS                       R20 R19 K12 ["content"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETLIST                          R17 R18 2 [1]
      128 CALL                             R14 3 -1
      129 SETLIST                          R13 R14 -1 [1]
      131 CALL                             R10 3 -1
      132 SETLIST                          R9 R10 -1 [1]
      134 RETURN                           R9 1

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
