PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["acquireLock"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["creatorId"]
       11 CALL                             R1 2 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R3 2
       15 DUPTABLE                         R4 K5 [{"creatorId", "creatorType", "assetName", "targetType"}]
       16 GETUPVAL                         R6 5
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+4]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K1 ["creatorId"]
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R5 6
       24 SETTABLEKS                       R5 R4 K1 ["creatorId"]
       26 GETUPVAL                         R6 5
       27 CALL                             R6 0 1
       28 JUMPIFNOT                        R6 ; [+4]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K2 ["creatorType"]
       32 JUMP                             ; [+2]
       33 GETIMPORT                        R5 K9 [Enum.AssetCreatorType.User]
       35 SETTABLEKS                       R5 R4 K2 ["creatorType"]
       37 LOADK                            R5 K10 ["Image"]
       38 SETTABLEKS                       R5 R4 K3 ["assetName"]
       40 GETIMPORT                        R5 K12 [Enum.AssetType.Image]
       42 SETTABLEKS                       R5 R4 K4 ["targetType"]
       44 NAMECALL                         R1 R1 K13 ["UploadAssetFromPathAsync"]
       46 CALL                             R1 3 2
       47 GETUPVAL                         R3 0
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+4]
       50 JUMPIFNOT                        R0 ; [+3]
       51 GETTABLEKS                       R3 R0 K14 ["release"]
       53 CALL                             R3 0 0
       54 SETUPVAL                         R2 7
       55 GETUPVAL                         R3 8
       56 CALL                             R3 0 1
       57 JUMPIFNOT                        R3 ; [+6]
       58 GETIMPORT                        R3 K16 [pcall]
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R1
       63 CALL                             R3 1 0
       64 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 1
        4 LOADNIL                          R3
        5 GETIMPORT                        R4 K2 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          REF R3
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CALL                             R4 1 2
       19 JUMPIF                           R4 ; [+4]
       20 LOADNIL                          R6
       21 MOVE                             R7 R5
       22 CLOSEUPVALS                      R3
       23 RETURN                           R6 2
       24 JUMPIFEQKNIL                     R3 ; [+5]
       26 LOADNIL                          R6
       27 MOVE                             R7 R3
       28 CLOSEUPVALS                      R3
       29 RETURN                           R6 2
       30 MOVE                             R6 R5
       31 LOADNIL                          R7
       32 CLOSEUPVALS                      R3
       33 RETURN                           R6 2

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 NAMECALL                         R5 R5 K0 ["GetUserId"]
        5 CALL                             R5 1 1
        6 LOADNIL                          R6
        7 GETIMPORT                        R7 K2 [pcall]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R5
       17 CAPTURE                          REF R6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CALL                             R7 1 2
       21 JUMPIF                           R7 ; [+4]
       22 LOADNIL                          R1
       23 MOVE                             R2 R8
       24 CLOSEUPVALS                      R6
       25 JUMP                             ; [+9]
       26 JUMPIFEQKNIL                     R6 ; [+5]
       28 LOADNIL                          R1
       29 MOVE                             R2 R6
       30 CLOSEUPVALS                      R6
       31 JUMP                             ; [+3]
       32 MOVE                             R1 R8
       33 LOADNIL                          R2
       34 CLOSEUPVALS                      R6
       35 GETUPVAL                         R4 9
       36 ADDK                             R3 R4 K3 [1]
       37 SETUPVAL                         R3 9
       38 GETUPVAL                         R3 10
       39 JUMPIFNOT                        R3 ; [+6]
       40 GETUPVAL                         R3 10
       41 GETUPVAL                         R5 9
       42 GETUPVAL                         R7 11
       43 LENGTH                           R6 R7
       44 DIV                              R4 R5 R6
       45 CALL                             R3 1 0
       46 MOVE                             R3 R0
       47 DUPTABLE                         R4 K7 [{"kind", "assetId", "err"}]
       48 GETUPVAL                         R5 12
       49 SETTABLEKS                       R5 R4 K4 ["kind"]
       51 SETTABLEKS                       R1 R4 K5 ["assetId"]
       53 SETTABLEKS                       R2 R4 K6 ["err"]
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 0
        1 NEWTABLE                         R4 0 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 MOVE                             R11 R4
        8 GETUPVAL                         R12 0
        9 GETTABLEKS                       R12 R12 K0 ["new"]
       11 NEWCLOSURE                       R13 P0
       12 CAPTURE                          VAL R9
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          REF R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R8
       25 CALL                             R12 1 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R10 K3 [table.insert]
       29 CALL                             R10 -1 0
       30 FORGLOOP                         R5 2 ; [-24]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K4 ["all"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 NAMECALL                         R5 R5 K5 ["await"]
       39 CALL                             R5 1 2
       40 NEWTABLE                         R7 0 0
       42 MOVE                             R8 R6
       43 LOADNIL                          R9
       44 LOADNIL                          R10
       45 FORGPREP                         R8
       46 GETTABLEKS                       R13 R12 K6 ["kind"]
       48 DUPTABLE                         R14 K9 [{"assetId", "err"}]
       49 GETTABLEKS                       R15 R12 K7 ["assetId"]
       51 SETTABLEKS                       R15 R14 K7 ["assetId"]
       53 GETTABLEKS                       R15 R12 K8 ["err"]
       55 SETTABLEKS                       R15 R14 K8 ["err"]
       57 SETTABLE                         R14 R7 R13
       58 FORGLOOP                         R8 2 ; [-13]
       60 CLOSEUPVALS                      R3
       61 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.8]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 MULK                             R3 R4 K0 [0.8]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["progress"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["getConfigFromInstance"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 2
        7 MOVE                             R2 R4
        8 MOVE                             R3 R5
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R4 R3 K1 ["filepath"]
       12 JUMPIFEQKNIL                     R4 ; [+5]
       14 GETTABLEKS                       R4 R3 K1 ["filepath"]
       16 JUMPIFNOTEQKS                    R4 K2 [""] ; [+6]
       18 GETTABLEKS                       R4 R1 K3 ["error"]
       20 LOADK                            R5 K4 ["No reimport config found for selection"]
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R6 R3 K1 ["filepath"]
       26 NAMECALL                         R4 R4 K5 ["GetFilesInDirAsync"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K6 ["findMaps"]
       32 GETTABLEKS                       R6 R3 K1 ["filepath"]
       34 MOVE                             R7 R4
       35 CALL                             R5 2 1
       36 LOADN                            R6 0
       37 LOADN                            R7 0
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R7
       41 CAPTURE                          VAL R1
       42 LOADK                            R6 K7 [0.1]
       43 MULK                             R10 R7 K8 [0.8]
       44 ADD                              R9 R6 R10
       45 GETTABLEKS                       R10 R1 K9 ["progress"]
       47 MOVE                             R11 R9
       48 CALL                             R10 1 0
       49 DUPTABLE                         R9 K12 [{"creatorId", "creatorType"}]
       50 GETUPVAL                         R10 3
       51 NAMECALL                         R10 R10 K13 ["GetUserId"]
       53 CALL                             R10 1 1
       54 SETTABLEKS                       R10 R9 K10 ["creatorId"]
       56 GETIMPORT                        R10 K17 [Enum.AssetCreatorType.User]
       58 SETTABLEKS                       R10 R9 K11 ["creatorType"]
       60 GETUPVAL                         R10 4
       61 CALL                             R10 0 1
       62 JUMPIFNOT                        R10 ; [+21]
       63 GETTABLEKS                       R10 R3 K10 ["creatorId"]
       65 JUMPIFNOT                        R10 ; [+18]
       66 GETTABLEKS                       R10 R3 K11 ["creatorType"]
       68 JUMPIFNOT                        R10 ; [+15]
       69 GETTABLEKS                       R10 R3 K10 ["creatorId"]
       71 SETTABLEKS                       R10 R9 K10 ["creatorId"]
       73 GETTABLEKS                       R11 R3 K11 ["creatorType"]
       75 JUMPIFNOTEQKS                    R11 K18 ["group"] ; [+4]
       77 GETIMPORT                        R10 K20 [Enum.AssetCreatorType.Group]
       79 JUMP                             ; [+2]
       80 GETIMPORT                        R10 K17 [Enum.AssetCreatorType.User]
       82 SETTABLEKS                       R10 R9 K11 ["creatorType"]
       84 GETUPVAL                         R10 5
       85 MOVE                             R11 R5
       86 MOVE                             R12 R9
       87 NEWCLOSURE                       R13 P1
       88 CAPTURE                          REF R7
       89 CAPTURE                          REF R6
       90 CAPTURE                          VAL R1
       91 CALL                             R10 3 1
       92 LOADN                            R6 1
       93 MULK                             R12 R7 K8 [0.8]
       94 ADD                              R11 R6 R12
       95 GETTABLEKS                       R12 R1 K9 ["progress"]
       97 MOVE                             R13 R11
       98 CALL                             R12 1 0
       99 NEWTABLE                         R11 0 0
      101 NEWTABLE                         R12 0 0
      103 LOADB                            R13 1
      104 MOVE                             R14 R10
      105 LOADNIL                          R15
      106 LOADNIL                          R16
      107 FORGPREP                         R14
      108 GETTABLEKS                       R19 R18 K21 ["err"]
      110 JUMPIFEQKNIL                     R19 ; [+14]
      112 DUPTABLE                         R21 K24 [{"label", "message"}]
      113 SETTABLEKS                       R17 R21 K22 ["label"]
      115 GETTABLEKS                       R22 R18 K21 ["err"]
      117 SETTABLEKS                       R22 R21 K23 ["message"]
      119 FASTCALL2                        TABLE_INSERT R12 R21 ; [+4]
      121 MOVE                             R20 R12
      122 GETIMPORT                        R19 K27 [table.insert]
      124 CALL                             R19 2 0
      125 GETTABLEKS                       R19 R18 K28 ["assetId"]
      127 JUMPIFEQKNIL                     R19 ; [+5]
      129 LOADB                            R13 0
      130 GETTABLEKS                       R19 R18 K28 ["assetId"]
      132 SETTABLE                         R19 R11 R17
      133 FORGLOOP                         R14 2 ; [-26]
      135 JUMPIFNOT                        R13 ; [+6]
      136 GETTABLEKS                       R14 R1 K3 ["error"]
      138 MOVE                             R15 R12
      139 CALL                             R14 1 0
      140 CLOSEUPVALS                      R6
      141 RETURN                           R0 0
      142 MOVE                             R14 R12
      143 LOADNIL                          R15
      144 LOADNIL                          R16
      145 FORGPREP                         R14
      146 GETTABLEKS                       R19 R1 K29 ["warning"]
      148 LOADK                            R21 K30 ["Failed to upload map '%*': %*"]
      149 GETTABLEKS                       R23 R18 K22 ["label"]
      151 GETTABLEKS                       R24 R18 K23 ["message"]
      153 NAMECALL                         R21 R21 K31 ["format"]
      155 CALL                             R21 3 1
      156 MOVE                             R20 R21
      157 CALL                             R19 1 0
      158 FORGLOOP                         R14 2 ; [-13]
      160 GETUPVAL                         R14 6
      161 LOADK                            R16 K32 ["Reimport apply instance"]
      162 NAMECALL                         R14 R14 K33 ["TryBeginRecording"]
      164 CALL                             R14 2 1
      165 GETUPVAL                         R15 2
      166 GETTABLEKS                       R15 R15 K34 ["setMaps"]
      168 MOVE                             R16 R0
      169 MOVE                             R17 R11
      170 CALL                             R15 2 0
      171 JUMPIFNOTEQKNIL                  R2 ; [+7]
      173 GETUPVAL                         R15 0
      174 GETTABLEKS                       R15 R15 K35 ["newConfig"]
      176 MOVE                             R16 R3
      177 CALL                             R15 1 1
      178 MOVE                             R2 R15
      179 GETUPVAL                         R17 0
      180 GETTABLEKS                       R17 R17 K36 ["ATTRIBUTE_KEY"]
      182 MOVE                             R18 R2
      183 NAMECALL                         R15 R0 K37 ["SetAttribute"]
      185 CALL                             R15 3 0
      186 JUMPIFNOT                        R14 ; [+7]
      187 GETUPVAL                         R15 6
      188 MOVE                             R17 R14
      189 GETIMPORT                        R18 K40 [Enum.FinishRecordingOperation.Commit]
      191 NAMECALL                         R15 R15 K41 ["FinishRecording"]
      193 CALL                             R15 3 0
      194 GETIMPORT                        R15 K44 [task.delay]
      196 LOADK                            R16 K45 [0.3]
      197 NEWCLOSURE                       R17 P2
      198 CAPTURE                          VAL R1
      199 CALL                             R15 2 0
      200 CLOSEUPVALS                      R6
      201 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["External"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetImportService"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Lib"]
       20 GETTABLEKS                       R3 R3 K7 ["External"]
       22 GETTABLEKS                       R3 R3 K9 ["ChangeHistoryService"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Lib"]
       29 GETTABLEKS                       R4 R4 K10 ["Reimport"]
       31 GETTABLEKS                       R4 R4 K11 ["MaterialUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Lib"]
       38 GETTABLEKS                       R5 R5 K10 ["Reimport"]
       40 GETTABLEKS                       R5 R5 K12 ["ReimportConfigs"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Lib"]
       47 GETTABLEKS                       R6 R6 K7 ["External"]
       49 GETTABLEKS                       R6 R6 K13 ["StudioService"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K14 ["Packages"]
       56 GETTABLEKS                       R7 R7 K15 ["Promise"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Lib"]
       63 GETTABLEKS                       R8 R8 K7 ["External"]
       65 GETTABLEKS                       R8 R8 K16 ["AssetAccess"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Lib"]
       72 GETTABLEKS                       R9 R9 K10 ["Reimport"]
       74 GETTABLEKS                       R9 R9 K17 ["UploadUtils"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K18 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["GetFFlagEnableGroupUpload"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K18 ["Flags"]
       88 GETTABLEKS                       R11 R11 K20 ["GetFFlagExpShareUploadedTextures"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K18 ["Flags"]
       95 GETTABLEKS                       R12 R12 K21 ["GetFFlagReimportFileWatcher"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETIMPORT                        R13 K1 [script]
      102 GETTABLEKS                       R13 R13 K22 ["Parent"]
      104 GETTABLEKS                       R13 R13 K23 ["Types"]
      106 CALL                             R12 1 1
      107 NEWTABLE                         R13 1 0
      109 DUPCLOSURE                       R14 K24 [PROTO_2]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R7
      117 DUPCLOSURE                       R15 K25 [PROTO_4]
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 DUPCLOSURE                       R16 K26 [PROTO_8]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R16 R13 K27 ["reimport"]
      136 RETURN                           R13 1
