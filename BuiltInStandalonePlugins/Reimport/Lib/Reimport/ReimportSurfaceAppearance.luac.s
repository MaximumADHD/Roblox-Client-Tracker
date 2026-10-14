PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["assetId"]
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["ShareAccessToAssetsAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

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
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 4
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+27]
       18 GETUPVAL                         R3 5
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K1 ["creatorId"]
       24 SETTABLEKS                       R7 R6 K1 ["creatorId"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K2 ["creatorType"]
       29 SETTABLEKS                       R7 R6 K2 ["creatorType"]
       31 GETIMPORT                        R7 K9 [Enum.AssetType.Image]
       33 SETTABLEKS                       R7 R6 K5 ["targetType"]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K11 ["existingAssetId"]
       38 ORK                              R7 R8 K10 [0]
       39 NAMECALL                         R3 R3 K12 ["UploadVersionedAssetFromPathAsync"]
       41 CALL                             R3 4 2
       42 MOVE                             R1 R3
       43 MOVE                             R2 R4
       44 JUMP                             ; [+27]
       45 LOADNIL                          R3
       46 GETUPVAL                         R4 5
       47 GETUPVAL                         R6 2
       48 DUPTABLE                         R7 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K1 ["creatorId"]
       52 SETTABLEKS                       R8 R7 K1 ["creatorId"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K2 ["creatorType"]
       57 SETTABLEKS                       R8 R7 K2 ["creatorType"]
       59 GETIMPORT                        R8 K9 [Enum.AssetType.Image]
       61 SETTABLEKS                       R8 R7 K5 ["targetType"]
       63 NAMECALL                         R4 R4 K13 ["UploadAssetFromPathAsync"]
       65 CALL                             R4 3 2
       66 MOVE                             R3 R4
       67 MOVE                             R2 R5
       68 DUPTABLE                         R4 K17 [{["assetId"], ["versionNumber"] = 1}]
       69 SETTABLEKS                       R3 R4 K14 ["assetId"]
       71 MOVE                             R1 R4
       72 GETUPVAL                         R3 0
       73 CALL                             R3 0 1
       74 JUMPIFNOT                        R3 ; [+4]
       75 JUMPIFNOT                        R0 ; [+3]
       76 GETTABLEKS                       R3 R0 K18 ["release"]
       78 CALL                             R3 0 0
       79 SETUPVAL                         R2 6
       80 GETUPVAL                         R3 7
       81 CALL                             R3 0 1
       82 JUMPIFNOT                        R3 ; [+6]
       83 GETIMPORT                        R3 K20 [pcall]
       85 NEWCLOSURE                       R4 P0
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          REF R1
       88 CALL                             R3 1 0
       89 CLOSEUPVALS                      R1
       90 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+4]
       15 LOADNIL                          R5
       16 MOVE                             R6 R4
       17 CLOSEUPVALS                      R2
       18 RETURN                           R5 2
       19 JUMPIFEQKNIL                     R2 ; [+5]
       21 LOADNIL                          R5
       22 MOVE                             R6 R2
       23 CLOSEUPVALS                      R2
       24 RETURN                           R5 2
       25 MOVE                             R5 R4
       26 LOADNIL                          R6
       27 CLOSEUPVALS                      R2
       28 RETURN                           R5 2

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"creatorId", "creatorType", "existingAssetId"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["creatorId"]
        4 SETTABLEKS                       R2 R1 K0 ["creatorId"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["creatorType"]
        9 SETTABLEKS                       R2 R1 K1 ["creatorType"]
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+4]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 GETTABLE                         R2 R3 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K2 ["existingAssetId"]
       21 GETUPVAL                         R4 4
       22 LOADNIL                          R5
       23 GETIMPORT                        R6 K5 [pcall]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          REF R5
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CALL                             R6 1 2
       36 JUMPIF                           R6 ; [+4]
       37 LOADNIL                          R2
       38 MOVE                             R3 R7
       39 CLOSEUPVALS                      R5
       40 JUMP                             ; [+9]
       41 JUMPIFEQKNIL                     R5 ; [+5]
       43 LOADNIL                          R2
       44 MOVE                             R3 R5
       45 CLOSEUPVALS                      R5
       46 JUMP                             ; [+3]
       47 MOVE                             R2 R7
       48 LOADNIL                          R3
       49 CLOSEUPVALS                      R5
       50 GETUPVAL                         R5 10
       51 ADDK                             R4 R5 K6 [1]
       52 SETUPVAL                         R4 10
       53 GETUPVAL                         R4 11
       54 JUMPIFNOT                        R4 ; [+6]
       55 GETUPVAL                         R4 11
       56 GETUPVAL                         R6 10
       57 GETUPVAL                         R8 12
       58 LENGTH                           R7 R8
       59 DIV                              R5 R6 R7
       60 CALL                             R4 1 0
       61 MOVE                             R4 R0
       62 DUPTABLE                         R5 K10 [{"kind", "versionedId", "err"}]
       63 GETUPVAL                         R6 3
       64 SETTABLEKS                       R6 R5 K7 ["kind"]
       66 SETTABLEKS                       R2 R5 K8 ["versionedId"]
       68 SETTABLEKS                       R3 R5 K9 ["err"]
       70 CALL                             R4 1 0
       71 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R4 0
        1 NEWTABLE                         R5 0 0
        3 MOVE                             R6 R0
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 FORGPREP                         R6
        7 MOVE                             R12 R5
        8 GETUPVAL                         R13 0
        9 GETTABLEKS                       R13 R13 K0 ["new"]
       11 NEWCLOSURE                       R14 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R9
       16 CAPTURE                          VAL R10
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 CALL                             R13 1 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R11 K3 [table.insert]
       29 CALL                             R11 -1 0
       30 FORGLOOP                         R6 2 ; [-24]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K4 ["all"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 1
       37 NAMECALL                         R6 R6 K5 ["await"]
       39 CALL                             R6 1 2
       40 NEWTABLE                         R8 0 0
       42 MOVE                             R9 R7
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 FORGPREP                         R9
       46 GETTABLEKS                       R14 R13 K6 ["kind"]
       48 DUPTABLE                         R15 K9 [{"versionedId", "err"}]
       49 GETTABLEKS                       R16 R13 K7 ["versionedId"]
       51 SETTABLEKS                       R16 R15 K7 ["versionedId"]
       53 GETTABLEKS                       R16 R13 K8 ["err"]
       55 SETTABLEKS                       R16 R15 K8 ["err"]
       57 SETTABLE                         R15 R8 R14
       58 FORGLOOP                         R9 2 ; [-13]
       60 CLOSEUPVALS                      R4
       61 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["filepath"]
        4 NAMECALL                         R0 R0 K1 ["GetFilesInDirAsync"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.8]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
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
       16 JUMPIFNOTEQKS                    R4 K2 [""] ; [+7]
       18 GETTABLEKS                       R4 R1 K3 ["error"]
       20 LOADK                            R5 K4 ["No reimport config found for selection"]
       21 CALL                             R4 1 0
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0
       24 LOADNIL                          R4
       25 GETUPVAL                         R5 1
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+15]
       28 GETIMPORT                        R5 K6 [pcall]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          REF R4
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          REF R3
       34 CALL                             R5 1 2
       35 JUMPIF                           R5 ; [+14]
       36 GETTABLEKS                       R7 R1 K3 ["error"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 0
       40 CLOSEUPVALS                      R3
       41 RETURN                           R0 0
       42 JUMP                             ; [+7]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R7 R3 K1 ["filepath"]
       46 NAMECALL                         R5 R5 K7 ["GetFilesInDirAsync"]
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K8 ["findMaps"]
       53 GETTABLEKS                       R6 R3 K1 ["filepath"]
       55 MOVE                             R7 R4
       56 CALL                             R5 2 1
       57 LOADN                            R6 0
       58 LOADN                            R7 0
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          REF R6
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R1
       63 LOADK                            R6 K9 [0.1]
       64 MULK                             R10 R7 K10 [0.8]
       65 ADD                              R9 R6 R10
       66 GETTABLEKS                       R10 R1 K11 ["progress"]
       68 MOVE                             R11 R9
       69 CALL                             R10 1 0
       70 DUPTABLE                         R9 K14 [{"creatorId", "creatorType"}]
       71 GETUPVAL                         R10 4
       72 NAMECALL                         R10 R10 K15 ["GetUserId"]
       74 CALL                             R10 1 1
       75 SETTABLEKS                       R10 R9 K12 ["creatorId"]
       77 GETIMPORT                        R10 K19 [Enum.AssetCreatorType.User]
       79 SETTABLEKS                       R10 R9 K13 ["creatorType"]
       81 GETTABLEKS                       R10 R3 K12 ["creatorId"]
       83 JUMPIFNOT                        R10 ; [+18]
       84 GETTABLEKS                       R10 R3 K13 ["creatorType"]
       86 JUMPIFNOT                        R10 ; [+15]
       87 GETTABLEKS                       R10 R3 K12 ["creatorId"]
       89 SETTABLEKS                       R10 R9 K12 ["creatorId"]
       91 GETTABLEKS                       R11 R3 K13 ["creatorType"]
       93 JUMPIFNOTEQKS                    R11 K20 ["group"] ; [+4]
       95 GETIMPORT                        R10 K22 [Enum.AssetCreatorType.Group]
       97 JUMP                             ; [+2]
       98 GETIMPORT                        R10 K19 [Enum.AssetCreatorType.User]
      100 SETTABLEKS                       R10 R9 K13 ["creatorType"]
      102 NEWTABLE                         R10 0 0
      104 GETUPVAL                         R11 5
      105 CALL                             R11 0 1
      106 JUMPIFNOT                        R11 ; [+17]
      107 MOVE                             R11 R5
      108 LOADNIL                          R12
      109 LOADNIL                          R13
      110 FORGPREP                         R11
      111 GETUPVAL                         R16 6
      112 GETTABLEKS                       R16 R16 K23 ["extractAssetId"]
      114 GETUPVAL                         R17 3
      115 GETTABLEKS                       R17 R17 K24 ["getMapUri"]
      117 MOVE                             R18 R0
      118 MOVE                             R19 R14
      119 CALL                             R17 2 -1
      120 CALL                             R16 -1 1
      121 SETTABLE                         R16 R10 R14
      122 FORGLOOP                         R11 1 ; [-12]
      124 GETUPVAL                         R11 7
      125 MOVE                             R12 R5
      126 MOVE                             R13 R9
      127 MOVE                             R14 R10
      128 NEWCLOSURE                       R15 P2
      129 CAPTURE                          REF R7
      130 CAPTURE                          REF R6
      131 CAPTURE                          VAL R1
      132 CALL                             R11 4 1
      133 LOADN                            R6 1
      134 MULK                             R13 R7 K10 [0.8]
      135 ADD                              R12 R6 R13
      136 GETTABLEKS                       R13 R1 K11 ["progress"]
      138 MOVE                             R14 R12
      139 CALL                             R13 1 0
      140 NEWTABLE                         R12 0 0
      142 NEWTABLE                         R13 0 0
      144 LOADB                            R14 1
      145 MOVE                             R15 R11
      146 LOADNIL                          R16
      147 LOADNIL                          R17
      148 FORGPREP                         R15
      149 GETTABLEKS                       R20 R19 K25 ["err"]
      151 JUMPIFEQKNIL                     R20 ; [+14]
      153 DUPTABLE                         R22 K28 [{"label", "message"}]
      154 SETTABLEKS                       R18 R22 K26 ["label"]
      156 GETTABLEKS                       R23 R19 K25 ["err"]
      158 SETTABLEKS                       R23 R22 K27 ["message"]
      160 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
      162 MOVE                             R21 R13
      163 GETIMPORT                        R20 K31 [table.insert]
      165 CALL                             R20 2 0
      166 GETTABLEKS                       R20 R19 K32 ["versionedId"]
      168 JUMPIFEQKNIL                     R20 ; [+16]
      170 LOADB                            R14 0
      171 DUPTABLE                         R20 K35 [{"assetId", "versionNumber"}]
      172 GETTABLEKS                       R21 R19 K32 ["versionedId"]
      174 GETTABLEKS                       R21 R21 K33 ["assetId"]
      176 SETTABLEKS                       R21 R20 K33 ["assetId"]
      178 GETTABLEKS                       R21 R19 K32 ["versionedId"]
      180 GETTABLEKS                       R21 R21 K34 ["versionNumber"]
      182 SETTABLEKS                       R21 R20 K34 ["versionNumber"]
      184 SETTABLE                         R20 R12 R18
      185 FORGLOOP                         R15 2 ; [-37]
      187 JUMPIFNOT                        R14 ; [+6]
      188 GETTABLEKS                       R15 R1 K3 ["error"]
      190 MOVE                             R16 R13
      191 CALL                             R15 1 0
      192 CLOSEUPVALS                      R3
      193 RETURN                           R0 0
      194 MOVE                             R15 R13
      195 LOADNIL                          R16
      196 LOADNIL                          R17
      197 FORGPREP                         R15
      198 GETTABLEKS                       R20 R1 K36 ["warning"]
      200 LOADK                            R21 K37 ["Failed to upload map '%*': %*"]
      201 GETTABLEKS                       R23 R19 K26 ["label"]
      203 GETTABLEKS                       R24 R19 K27 ["message"]
      205 NAMECALL                         R21 R21 K38 ["format"]
      207 CALL                             R21 3 1
      208 CALL                             R20 1 0
      209 FORGLOOP                         R15 2 ; [-12]
      211 GETUPVAL                         R15 8
      212 LOADK                            R17 K39 ["Reimport apply instance"]
      213 NAMECALL                         R15 R15 K40 ["TryBeginRecording"]
      215 CALL                             R15 2 1
      216 GETUPVAL                         R16 3
      217 GETTABLEKS                       R16 R16 K41 ["setMaps"]
      219 MOVE                             R17 R0
      220 MOVE                             R18 R12
      221 CALL                             R16 2 0
      222 JUMPIFNOTEQKNIL                  R2 ; [+7]
      224 GETUPVAL                         R16 0
      225 GETTABLEKS                       R16 R16 K42 ["newConfig"]
      227 MOVE                             R17 R3
      228 CALL                             R16 1 1
      229 MOVE                             R2 R16
      230 GETUPVAL                         R18 0
      231 GETTABLEKS                       R18 R18 K43 ["ATTRIBUTE_KEY"]
      233 MOVE                             R19 R2
      234 NAMECALL                         R16 R0 K44 ["SetAttribute"]
      236 CALL                             R16 3 0
      237 JUMPIFNOT                        R15 ; [+7]
      238 GETUPVAL                         R16 8
      239 MOVE                             R18 R15
      240 GETIMPORT                        R19 K47 [Enum.FinishRecordingOperation.Commit]
      242 NAMECALL                         R16 R16 K48 ["FinishRecording"]
      244 CALL                             R16 3 0
      245 GETIMPORT                        R16 K51 [task.delay]
      247 LOADK                            R17 K52 [0.3]
      248 NEWCLOSURE                       R18 P3
      249 CAPTURE                          VAL R1
      250 CALL                             R16 2 0
      251 CLOSEUPVALS                      R3
      252 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AssetUri"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Lib"]
       29 GETTABLEKS                       R4 R4 K7 ["External"]
       31 GETTABLEKS                       R4 R4 K11 ["ChangeHistoryService"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Lib"]
       38 GETTABLEKS                       R5 R5 K12 ["Reimport"]
       40 GETTABLEKS                       R5 R5 K13 ["MaterialUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Lib"]
       47 GETTABLEKS                       R6 R6 K12 ["Reimport"]
       49 GETTABLEKS                       R6 R6 K14 ["ReimportConfigs"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Lib"]
       56 GETTABLEKS                       R7 R7 K7 ["External"]
       58 GETTABLEKS                       R7 R7 K15 ["StudioService"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K16 ["Packages"]
       65 GETTABLEKS                       R8 R8 K17 ["Promise"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Lib"]
       72 GETTABLEKS                       R9 R9 K7 ["External"]
       74 GETTABLEKS                       R9 R9 K18 ["AssetAccess"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Lib"]
       81 GETTABLEKS                       R10 R10 K12 ["Reimport"]
       83 GETTABLEKS                       R10 R10 K19 ["UploadUtils"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K20 ["Flags"]
       90 GETTABLEKS                       R11 R11 K21 ["GetFFlagExpShareUploadedTextures"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K20 ["Flags"]
       97 GETTABLEKS                       R12 R12 K22 ["GetFFlagReimportFileWatcher"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K20 ["Flags"]
      104 GETTABLEKS                       R13 R13 K23 ["GetFFlagReimportVersionedImageUpload"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K20 ["Flags"]
      111 GETTABLEKS                       R14 R14 K24 ["GetFFlagReimportImageMissingFile"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETIMPORT                        R15 K1 [script]
      118 GETTABLEKS                       R15 R15 K25 ["Parent"]
      120 GETTABLEKS                       R15 R15 K26 ["Types"]
      122 CALL                             R14 1 1
      123 NEWTABLE                         R15 1 0
      125 DUPCLOSURE                       R16 K27 [PROTO_2]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R8
      132 DUPCLOSURE                       R17 K28 [PROTO_4]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R8
      140 DUPCLOSURE                       R18 K29 [PROTO_9]
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R3
      150 SETTABLEKS                       R18 R15 K30 ["reimport"]
      152 RETURN                           R15 1
