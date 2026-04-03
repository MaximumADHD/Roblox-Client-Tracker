PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"creatorId", "creatorType", "assetName", "targetType"}]
        3 GETUPVAL                         R5 2
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+4]
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["creatorId"]
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R4 4
       11 SETTABLEKS                       R4 R3 K0 ["creatorId"]
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K1 ["creatorType"]
       19 JUMP                             ; [+2]
       20 GETIMPORT                        R4 K8 [Enum.AssetCreatorType.User]
       22 SETTABLEKS                       R4 R3 K1 ["creatorType"]
       24 LOADK                            R4 K9 ["Image"]
       25 SETTABLEKS                       R4 R3 K2 ["assetName"]
       27 GETIMPORT                        R4 K11 [Enum.AssetType.Image]
       29 SETTABLEKS                       R4 R3 K3 ["targetType"]
       31 NAMECALL                         R0 R0 K12 ["UploadAssetFromPathAsync"]
       33 CALL                             R0 3 2
       34 SETUPVAL                         R1 5
       35 GETUPVAL                         R2 6
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+6]
       38 GETIMPORT                        R2 K14 [pcall]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R0
       43 CALL                             R2 1 0
       44 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 1
        4 LOADNIL                          R3
        5 GETIMPORT                        R4 K2 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          REF R3
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CALL                             R4 1 2
       17 JUMPIF                           R4 ; [+4]
       18 LOADNIL                          R6
       19 MOVE                             R7 R5
       20 CLOSEUPVALS                      R3
       21 RETURN                           R6 2
       22 JUMPIFEQKNIL                     R3 ; [+5]
       24 LOADNIL                          R6
       25 MOVE                             R7 R3
       26 CLOSEUPVALS                      R3
       27 RETURN                           R6 2
       28 MOVE                             R6 R5
       29 LOADNIL                          R7
       30 CLOSEUPVALS                      R3
       31 RETURN                           R6 2

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
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R5
       15 CAPTURE                          REF R6
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CALL                             R7 1 2
       19 JUMPIF                           R7 ; [+4]
       20 LOADNIL                          R1
       21 MOVE                             R2 R8
       22 CLOSEUPVALS                      R6
       23 JUMP                             ; [+9]
       24 JUMPIFEQKNIL                     R6 ; [+5]
       26 LOADNIL                          R1
       27 MOVE                             R2 R6
       28 CLOSEUPVALS                      R6
       29 JUMP                             ; [+3]
       30 MOVE                             R1 R8
       31 LOADNIL                          R2
       32 CLOSEUPVALS                      R6
       33 GETUPVAL                         R4 7
       34 ADDK                             R3 R4 K3 [1]
       35 SETUPVAL                         R3 7
       36 GETUPVAL                         R3 8
       37 JUMPIFNOT                        R3 ; [+6]
       38 GETUPVAL                         R3 8
       39 GETUPVAL                         R5 7
       40 GETUPVAL                         R7 9
       41 LENGTH                           R6 R7
       42 DIV                              R4 R5 R6
       43 CALL                             R3 1 0
       44 MOVE                             R3 R0
       45 DUPTABLE                         R4 K7 [{"kind", "assetId", "err"}]
       46 GETUPVAL                         R5 10
       47 SETTABLEKS                       R5 R4 K4 ["kind"]
       49 SETTABLEKS                       R1 R4 K5 ["assetId"]
       51 SETTABLEKS                       R2 R4 K6 ["err"]
       53 CALL                             R3 1 0
       54 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 0
        1 NEWTABLE                         R4 0 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 MOVE                             R11 R4
        8 GETUPVAL                         R13 0
        9 GETTABLEKS                       R12 R13 K0 ["new"]
       11 NEWCLOSURE                       R13 P0
       12 CAPTURE                          VAL R9
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R8
       23 CALL                             R12 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R10 K3 [table.insert]
       27 CALL                             R10 -1 0
       28 FORGLOOP                         R5 2 ; [-22]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K4 ["all"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 NAMECALL                         R5 R5 K5 ["await"]
       37 CALL                             R5 1 2
       38 NEWTABLE                         R7 0 0
       40 MOVE                             R8 R6
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETTABLEKS                       R13 R12 K6 ["kind"]
       46 DUPTABLE                         R14 K9 [{"assetId", "err"}]
       47 GETTABLEKS                       R15 R12 K7 ["assetId"]
       49 SETTABLEKS                       R15 R14 K7 ["assetId"]
       51 GETTABLEKS                       R15 R12 K8 ["err"]
       53 SETTABLEKS                       R15 R14 K8 ["err"]
       55 SETTABLE                         R14 R7 R13
       56 FORGLOOP                         R8 2 ; [-13]
       58 CLOSEUPVALS                      R3
       59 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickImageFileWithPrompt"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.8]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 MULK                             R3 R4 K0 [0.8]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["progress"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getOrCreateReimportConfig"]
        3 MOVE                             R3 R0
        4 DUPCLOSURE                       R4 K1 [PROTO_5]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 2 2
        7 GETTABLEKS                       R4 R3 K2 ["filepath"]
        9 JUMPIFEQKNIL                     R4 ; [+5]
       11 GETTABLEKS                       R4 R3 K2 ["filepath"]
       13 JUMPIFNOTEQKS                    R4 K3 [""] ; [+9]
       15 GETTABLEKS                       R4 R1 K4 ["warning"]
       17 LOADK                            R5 K5 ["No file selected for reimport"]
       18 CALL                             R4 1 0
       19 GETTABLEKS                       R4 R1 K6 ["success"]
       21 CALL                             R4 0 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R6 R3 K2 ["filepath"]
       26 NAMECALL                         R4 R4 K7 ["GetFilesInDirAsync"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K8 ["findMaps"]
       32 GETTABLEKS                       R6 R3 K2 ["filepath"]
       34 MOVE                             R7 R4
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 3
       37 CALL                             R6 0 1
       38 JUMPIF                           R6 ; [+10]
       39 JUMPIFNOTEQKNIL                  R5 ; [+9]
       41 GETTABLEKS                       R6 R1 K9 ["error"]
       43 LOADK                            R8 K10 ["Provided path did not match any known material map suffix: "]
       44 GETTABLEKS                       R9 R3 K2 ["filepath"]
       46 CONCAT                           R7 R8 R9
       47 CALL                             R6 1 0
       48 RETURN                           R0 0
       49 LOADN                            R6 0
       50 LOADN                            R7 0
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          REF R6
       53 CAPTURE                          REF R7
       54 CAPTURE                          VAL R1
       55 LOADK                            R6 K11 [0.1]
       56 MULK                             R10 R7 K12 [0.8]
       57 ADD                              R9 R6 R10
       58 GETTABLEKS                       R10 R1 K13 ["progress"]
       60 MOVE                             R11 R9
       61 CALL                             R10 1 0
       62 DUPTABLE                         R9 K16 [{"creatorId", "creatorType"}]
       63 GETUPVAL                         R10 4
       64 NAMECALL                         R10 R10 K17 ["GetUserId"]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K14 ["creatorId"]
       69 GETIMPORT                        R10 K21 [Enum.AssetCreatorType.User]
       71 SETTABLEKS                       R10 R9 K15 ["creatorType"]
       73 GETUPVAL                         R10 5
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R10 ; [+21]
       76 GETTABLEKS                       R10 R3 K14 ["creatorId"]
       78 JUMPIFNOT                        R10 ; [+18]
       79 GETTABLEKS                       R10 R3 K15 ["creatorType"]
       81 JUMPIFNOT                        R10 ; [+15]
       82 GETTABLEKS                       R10 R3 K14 ["creatorId"]
       84 SETTABLEKS                       R10 R9 K14 ["creatorId"]
       86 GETTABLEKS                       R11 R3 K15 ["creatorType"]
       88 JUMPIFNOTEQKS                    R11 K22 ["group"] ; [+4]
       90 GETIMPORT                        R10 K24 [Enum.AssetCreatorType.Group]
       92 JUMP                             ; [+2]
       93 GETIMPORT                        R10 K21 [Enum.AssetCreatorType.User]
       95 SETTABLEKS                       R10 R9 K15 ["creatorType"]
       97 GETUPVAL                         R10 6
       98 MOVE                             R11 R5
       99 MOVE                             R12 R9
      100 NEWCLOSURE                       R13 P2
      101 CAPTURE                          REF R7
      102 CAPTURE                          REF R6
      103 CAPTURE                          VAL R1
      104 CALL                             R10 3 1
      105 LOADN                            R6 1
      106 MULK                             R12 R7 K12 [0.8]
      107 ADD                              R11 R6 R12
      108 GETTABLEKS                       R12 R1 K13 ["progress"]
      110 MOVE                             R13 R11
      111 CALL                             R12 1 0
      112 NEWTABLE                         R11 0 0
      114 NEWTABLE                         R12 0 0
      116 LOADB                            R13 1
      117 MOVE                             R14 R10
      118 LOADNIL                          R15
      119 LOADNIL                          R16
      120 FORGPREP                         R14
      121 GETTABLEKS                       R19 R18 K25 ["err"]
      123 JUMPIFEQKNIL                     R19 ; [+14]
      125 DUPTABLE                         R21 K28 [{"label", "message"}]
      126 SETTABLEKS                       R17 R21 K26 ["label"]
      128 GETTABLEKS                       R22 R18 K25 ["err"]
      130 SETTABLEKS                       R22 R21 K27 ["message"]
      132 FASTCALL2                        TABLE_INSERT R12 R21 ; [+4]
      134 MOVE                             R20 R12
      135 GETIMPORT                        R19 K31 [table.insert]
      137 CALL                             R19 2 0
      138 GETTABLEKS                       R19 R18 K32 ["assetId"]
      140 JUMPIFEQKNIL                     R19 ; [+5]
      142 LOADB                            R13 0
      143 GETTABLEKS                       R19 R18 K32 ["assetId"]
      145 SETTABLE                         R19 R11 R17
      146 FORGLOOP                         R14 2 ; [-26]
      148 JUMPIFNOT                        R13 ; [+6]
      149 GETTABLEKS                       R14 R1 K9 ["error"]
      151 MOVE                             R15 R12
      152 CALL                             R14 1 0
      153 CLOSEUPVALS                      R6
      154 RETURN                           R0 0
      155 MOVE                             R14 R12
      156 LOADNIL                          R15
      157 LOADNIL                          R16
      158 FORGPREP                         R14
      159 GETTABLEKS                       R19 R1 K4 ["warning"]
      161 LOADK                            R21 K33 ["Failed to upload map '%*': %*"]
      162 GETTABLEKS                       R23 R18 K26 ["label"]
      164 GETTABLEKS                       R24 R18 K27 ["message"]
      166 NAMECALL                         R21 R21 K34 ["format"]
      168 CALL                             R21 3 1
      169 MOVE                             R20 R21
      170 CALL                             R19 1 0
      171 FORGLOOP                         R14 2 ; [-13]
      173 GETUPVAL                         R14 7
      174 LOADK                            R16 K35 ["Reimport apply instance"]
      175 NAMECALL                         R14 R14 K36 ["TryBeginRecording"]
      177 CALL                             R14 2 1
      178 GETUPVAL                         R16 2
      179 GETTABLEKS                       R15 R16 K37 ["setMaps"]
      181 MOVE                             R16 R0
      182 MOVE                             R17 R11
      183 CALL                             R15 2 0
      184 JUMPIFNOTEQKNIL                  R2 ; [+7]
      186 GETUPVAL                         R16 0
      187 GETTABLEKS                       R15 R16 K38 ["newConfig"]
      189 MOVE                             R16 R3
      190 CALL                             R15 1 1
      191 MOVE                             R2 R15
      192 GETUPVAL                         R18 0
      193 GETTABLEKS                       R17 R18 K39 ["ATTRIBUTE_KEY"]
      195 MOVE                             R18 R2
      196 NAMECALL                         R15 R0 K40 ["SetAttribute"]
      198 CALL                             R15 3 0
      199 JUMPIFNOT                        R14 ; [+7]
      200 GETUPVAL                         R15 7
      201 MOVE                             R17 R14
      202 GETIMPORT                        R18 K43 [Enum.FinishRecordingOperation.Commit]
      204 NAMECALL                         R15 R15 K44 ["FinishRecording"]
      206 CALL                             R15 3 0
      207 GETUPVAL                         R16 8
      208 GETTABLEKS                       R15 R16 K45 ["logReimportEvent"]
      210 DUPTABLE                         R16 K50 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      211 SETTABLEKS                       R2 R16 K46 ["configId"]
      213 LOADB                            R17 1
      214 GETTABLEKS                       R18 R3 K51 ["preset"]
      216 JUMPIFEQKNIL                     R18 ; [+10]
      218 GETTABLEKS                       R18 R3 K51 ["preset"]
      220 GETUPVAL                         R20 9
      221 GETTABLEKS                       R19 R20 K52 ["StudioDefaultPreset"]
      223 JUMPIFEQ                         R18 R19 ; [+2]
      225 LOADB                            R17 0 +1
      226 LOADB                            R17 1
      227 SETTABLEKS                       R17 R16 K47 ["usedStudioDefaultPreset"]
      229 LOADB                            R17 0
      230 SETTABLEKS                       R17 R16 K48 ["wasReimportRelativeToThis"]
      232 GETTABLEKS                       R17 R0 K53 ["ClassName"]
      234 SETTABLEKS                       R17 R16 K49 ["targetType"]
      236 CALL                             R15 1 0
      237 GETIMPORT                        R15 K56 [task.delay]
      239 LOADK                            R16 K57 [0.3]
      240 NEWCLOSURE                       R17 P3
      241 CAPTURE                          VAL R1
      242 CALL                             R15 2 0
      243 CLOSEUPVALS                      R6
      244 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Lib"]
       18 GETTABLEKS                       R4 R5 K8 ["External"]
       20 GETTABLEKS                       R3 R4 K9 ["AssetImportService"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Lib"]
       27 GETTABLEKS                       R5 R6 K8 ["External"]
       29 GETTABLEKS                       R4 R5 K10 ["ChangeHistoryService"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Lib"]
       36 GETTABLEKS                       R6 R7 K11 ["Reimport"]
       38 GETTABLEKS                       R5 R6 K12 ["MaterialUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Lib"]
       45 GETTABLEKS                       R7 R8 K11 ["Reimport"]
       47 GETTABLEKS                       R6 R7 K13 ["ReimportConfigs"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Lib"]
       54 GETTABLEKS                       R8 R9 K8 ["External"]
       56 GETTABLEKS                       R7 R8 K14 ["StudioService"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Lib"]
       63 GETTABLEKS                       R9 R10 K15 ["Util"]
       65 GETTABLEKS                       R8 R9 K16 ["Telemetry"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K17 ["Packages"]
       72 GETTABLEKS                       R9 R10 K18 ["Promise"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Lib"]
       79 GETTABLEKS                       R11 R12 K8 ["External"]
       81 GETTABLEKS                       R10 R11 K19 ["AssetAccess"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R12 R0 K20 ["Flags"]
       88 GETTABLEKS                       R11 R12 K21 ["GetFFlagReimportNoSuffixIsColorMap"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K20 ["Flags"]
       95 GETTABLEKS                       R12 R13 K22 ["GetFFlagEnableGroupUpload"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R14 R0 K20 ["Flags"]
      102 GETTABLEKS                       R13 R14 K23 ["GetFFlagExpShareUploadedTextures"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R15 R16 K24 ["Parent"]
      111 GETTABLEKS                       R14 R15 K25 ["Types"]
      113 CALL                             R13 1 1
      114 NEWTABLE                         R14 1 0
      116 DUPCLOSURE                       R15 K26 [PROTO_2]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R9
      122 DUPCLOSURE                       R16 K27 [PROTO_4]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R9
      129 DUPCLOSURE                       R17 K28 [PROTO_9]
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R1
      140 SETTABLEKS                       R17 R14 K29 ["reimport"]
      142 RETURN                           R14 1
