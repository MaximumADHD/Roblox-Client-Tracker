PROTO_0:
        0 DUPTABLE                         R0 K1 [{"filepath"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["filepath"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K2 ["doSaveConfig"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["configData"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["configData"]
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["useState"]
       11 GETTABLEKS                       R3 R1 K2 ["filepath"]
       13 CALL                             R2 1 2
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R7 1
       24 GETUPVAL                         R8 2
       25 DUPTABLE                         R9 K7 [{"canSave", "doSaveConfig", "doReimport", "onClose"}]
       26 SETTABLEKS                       R5 R9 K3 ["canSave"]
       28 SETTABLEKS                       R4 R9 K4 ["doSaveConfig"]
       30 GETTABLEKS                       R10 R0 K5 ["doReimport"]
       32 SETTABLEKS                       R10 R9 K5 ["doReimport"]
       34 GETTABLEKS                       R10 R0 K6 ["onClose"]
       36 SETTABLEKS                       R10 R9 K6 ["onClose"]
       38 NEWTABLE                         R10 0 1
       40 GETUPVAL                         R11 1
       41 GETUPVAL                         R12 3
       42 NEWTABLE                         R13 0 0
       44 NEWTABLE                         R14 0 1
       46 DUPTABLE                         R15 K10 [{"label", "content"}]
       47 LOADK                            R16 K11 ["File Path"]
       48 SETTABLEKS                       R16 R15 K8 ["label"]
       50 GETUPVAL                         R16 1
       51 GETUPVAL                         R17 4
       52 DUPTABLE                         R18 K14 [{"filepath", "doPickFile", "onFilepathChanged"}]
       53 SETTABLEKS                       R2 R18 K2 ["filepath"]
       55 DUPCLOSURE                       R19 K15 [PROTO_1]
       56 CAPTURE                          UPVAL U5
       57 SETTABLEKS                       R19 R18 K12 ["doPickFile"]
       59 NEWCLOSURE                       R19 P2
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R19 R18 K13 ["onFilepathChanged"]
       63 CALL                             R16 2 1
       64 SETTABLEKS                       R16 R15 K9 ["content"]
       66 SETLIST                          R14 R15 1 [1]
       68 CALL                             R11 3 -1
       69 SETLIST                          R10 R11 -1 [1]
       71 CALL                             R7 3 -1
       72 SETLIST                          R6 R7 -1 [1]
       74 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["Dialogs"]
       22 GETTABLEKS                       R4 R5 K11 ["ConfigDialogBase"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Components"]
       31 GETTABLEKS                       R5 R6 K13 ["Form"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R9 R0 K9 ["Src"]
       38 GETTABLEKS                       R8 R9 K10 ["Dialogs"]
       40 GETTABLEKS                       R7 R8 K14 ["Common"]
       42 GETTABLEKS                       R6 R7 K15 ["PickableFilePath"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R0 K16 ["Lib"]
       49 GETTABLEKS                       R8 R9 K17 ["Reimport"]
       51 GETTABLEKS                       R7 R8 K18 ["Types"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R10 K10 ["Dialogs"]
       60 GETTABLEKS                       R8 R9 K18 ["Types"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K19 [PROTO_3]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R0
       70 RETURN                           R8 1
