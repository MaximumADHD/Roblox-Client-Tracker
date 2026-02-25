PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"creatorId", "creatorType", "assetName", "targetType"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["creatorId"]
        6 GETIMPORT                        R4 K8 [Enum.AssetCreatorType.User]
        8 SETTABLEKS                       R4 R3 K1 ["creatorType"]
       10 LOADK                            R4 K9 ["Image"]
       11 SETTABLEKS                       R4 R3 K2 ["assetName"]
       13 GETIMPORT                        R4 K11 [Enum.AssetType.Image]
       15 SETTABLEKS                       R4 R3 K3 ["targetType"]
       17 NAMECALL                         R0 R0 K12 ["UploadAssetFromPathAsync"]
       19 CALL                             R0 3 2
       20 SETUPVAL                         R1 3
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 GETIMPORT                        R3 K2 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          REF R2
       12 CALL                             R3 1 2
       13 JUMPIF                           R3 ; [+4]
       14 LOADNIL                          R5
       15 MOVE                             R6 R4
       16 CLOSEUPVALS                      R2
       17 RETURN                           R5 2
       18 JUMPIFEQKNIL                     R2 ; [+5]
       20 LOADNIL                          R5
       21 MOVE                             R6 R2
       22 CLOSEUPVALS                      R2
       23 RETURN                           R5 2
       24 MOVE                             R5 R4
       25 LOADNIL                          R6
       26 CLOSEUPVALS                      R2
       27 RETURN                           R5 2

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R4 R4 K0 ["GetUserId"]
        4 CALL                             R4 1 1
        5 LOADNIL                          R5
        6 GETIMPORT                        R6 K2 [pcall]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 CAPTURE                          REF R5
       13 CALL                             R6 1 2
       14 JUMPIF                           R6 ; [+4]
       15 LOADNIL                          R1
       16 MOVE                             R2 R7
       17 CLOSEUPVALS                      R5
       18 JUMP                             ; [+9]
       19 JUMPIFEQKNIL                     R5 ; [+5]
       21 LOADNIL                          R1
       22 MOVE                             R2 R5
       23 CLOSEUPVALS                      R5
       24 JUMP                             ; [+3]
       25 MOVE                             R1 R7
       26 LOADNIL                          R2
       27 CLOSEUPVALS                      R5
       28 GETUPVAL                         R4 3
       29 ADDK                             R3 R4 K3 [1]
       30 SETUPVAL                         R3 3
       31 GETUPVAL                         R3 4
       32 JUMPIFNOT                        R3 ; [+6]
       33 GETUPVAL                         R3 4
       34 GETUPVAL                         R5 3
       35 GETUPVAL                         R7 5
       36 LENGTH                           R6 R7
       37 DIV                              R4 R5 R6
       38 CALL                             R3 1 0
       39 MOVE                             R3 R0
       40 DUPTABLE                         R4 K7 [{"kind", "assetId", "err"}]
       41 GETUPVAL                         R5 6
       42 SETTABLEKS                       R5 R4 K4 ["kind"]
       44 SETTABLEKS                       R1 R4 K5 ["assetId"]
       46 SETTABLEKS                       R2 R4 K6 ["err"]
       48 CALL                             R3 1 0
       49 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R2 0
        1 NEWTABLE                         R3 0 0
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R10 R3
        8 GETUPVAL                         R12 0
        9 GETTABLEKS                       R11 R12 K0 ["new"]
       11 NEWCLOSURE                       R12 P0
       12 CAPTURE                          VAL R8
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R7
       19 CALL                             R11 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R9 K3 [table.insert]
       23 CALL                             R9 -1 0
       24 FORGLOOP                         R4 2 ; [-18]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K4 ["all"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 NAMECALL                         R4 R4 K5 ["await"]
       33 CALL                             R4 1 2
       34 NEWTABLE                         R6 0 0
       36 MOVE                             R7 R5
       37 LOADNIL                          R8
       38 LOADNIL                          R9
       39 FORGPREP                         R7
       40 GETTABLEKS                       R12 R11 K6 ["kind"]
       42 DUPTABLE                         R13 K9 [{"assetId", "err"}]
       43 GETTABLEKS                       R14 R11 K7 ["assetId"]
       45 SETTABLEKS                       R14 R13 K7 ["assetId"]
       47 GETTABLEKS                       R14 R11 K8 ["err"]
       49 SETTABLEKS                       R14 R13 K8 ["err"]
       51 SETTABLE                         R13 R6 R12
       52 FORGLOOP                         R7 2 ; [-13]
       54 CLOSEUPVALS                      R2
       55 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickImageFileWithPrompt"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.8]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getOrCreateReimportConfig"]
        3 MOVE                             R3 R0
        4 DUPCLOSURE                       R4 K1 [PROTO_4]
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
       36 JUMPIFNOTEQKNIL                  R5 ; [+9]
       38 GETTABLEKS                       R6 R1 K9 ["error"]
       40 LOADK                            R8 K10 ["Provided path did not match any known material map suffix: "]
       41 GETTABLEKS                       R9 R3 K2 ["filepath"]
       43 CONCAT                           R7 R8 R9
       44 CALL                             R6 1 0
       45 RETURN                           R0 0
       46 LOADN                            R6 0
       47 LOADN                            R7 0
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          REF R6
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R1
       52 LOADK                            R6 K11 [0.1]
       53 MULK                             R10 R7 K12 [0.8]
       54 ADD                              R9 R6 R10
       55 GETTABLEKS                       R10 R1 K13 ["progress"]
       57 MOVE                             R11 R9
       58 CALL                             R10 1 0
       59 GETUPVAL                         R9 3
       60 MOVE                             R10 R5
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          REF R7
       63 CAPTURE                          REF R6
       64 CAPTURE                          VAL R1
       65 CALL                             R9 2 1
       66 LOADN                            R6 1
       67 MULK                             R11 R7 K12 [0.8]
       68 ADD                              R10 R6 R11
       69 GETTABLEKS                       R11 R1 K13 ["progress"]
       71 MOVE                             R12 R10
       72 CALL                             R11 1 0
       73 NEWTABLE                         R10 0 0
       75 NEWTABLE                         R11 0 0
       77 LOADB                            R12 1
       78 MOVE                             R13 R9
       79 LOADNIL                          R14
       80 LOADNIL                          R15
       81 FORGPREP                         R13
       82 GETTABLEKS                       R18 R17 K14 ["err"]
       84 JUMPIFEQKNIL                     R18 ; [+14]
       86 DUPTABLE                         R20 K17 [{"label", "message"}]
       87 SETTABLEKS                       R16 R20 K15 ["label"]
       89 GETTABLEKS                       R21 R17 K14 ["err"]
       91 SETTABLEKS                       R21 R20 K16 ["message"]
       93 FASTCALL2                        TABLE_INSERT R11 R20 ; [+4]
       95 MOVE                             R19 R11
       96 GETIMPORT                        R18 K20 [table.insert]
       98 CALL                             R18 2 0
       99 GETTABLEKS                       R18 R17 K21 ["assetId"]
      101 JUMPIFEQKNIL                     R18 ; [+5]
      103 LOADB                            R12 0
      104 GETTABLEKS                       R18 R17 K21 ["assetId"]
      106 SETTABLE                         R18 R10 R16
      107 FORGLOOP                         R13 2 ; [-26]
      109 JUMPIFNOT                        R12 ; [+6]
      110 GETTABLEKS                       R13 R1 K9 ["error"]
      112 MOVE                             R14 R11
      113 CALL                             R13 1 0
      114 CLOSEUPVALS                      R6
      115 RETURN                           R0 0
      116 MOVE                             R13 R11
      117 LOADNIL                          R14
      118 LOADNIL                          R15
      119 FORGPREP                         R13
      120 GETTABLEKS                       R18 R1 K4 ["warning"]
      122 LOADK                            R20 K22 ["Failed to upload map '%*': %*"]
      123 GETTABLEKS                       R22 R17 K15 ["label"]
      125 GETTABLEKS                       R23 R17 K16 ["message"]
      127 NAMECALL                         R20 R20 K23 ["format"]
      129 CALL                             R20 3 1
      130 MOVE                             R19 R20
      131 CALL                             R18 1 0
      132 FORGLOOP                         R13 2 ; [-13]
      134 GETUPVAL                         R13 4
      135 LOADK                            R15 K24 ["Reimport apply instance"]
      136 NAMECALL                         R13 R13 K25 ["TryBeginRecording"]
      138 CALL                             R13 2 1
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R14 R15 K26 ["setMaps"]
      142 MOVE                             R15 R0
      143 MOVE                             R16 R10
      144 CALL                             R14 2 0
      145 JUMPIFNOTEQKNIL                  R2 ; [+7]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R14 R15 K27 ["newConfig"]
      150 MOVE                             R15 R3
      151 CALL                             R14 1 1
      152 MOVE                             R2 R14
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R16 R17 K28 ["ATTRIBUTE_KEY"]
      156 MOVE                             R17 R2
      157 NAMECALL                         R14 R0 K29 ["SetAttribute"]
      159 CALL                             R14 3 0
      160 JUMPIFNOT                        R13 ; [+7]
      161 GETUPVAL                         R14 4
      162 MOVE                             R16 R13
      163 GETIMPORT                        R17 K33 [Enum.FinishRecordingOperation.Commit]
      165 NAMECALL                         R14 R14 K34 ["FinishRecording"]
      167 CALL                             R14 3 0
      168 GETUPVAL                         R15 5
      169 GETTABLEKS                       R14 R15 K35 ["logReimportEvent"]
      171 DUPTABLE                         R15 K40 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      172 SETTABLEKS                       R2 R15 K36 ["configId"]
      174 LOADB                            R16 1
      175 GETTABLEKS                       R17 R3 K41 ["preset"]
      177 JUMPIFEQKNIL                     R17 ; [+10]
      179 GETTABLEKS                       R17 R3 K41 ["preset"]
      181 GETUPVAL                         R19 6
      182 GETTABLEKS                       R18 R19 K42 ["StudioDefaultPreset"]
      184 JUMPIFEQ                         R17 R18 ; [+2]
      186 LOADB                            R16 0 +1
      187 LOADB                            R16 1
      188 SETTABLEKS                       R16 R15 K37 ["usedStudioDefaultPreset"]
      190 LOADB                            R16 0
      191 SETTABLEKS                       R16 R15 K38 ["wasReimportRelativeToThis"]
      193 GETTABLEKS                       R16 R0 K43 ["ClassName"]
      195 SETTABLEKS                       R16 R15 K39 ["targetType"]
      197 CALL                             R14 1 0
      198 GETIMPORT                        R14 K46 [task.delay]
      200 LOADK                            R15 K47 [0.3]
      201 NEWCLOSURE                       R16 P3
      202 CAPTURE                          VAL R1
      203 CALL                             R14 2 0
      204 CLOSEUPVALS                      R6
      205 RETURN                           R0 0

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
       77 GETIMPORT                        R12 K1 [script]
       79 GETTABLEKS                       R11 R12 K19 ["Parent"]
       81 GETTABLEKS                       R10 R11 K20 ["Types"]
       83 CALL                             R9 1 1
       84 NEWTABLE                         R10 1 0
       86 DUPCLOSURE                       R11 K21 [PROTO_1]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R12 K22 [PROTO_3]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 DUPCLOSURE                       R13 K23 [PROTO_8]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R13 R10 K24 ["reimport"]
      103 RETURN                           R10 1
