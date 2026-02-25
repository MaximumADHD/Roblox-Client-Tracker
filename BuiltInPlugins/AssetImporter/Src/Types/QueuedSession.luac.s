PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K4 [table.freeze]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R1
       13 MOVE                             R5 R0
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["sortOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["sortOrder"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["joinDeep"]
       16 GETTABLEKS                       R3 R1 K9 ["None"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K14 [table.freeze]
       27 DUPTABLE                         R6 K32 [{"assetName", "fileType", "creatorId", "currentPreset", "enabled", "errors", "filepath", "importDataError", "progressValue", "settingsChanged", "session", "sortOrder", "state", "uploaded", "uploadResults", "validSession", "warnings"}]
       28 LOADK                            R7 K33 [""]
       29 SETTABLEKS                       R7 R6 K15 ["assetName"]
       31 GETTABLEKS                       R8 R4 K34 ["FileType"]
       33 GETTABLEKS                       R7 R8 K9 ["None"]
       35 SETTABLEKS                       R7 R6 K16 ["fileType"]
       37 LOADN                            R7 0
       38 SETTABLEKS                       R7 R6 K17 ["creatorId"]
       40 LOADNIL                          R7
       41 SETTABLEKS                       R7 R6 K18 ["currentPreset"]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K19 ["enabled"]
       46 LOADN                            R7 0
       47 SETTABLEKS                       R7 R6 K20 ["errors"]
       49 LOADK                            R7 K33 [""]
       50 SETTABLEKS                       R7 R6 K21 ["filepath"]
       52 LOADB                            R7 0
       53 SETTABLEKS                       R7 R6 K22 ["importDataError"]
       55 LOADN                            R7 0
       56 SETTABLEKS                       R7 R6 K23 ["progressValue"]
       58 LOADB                            R7 0
       59 SETTABLEKS                       R7 R6 K24 ["settingsChanged"]
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R6 K25 ["session"]
       64 LOADN                            R7 255
       65 SETTABLEKS                       R7 R6 K26 ["sortOrder"]
       67 GETTABLEKS                       R8 R4 K35 ["SessionState"]
       69 GETTABLEKS                       R7 R8 K36 ["Invalid"]
       71 SETTABLEKS                       R7 R6 K27 ["state"]
       73 LOADB                            R7 0
       74 SETTABLEKS                       R7 R6 K28 ["uploaded"]
       76 SETTABLEKS                       R3 R6 K29 ["uploadResults"]
       78 LOADB                            R7 0
       79 SETTABLEKS                       R7 R6 K30 ["validSession"]
       81 LOADN                            R7 0
       82 SETTABLEKS                       R7 R6 K31 ["warnings"]
       84 CALL                             R5 1 1
       85 NEWTABLE                         R6 4 0
       87 DUPCLOSURE                       R7 K37 [PROTO_0]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R7 R6 K38 ["new"]
       92 DUPCLOSURE                       R7 K39 [PROTO_1]
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R7 R6 K40 ["update"]
       96 DUPCLOSURE                       R7 K41 [PROTO_2]
       97 SETTABLEKS                       R7 R6 K42 ["compare"]
       99 RETURN                           R6 1
