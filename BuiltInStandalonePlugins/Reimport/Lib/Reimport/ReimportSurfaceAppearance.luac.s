PROTO_0:
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
       35 RETURN                           R0 1

PROTO_1:
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
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+4]
       16 LOADNIL                          R6
       17 MOVE                             R7 R5
       18 CLOSEUPVALS                      R3
       19 RETURN                           R6 2
       20 JUMPIFEQKNIL                     R3 ; [+5]
       22 LOADNIL                          R6
       23 MOVE                             R7 R3
       24 CLOSEUPVALS                      R3
       25 RETURN                           R6 2
       26 MOVE                             R6 R5
       27 LOADNIL                          R7
       28 CLOSEUPVALS                      R3
       29 RETURN                           R6 2

PROTO_2:
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
       16 CALL                             R7 1 2
       17 JUMPIF                           R7 ; [+4]
       18 LOADNIL                          R1
       19 MOVE                             R2 R8
       20 CLOSEUPVALS                      R6
       21 JUMP                             ; [+9]
       22 JUMPIFEQKNIL                     R6 ; [+5]
       24 LOADNIL                          R1
       25 MOVE                             R2 R6
       26 CLOSEUPVALS                      R6
       27 JUMP                             ; [+3]
       28 MOVE                             R1 R8
       29 LOADNIL                          R2
       30 CLOSEUPVALS                      R6
       31 GETUPVAL                         R4 5
       32 ADDK                             R3 R4 K3 [1]
       33 SETUPVAL                         R3 5
       34 GETUPVAL                         R3 6
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETUPVAL                         R3 6
       37 GETUPVAL                         R5 5
       38 GETUPVAL                         R7 7
       39 LENGTH                           R6 R7
       40 DIV                              R4 R5 R6
       41 CALL                             R3 1 0
       42 MOVE                             R3 R0
       43 DUPTABLE                         R4 K7 [{"kind", "assetId", "err"}]
       44 GETUPVAL                         R5 8
       45 SETTABLEKS                       R5 R4 K4 ["kind"]
       47 SETTABLEKS                       R1 R4 K5 ["assetId"]
       49 SETTABLEKS                       R2 R4 K6 ["err"]
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_3:
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
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R8
       21 CALL                             R12 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R10 K3 [table.insert]
       25 CALL                             R10 -1 0
       26 FORGLOOP                         R5 2 ; [-20]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K4 ["all"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 NAMECALL                         R5 R5 K5 ["await"]
       35 CALL                             R5 1 2
       36 NEWTABLE                         R7 0 0
       38 MOVE                             R8 R6
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 FORGPREP                         R8
       42 GETTABLEKS                       R13 R12 K6 ["kind"]
       44 DUPTABLE                         R14 K9 [{"assetId", "err"}]
       45 GETTABLEKS                       R15 R12 K7 ["assetId"]
       47 SETTABLEKS                       R15 R14 K7 ["assetId"]
       49 GETTABLEKS                       R15 R12 K8 ["err"]
       51 SETTABLEKS                       R15 R14 K8 ["err"]
       53 SETTABLE                         R14 R7 R13
       54 FORGLOOP                         R8 2 ; [-13]
       56 CLOSEUPVALS                      R3
       57 RETURN                           R7 1

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
       59 DUPTABLE                         R9 K16 [{"creatorId", "creatorType"}]
       60 GETUPVAL                         R10 3
       61 NAMECALL                         R10 R10 K17 ["GetUserId"]
       63 CALL                             R10 1 1
       64 SETTABLEKS                       R10 R9 K14 ["creatorId"]
       66 GETIMPORT                        R10 K21 [Enum.AssetCreatorType.User]
       68 SETTABLEKS                       R10 R9 K15 ["creatorType"]
       70 GETUPVAL                         R10 4
       71 CALL                             R10 0 1
       72 JUMPIFNOT                        R10 ; [+21]
       73 GETTABLEKS                       R10 R3 K14 ["creatorId"]
       75 JUMPIFNOT                        R10 ; [+18]
       76 GETTABLEKS                       R10 R3 K15 ["creatorType"]
       78 JUMPIFNOT                        R10 ; [+15]
       79 GETTABLEKS                       R10 R3 K14 ["creatorId"]
       81 SETTABLEKS                       R10 R9 K14 ["creatorId"]
       83 GETTABLEKS                       R11 R3 K15 ["creatorType"]
       85 JUMPIFNOTEQKS                    R11 K22 ["group"] ; [+4]
       87 GETIMPORT                        R10 K24 [Enum.AssetCreatorType.Group]
       89 JUMP                             ; [+2]
       90 GETIMPORT                        R10 K21 [Enum.AssetCreatorType.User]
       92 SETTABLEKS                       R10 R9 K15 ["creatorType"]
       94 GETUPVAL                         R10 5
       95 MOVE                             R11 R5
       96 MOVE                             R12 R9
       97 NEWCLOSURE                       R13 P2
       98 CAPTURE                          REF R7
       99 CAPTURE                          REF R6
      100 CAPTURE                          VAL R1
      101 CALL                             R10 3 1
      102 LOADN                            R6 1
      103 MULK                             R12 R7 K12 [0.8]
      104 ADD                              R11 R6 R12
      105 GETTABLEKS                       R12 R1 K13 ["progress"]
      107 MOVE                             R13 R11
      108 CALL                             R12 1 0
      109 NEWTABLE                         R11 0 0
      111 NEWTABLE                         R12 0 0
      113 LOADB                            R13 1
      114 MOVE                             R14 R10
      115 LOADNIL                          R15
      116 LOADNIL                          R16
      117 FORGPREP                         R14
      118 GETTABLEKS                       R19 R18 K25 ["err"]
      120 JUMPIFEQKNIL                     R19 ; [+14]
      122 DUPTABLE                         R21 K28 [{"label", "message"}]
      123 SETTABLEKS                       R17 R21 K26 ["label"]
      125 GETTABLEKS                       R22 R18 K25 ["err"]
      127 SETTABLEKS                       R22 R21 K27 ["message"]
      129 FASTCALL2                        TABLE_INSERT R12 R21 ; [+4]
      131 MOVE                             R20 R12
      132 GETIMPORT                        R19 K31 [table.insert]
      134 CALL                             R19 2 0
      135 GETTABLEKS                       R19 R18 K32 ["assetId"]
      137 JUMPIFEQKNIL                     R19 ; [+5]
      139 LOADB                            R13 0
      140 GETTABLEKS                       R19 R18 K32 ["assetId"]
      142 SETTABLE                         R19 R11 R17
      143 FORGLOOP                         R14 2 ; [-26]
      145 JUMPIFNOT                        R13 ; [+6]
      146 GETTABLEKS                       R14 R1 K9 ["error"]
      148 MOVE                             R15 R12
      149 CALL                             R14 1 0
      150 CLOSEUPVALS                      R6
      151 RETURN                           R0 0
      152 MOVE                             R14 R12
      153 LOADNIL                          R15
      154 LOADNIL                          R16
      155 FORGPREP                         R14
      156 GETTABLEKS                       R19 R1 K4 ["warning"]
      158 LOADK                            R21 K33 ["Failed to upload map '%*': %*"]
      159 GETTABLEKS                       R23 R18 K26 ["label"]
      161 GETTABLEKS                       R24 R18 K27 ["message"]
      163 NAMECALL                         R21 R21 K34 ["format"]
      165 CALL                             R21 3 1
      166 MOVE                             R20 R21
      167 CALL                             R19 1 0
      168 FORGLOOP                         R14 2 ; [-13]
      170 GETUPVAL                         R14 6
      171 LOADK                            R16 K35 ["Reimport apply instance"]
      172 NAMECALL                         R14 R14 K36 ["TryBeginRecording"]
      174 CALL                             R14 2 1
      175 GETUPVAL                         R16 2
      176 GETTABLEKS                       R15 R16 K37 ["setMaps"]
      178 MOVE                             R16 R0
      179 MOVE                             R17 R11
      180 CALL                             R15 2 0
      181 JUMPIFNOTEQKNIL                  R2 ; [+7]
      183 GETUPVAL                         R16 0
      184 GETTABLEKS                       R15 R16 K38 ["newConfig"]
      186 MOVE                             R16 R3
      187 CALL                             R15 1 1
      188 MOVE                             R2 R15
      189 GETUPVAL                         R18 0
      190 GETTABLEKS                       R17 R18 K39 ["ATTRIBUTE_KEY"]
      192 MOVE                             R18 R2
      193 NAMECALL                         R15 R0 K40 ["SetAttribute"]
      195 CALL                             R15 3 0
      196 JUMPIFNOT                        R14 ; [+7]
      197 GETUPVAL                         R15 6
      198 MOVE                             R17 R14
      199 GETIMPORT                        R18 K43 [Enum.FinishRecordingOperation.Commit]
      201 NAMECALL                         R15 R15 K44 ["FinishRecording"]
      203 CALL                             R15 3 0
      204 GETUPVAL                         R16 7
      205 GETTABLEKS                       R15 R16 K45 ["logReimportEvent"]
      207 DUPTABLE                         R16 K50 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      208 SETTABLEKS                       R2 R16 K46 ["configId"]
      210 LOADB                            R17 1
      211 GETTABLEKS                       R18 R3 K51 ["preset"]
      213 JUMPIFEQKNIL                     R18 ; [+10]
      215 GETTABLEKS                       R18 R3 K51 ["preset"]
      217 GETUPVAL                         R20 8
      218 GETTABLEKS                       R19 R20 K52 ["StudioDefaultPreset"]
      220 JUMPIFEQ                         R18 R19 ; [+2]
      222 LOADB                            R17 0 +1
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K47 ["usedStudioDefaultPreset"]
      226 LOADB                            R17 0
      227 SETTABLEKS                       R17 R16 K48 ["wasReimportRelativeToThis"]
      229 GETTABLEKS                       R17 R0 K53 ["ClassName"]
      231 SETTABLEKS                       R17 R16 K49 ["targetType"]
      233 CALL                             R15 1 0
      234 GETIMPORT                        R15 K56 [task.delay]
      236 LOADK                            R16 K57 [0.3]
      237 NEWCLOSURE                       R17 P3
      238 CAPTURE                          VAL R1
      239 CALL                             R15 2 0
      240 CLOSEUPVALS                      R6
      241 RETURN                           R0 0

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
       77 GETTABLEKS                       R11 R0 K19 ["Flags"]
       79 GETTABLEKS                       R10 R11 K20 ["GetFFlagEnableGroupUpload"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETIMPORT                        R13 K1 [script]
       86 GETTABLEKS                       R12 R13 K21 ["Parent"]
       88 GETTABLEKS                       R11 R12 K22 ["Types"]
       90 CALL                             R10 1 1
       91 NEWTABLE                         R11 1 0
       93 DUPCLOSURE                       R12 K23 [PROTO_1]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R9
       97 DUPCLOSURE                       R13 K24 [PROTO_3]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R9
      102 DUPCLOSURE                       R14 K25 [PROTO_8]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R14 R11 K26 ["reimport"]
      114 RETURN                           R11 1
