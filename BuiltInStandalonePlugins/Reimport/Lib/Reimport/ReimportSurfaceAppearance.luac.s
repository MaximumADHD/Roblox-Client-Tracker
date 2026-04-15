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
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+22]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["getConfigFromInstance"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 2
       10 MOVE                             R2 R4
       11 MOVE                             R3 R5
       12 JUMPIFNOT                        R3 ; [+8]
       13 GETTABLEKS                       R4 R3 K1 ["filepath"]
       15 JUMPIFEQKNIL                     R4 ; [+5]
       17 GETTABLEKS                       R4 R3 K1 ["filepath"]
       19 JUMPIFNOTEQKS                    R4 K2 [""] ; [+32]
       21 GETTABLEKS                       R4 R1 K3 ["error"]
       23 LOADK                            R5 K4 ["No reimport config found for selection"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 JUMP                             ; [+25]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K5 ["getOrCreateReimportConfig"]
       30 MOVE                             R5 R0
       31 DUPCLOSURE                       R6 K6 [PROTO_5]
       32 CAPTURE                          UPVAL U2
       33 CALL                             R4 2 2
       34 MOVE                             R2 R4
       35 MOVE                             R3 R5
       36 GETTABLEKS                       R4 R3 K1 ["filepath"]
       38 JUMPIFEQKNIL                     R4 ; [+5]
       40 GETTABLEKS                       R4 R3 K1 ["filepath"]
       42 JUMPIFNOTEQKS                    R4 K2 [""] ; [+9]
       44 GETTABLEKS                       R4 R1 K7 ["warning"]
       46 LOADK                            R5 K8 ["No file selected for reimport"]
       47 CALL                             R4 1 0
       48 GETTABLEKS                       R4 R1 K9 ["success"]
       50 CALL                             R4 0 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R6 R3 K1 ["filepath"]
       55 NAMECALL                         R4 R4 K10 ["GetFilesInDirAsync"]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R5 R6 K11 ["findMaps"]
       61 GETTABLEKS                       R6 R3 K1 ["filepath"]
       63 MOVE                             R7 R4
       64 CALL                             R5 2 1
       65 GETUPVAL                         R6 4
       66 CALL                             R6 0 1
       67 JUMPIF                           R6 ; [+10]
       68 JUMPIFNOTEQKNIL                  R5 ; [+9]
       70 GETTABLEKS                       R6 R1 K3 ["error"]
       72 LOADK                            R8 K12 ["Provided path did not match any known material map suffix: "]
       73 GETTABLEKS                       R9 R3 K1 ["filepath"]
       75 CONCAT                           R7 R8 R9
       76 CALL                             R6 1 0
       77 RETURN                           R0 0
       78 LOADN                            R6 0
       79 LOADN                            R7 0
       80 NEWCLOSURE                       R8 P1
       81 CAPTURE                          REF R6
       82 CAPTURE                          REF R7
       83 CAPTURE                          VAL R1
       84 LOADK                            R6 K13 [0.1]
       85 MULK                             R10 R7 K14 [0.8]
       86 ADD                              R9 R6 R10
       87 GETTABLEKS                       R10 R1 K15 ["progress"]
       89 MOVE                             R11 R9
       90 CALL                             R10 1 0
       91 DUPTABLE                         R9 K18 [{"creatorId", "creatorType"}]
       92 GETUPVAL                         R10 5
       93 NAMECALL                         R10 R10 K19 ["GetUserId"]
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K16 ["creatorId"]
       98 GETIMPORT                        R10 K23 [Enum.AssetCreatorType.User]
      100 SETTABLEKS                       R10 R9 K17 ["creatorType"]
      102 GETUPVAL                         R10 6
      103 CALL                             R10 0 1
      104 JUMPIFNOT                        R10 ; [+21]
      105 GETTABLEKS                       R10 R3 K16 ["creatorId"]
      107 JUMPIFNOT                        R10 ; [+18]
      108 GETTABLEKS                       R10 R3 K17 ["creatorType"]
      110 JUMPIFNOT                        R10 ; [+15]
      111 GETTABLEKS                       R10 R3 K16 ["creatorId"]
      113 SETTABLEKS                       R10 R9 K16 ["creatorId"]
      115 GETTABLEKS                       R11 R3 K17 ["creatorType"]
      117 JUMPIFNOTEQKS                    R11 K24 ["group"] ; [+4]
      119 GETIMPORT                        R10 K26 [Enum.AssetCreatorType.Group]
      121 JUMP                             ; [+2]
      122 GETIMPORT                        R10 K23 [Enum.AssetCreatorType.User]
      124 SETTABLEKS                       R10 R9 K17 ["creatorType"]
      126 GETUPVAL                         R10 7
      127 MOVE                             R11 R5
      128 MOVE                             R12 R9
      129 NEWCLOSURE                       R13 P2
      130 CAPTURE                          REF R7
      131 CAPTURE                          REF R6
      132 CAPTURE                          VAL R1
      133 CALL                             R10 3 1
      134 LOADN                            R6 1
      135 MULK                             R12 R7 K14 [0.8]
      136 ADD                              R11 R6 R12
      137 GETTABLEKS                       R12 R1 K15 ["progress"]
      139 MOVE                             R13 R11
      140 CALL                             R12 1 0
      141 NEWTABLE                         R11 0 0
      143 NEWTABLE                         R12 0 0
      145 LOADB                            R13 1
      146 MOVE                             R14 R10
      147 LOADNIL                          R15
      148 LOADNIL                          R16
      149 FORGPREP                         R14
      150 GETTABLEKS                       R19 R18 K27 ["err"]
      152 JUMPIFEQKNIL                     R19 ; [+14]
      154 DUPTABLE                         R21 K30 [{"label", "message"}]
      155 SETTABLEKS                       R17 R21 K28 ["label"]
      157 GETTABLEKS                       R22 R18 K27 ["err"]
      159 SETTABLEKS                       R22 R21 K29 ["message"]
      161 FASTCALL2                        TABLE_INSERT R12 R21 ; [+4]
      163 MOVE                             R20 R12
      164 GETIMPORT                        R19 K33 [table.insert]
      166 CALL                             R19 2 0
      167 GETTABLEKS                       R19 R18 K34 ["assetId"]
      169 JUMPIFEQKNIL                     R19 ; [+5]
      171 LOADB                            R13 0
      172 GETTABLEKS                       R19 R18 K34 ["assetId"]
      174 SETTABLE                         R19 R11 R17
      175 FORGLOOP                         R14 2 ; [-26]
      177 JUMPIFNOT                        R13 ; [+6]
      178 GETTABLEKS                       R14 R1 K3 ["error"]
      180 MOVE                             R15 R12
      181 CALL                             R14 1 0
      182 CLOSEUPVALS                      R6
      183 RETURN                           R0 0
      184 MOVE                             R14 R12
      185 LOADNIL                          R15
      186 LOADNIL                          R16
      187 FORGPREP                         R14
      188 GETTABLEKS                       R19 R1 K7 ["warning"]
      190 LOADK                            R21 K35 ["Failed to upload map '%*': %*"]
      191 GETTABLEKS                       R23 R18 K28 ["label"]
      193 GETTABLEKS                       R24 R18 K29 ["message"]
      195 NAMECALL                         R21 R21 K36 ["format"]
      197 CALL                             R21 3 1
      198 MOVE                             R20 R21
      199 CALL                             R19 1 0
      200 FORGLOOP                         R14 2 ; [-13]
      202 GETUPVAL                         R14 8
      203 LOADK                            R16 K37 ["Reimport apply instance"]
      204 NAMECALL                         R14 R14 K38 ["TryBeginRecording"]
      206 CALL                             R14 2 1
      207 GETUPVAL                         R16 3
      208 GETTABLEKS                       R15 R16 K39 ["setMaps"]
      210 MOVE                             R16 R0
      211 MOVE                             R17 R11
      212 CALL                             R15 2 0
      213 JUMPIFNOTEQKNIL                  R2 ; [+7]
      215 GETUPVAL                         R16 1
      216 GETTABLEKS                       R15 R16 K40 ["newConfig"]
      218 MOVE                             R16 R3
      219 CALL                             R15 1 1
      220 MOVE                             R2 R15
      221 GETUPVAL                         R18 1
      222 GETTABLEKS                       R17 R18 K41 ["ATTRIBUTE_KEY"]
      224 MOVE                             R18 R2
      225 NAMECALL                         R15 R0 K42 ["SetAttribute"]
      227 CALL                             R15 3 0
      228 JUMPIFNOT                        R14 ; [+7]
      229 GETUPVAL                         R15 8
      230 MOVE                             R17 R14
      231 GETIMPORT                        R18 K45 [Enum.FinishRecordingOperation.Commit]
      233 NAMECALL                         R15 R15 K46 ["FinishRecording"]
      235 CALL                             R15 3 0
      236 GETUPVAL                         R16 9
      237 GETTABLEKS                       R15 R16 K47 ["logReimportEvent"]
      239 DUPTABLE                         R16 K52 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      240 SETTABLEKS                       R2 R16 K48 ["configId"]
      242 LOADB                            R17 1
      243 GETTABLEKS                       R18 R3 K53 ["preset"]
      245 JUMPIFEQKNIL                     R18 ; [+10]
      247 GETTABLEKS                       R18 R3 K53 ["preset"]
      249 GETUPVAL                         R20 10
      250 GETTABLEKS                       R19 R20 K54 ["StudioDefaultPreset"]
      252 JUMPIFEQ                         R18 R19 ; [+2]
      254 LOADB                            R17 0 +1
      255 LOADB                            R17 1
      256 SETTABLEKS                       R17 R16 K49 ["usedStudioDefaultPreset"]
      258 LOADB                            R17 0
      259 SETTABLEKS                       R17 R16 K50 ["wasReimportRelativeToThis"]
      261 GETTABLEKS                       R17 R0 K55 ["ClassName"]
      263 SETTABLEKS                       R17 R16 K51 ["targetType"]
      265 CALL                             R15 1 0
      266 GETIMPORT                        R15 K58 [task.delay]
      268 LOADK                            R16 K59 [0.3]
      269 NEWCLOSURE                       R17 P3
      270 CAPTURE                          VAL R1
      271 CALL                             R15 2 0
      272 CLOSEUPVALS                      R6
      273 RETURN                           R0 0

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
      107 GETTABLEKS                       R15 R0 K20 ["Flags"]
      109 GETTABLEKS                       R14 R15 K24 ["GetFFlagConfigureOnFirstReimport"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETIMPORT                        R17 K1 [script]
      116 GETTABLEKS                       R16 R17 K25 ["Parent"]
      118 GETTABLEKS                       R15 R16 K26 ["Types"]
      120 CALL                             R14 1 1
      121 NEWTABLE                         R15 1 0
      123 DUPCLOSURE                       R16 K27 [PROTO_2]
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R9
      129 DUPCLOSURE                       R17 K28 [PROTO_4]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R9
      136 DUPCLOSURE                       R18 K29 [PROTO_9]
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R18 R15 K30 ["reimport"]
      150 RETURN                           R15 1
