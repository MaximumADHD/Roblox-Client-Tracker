PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 JUMPIF                           R1 ; [+14]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["SessionState"]
        6 GETTABLEKS                       R3 R4 K1 ["Invalid"]
        8 SETTABLEKS                       R3 R2 K2 ["state"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["enabled"]
       13 MINUS                            R3 R0
       14 SETTABLEKS                       R3 R2 K4 ["sortOrder"]
       16 RETURN                           R2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["SessionState"]
       20 GETTABLEKS                       R3 R4 K5 ["Parsed"]
       22 SETTABLEKS                       R3 R2 K2 ["state"]
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R1
       26 CALL                             R3 1 1
       27 GETTABLE                         R6 R3 R1
       28 GETTABLEKS                       R5 R6 K6 ["errors"]
       30 GETTABLE                         R7 R3 R1
       31 GETTABLEKS                       R6 R7 K7 ["descErrors"]
       33 ADD                              R4 R5 R6
       34 SETTABLEKS                       R4 R2 K6 ["errors"]
       36 GETTABLE                         R6 R3 R1
       37 GETTABLEKS                       R5 R6 K8 ["warnings"]
       39 GETTABLE                         R7 R3 R1
       40 GETTABLEKS                       R6 R7 K9 ["descWarnings"]
       42 ADD                              R4 R5 R6
       43 SETTABLEKS                       R4 R2 K8 ["warnings"]
       45 GETUPVAL                         R4 2
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 3
       49 MOVE                             R6 R1
       50 CALL                             R5 1 1
       51 LOADB                            R6 1
       52 JUMPIFEQKN                       R4 K10 [0] ; [+8]
       54 MOVE                             R6 R5
       55 JUMPIF                           R6 ; [+5]
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R8 R1 K11 ["ImportName"]
       59 CALL                             R7 1 1
       60 NOT                              R6 R7
       61 SETTABLEKS                       R6 R2 K12 ["importDataError"]
       63 GETTABLEKS                       R6 R2 K12 ["importDataError"]
       65 JUMPIFNOT                        R6 ; [+3]
       66 LOADB                            R6 0
       67 SETTABLEKS                       R6 R2 K3 ["enabled"]
       69 GETTABLEKS                       R6 R1 K11 ["ImportName"]
       71 SETTABLEKS                       R6 R2 K13 ["assetName"]
       73 GETTABLEKS                       R6 R1 K14 ["PreferredUploadId"]
       75 SETTABLEKS                       R6 R2 K15 ["creatorId"]
       77 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["session"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["session"]
        7 NAMECALL                         R1 R1 K1 ["GetImportTree"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K2 ["sortOrder"]
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 CALL                             R2 2 1
       19 SETUPVAL                         R2 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K3 ["settingsChanged"]
       23 JUMPIFNOT                        R1 ; [+20]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R1 R2 K0 ["session"]
       27 JUMPIFNOT                        R1 ; [+16]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K0 ["session"]
       31 NAMECALL                         R1 R1 K1 ["GetImportTree"]
       33 CALL                             R1 1 1
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R3 0
       36 GETUPVAL                         R4 2
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R5 R6 K2 ["sortOrder"]
       40 MOVE                             R6 R1
       41 CALL                             R4 2 1
       42 CALL                             R2 2 1
       43 SETUPVAL                         R2 0
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R1 R2 K4 ["update"]
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R3 0
       49 CALL                             R1 2 1
       50 GETUPVAL                         R4 5
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R5 R6 K5 ["filepath"]
       54 CALL                             R4 1 -1
       55 NAMECALL                         R2 R0 K6 ["dispatch"]
       57 CALL                             R2 -1 0
       58 GETUPVAL                         R4 6
       59 MOVE                             R5 R1
       60 CALL                             R4 1 -1
       61 NAMECALL                         R2 R0 K6 ["dispatch"]
       63 CALL                             R2 -1 0
       64 NAMECALL                         R4 R0 K7 ["getState"]
       66 CALL                             R4 1 1
       67 GETTABLEKS                       R3 R4 K8 ["Dialogs"]
       69 GETTABLEKS                       R2 R3 K9 ["showPreview"]
       71 JUMPIFNOT                        R2 ; [+6]
       72 GETUPVAL                         R4 7
       73 MOVE                             R5 R1
       74 CALL                             R4 1 -1
       75 NAMECALL                         R2 R0 K6 ["dispatch"]
       77 CALL                             R2 -1 0
       78 NAMECALL                         R4 R0 K7 ["getState"]
       80 CALL                             R4 1 1
       81 GETTABLEKS                       R3 R4 K8 ["Dialogs"]
       83 GETTABLEKS                       R2 R3 K10 ["showUploadWidget"]
       85 JUMPIFNOT                        R2 ; [+6]
       86 GETUPVAL                         R4 8
       87 MOVE                             R5 R1
       88 CALL                             R4 1 -1
       89 NAMECALL                         R2 R0 K6 ["dispatch"]
       91 CALL                             R2 -1 0
       92 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          REF R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CLOSEUPVALS                      R1
       11 RETURN                           R2 1

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
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETTABLEKS                       R4 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R4 K10 ["Actions"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["AddQueueItem"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R3 K12 ["RemoveQueueItem"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R3 K13 ["SetActiveQueueItem"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R3 K14 ["SetUploadWidgetItem"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R10 R0 K9 ["Src"]
       44 GETTABLEKS                       R9 R10 K15 ["Types"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K9 ["Src"]
       51 GETTABLEKS                       R11 R12 K15 ["Types"]
       53 GETTABLEKS                       R10 R11 K16 ["QueuedSession"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R13 R0 K9 ["Src"]
       60 GETTABLEKS                       R12 R13 K17 ["Utility"]
       62 GETTABLEKS                       R11 R12 K18 ["GetErrorChecked"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K9 ["Src"]
       69 GETTABLEKS                       R13 R14 K17 ["Utility"]
       71 GETTABLEKS                       R12 R13 K19 ["GetCheckedCount"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R16 R0 K9 ["Src"]
       78 GETTABLEKS                       R15 R16 K17 ["Utility"]
       80 GETTABLEKS                       R14 R15 K20 ["Status"]
       82 GETTABLEKS                       R13 R14 K21 ["countStatusLevelsForTree"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R16 R0 K9 ["Src"]
       89 GETTABLEKS                       R15 R16 K17 ["Utility"]
       91 GETTABLEKS                       R14 R15 K22 ["isAssetNameValid"]
       93 CALL                             R13 1 1
       94 DUPCLOSURE                       R14 K23 [PROTO_0]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R13
      100 DUPCLOSURE                       R15 K24 [PROTO_2]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 RETURN                           R15 1
