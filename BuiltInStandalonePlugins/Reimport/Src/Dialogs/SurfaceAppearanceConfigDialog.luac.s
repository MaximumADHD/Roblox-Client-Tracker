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
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K5 ["doSaveConfig"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Lib"]
        5 GETTABLEKS                       R2 R3 K3 ["External"]
        7 GETTABLEKS                       R1 R2 K4 ["AssetImportService"]
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
        0 GETTABLEKS                       R2 R0 K0 ["configData"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["configData"]
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["useState"]
       11 GETTABLEKS                       R3 R1 K2 ["filepath"]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K1 ["useState"]
       17 GETTABLEKS                       R6 R1 K4 ["creatorId"]
       19 ORK                              R5 R6 K3 []
       20 CALL                             R4 1 2
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R0
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 1
       32 GETUPVAL                         R10 2
       33 DUPTABLE                         R11 K9 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       34 SETTABLEKS                       R7 R11 K5 ["canSave"]
       36 SETTABLEKS                       R6 R11 K6 ["doSaveConfig"]
       38 GETTABLEKS                       R12 R0 K7 ["doReimport"]
       40 SETTABLEKS                       R12 R11 K7 ["doReimport"]
       42 GETTABLEKS                       R12 R0 K8 ["onClose"]
       44 SETTABLEKS                       R12 R11 K8 ["onClose"]
       46 NEWTABLE                         R12 0 1
       48 GETUPVAL                         R13 1
       49 GETUPVAL                         R14 3
       50 NEWTABLE                         R15 0 0
       52 NEWTABLE                         R16 0 2
       54 DUPTABLE                         R17 K12 [{"label", "content"}]
       55 LOADK                            R18 K13 ["File Path"]
       56 SETTABLEKS                       R18 R17 K10 ["label"]
       58 GETUPVAL                         R18 1
       59 GETUPVAL                         R19 4
       60 DUPTABLE                         R20 K16 [{"filepath", "doPickFile", "onFilepathChanged"}]
       61 SETTABLEKS                       R2 R20 K2 ["filepath"]
       63 DUPCLOSURE                       R21 K17 [PROTO_1]
       64 CAPTURE                          UPVAL U5
       65 SETTABLEKS                       R21 R20 K14 ["doPickFile"]
       67 NEWCLOSURE                       R21 P2
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R21 R20 K15 ["onFilepathChanged"]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K11 ["content"]
       74 GETUPVAL                         R19 6
       75 CALL                             R19 0 1
       76 JUMPIFNOT                        R19 ; [+26]
       77 DUPTABLE                         R18 K12 [{"label", "content"}]
       78 LOADK                            R19 K18 ["Creator"]
       79 SETTABLEKS                       R19 R18 K10 ["label"]
       81 GETUPVAL                         R19 1
       82 GETUPVAL                         R20 7
       83 DUPTABLE                         R21 K22 [{"size", "value", "onItemChanged"}]
       84 GETUPVAL                         R25 8
       85 GETTABLEKS                       R24 R25 K23 ["Enums"]
       87 GETTABLEKS                       R23 R24 K24 ["InputSize"]
       89 GETTABLEKS                       R22 R23 K25 ["Small"]
       91 SETTABLEKS                       R22 R21 K19 ["size"]
       93 SETTABLEKS                       R4 R21 K20 ["value"]
       95 NEWCLOSURE                       R22 P3
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R22 R21 K21 ["onItemChanged"]
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K11 ["content"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R18
      104 SETLIST                          R16 R17 2 [1]
      106 CALL                             R13 3 -1
      107 SETLIST                          R12 R13 -1 [1]
      109 CALL                             R9 3 -1
      110 SETLIST                          R8 R9 -1 [1]
      112 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Dialogs"]
       29 GETTABLEKS                       R5 R6 K12 ["ConfigDialogBase"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Components"]
       38 GETTABLEKS                       R6 R7 K14 ["Form"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R10 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R10 K11 ["Dialogs"]
       47 GETTABLEKS                       R8 R9 K15 ["Common"]
       49 GETTABLEKS                       R7 R8 K16 ["GroupPicker"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Src"]
       56 GETTABLEKS                       R10 R11 K11 ["Dialogs"]
       58 GETTABLEKS                       R9 R10 K15 ["Common"]
       60 GETTABLEKS                       R8 R9 K17 ["PickableFilePath"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Lib"]
       67 GETTABLEKS                       R10 R11 K19 ["Reimport"]
       69 GETTABLEKS                       R9 R10 K20 ["Types"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Flags"]
       76 GETTABLEKS                       R10 R11 K22 ["GetFFlagEnableGroupUpload"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Src"]
       83 GETTABLEKS                       R12 R13 K11 ["Dialogs"]
       85 GETTABLEKS                       R11 R12 K20 ["Types"]
       87 CALL                             R10 1 1
       88 DUPCLOSURE                       R11 K23 [PROTO_4]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R1
       98 RETURN                           R11 1
