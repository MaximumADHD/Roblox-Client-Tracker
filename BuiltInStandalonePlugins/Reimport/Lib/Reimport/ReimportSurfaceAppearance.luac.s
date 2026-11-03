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
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+25]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K0 ["getAssetCreatorIdsAsync"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["values"]
       11 MOVE                             R7 R2
       12 CALL                             R6 1 -1
       13 CALL                             R5 -1 2
       14 JUMPIF                           R5 ; [+3]
       15 LOADB                            R7 0
       16 LOADK                            R8 K2 ["Failed to get asset creator IDs"]
       17 RETURN                           R7 2
       18 MOVE                             R7 R2
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 GETTABLE                         R12 R6 R11
       23 GETTABLEKS                       R13 R1 K3 ["creatorId"]
       25 JUMPIFNOTEQ                      R12 R13 ; [+2]
       27 SETTABLE                         R11 R4 R10
       28 FORGLOOP                         R7 2 ; [-7]
       30 LOADN                            R5 0
       31 NEWTABLE                         R6 0 0
       33 MOVE                             R7 R0
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 MOVE                             R13 R6
       38 GETUPVAL                         R14 3
       39 GETTABLEKS                       R14 R14 K4 ["new"]
       41 NEWCLOSURE                       R15 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R11
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          REF R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CALL                             R14 1 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R12 K7 [table.insert]
       59 CALL                             R12 -1 0
       60 FORGLOOP                         R7 2 ; [-24]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K8 ["all"]
       65 MOVE                             R8 R6
       66 CALL                             R7 1 1
       67 NAMECALL                         R7 R7 K9 ["await"]
       69 CALL                             R7 1 2
       70 NEWTABLE                         R9 0 0
       72 MOVE                             R10 R8
       73 LOADNIL                          R11
       74 LOADNIL                          R12
       75 FORGPREP                         R10
       76 GETTABLEKS                       R15 R14 K10 ["kind"]
       78 DUPTABLE                         R16 K13 [{"versionedId", "err"}]
       79 GETTABLEKS                       R17 R14 K11 ["versionedId"]
       81 SETTABLEKS                       R17 R16 K11 ["versionedId"]
       83 GETTABLEKS                       R17 R14 K12 ["err"]
       85 SETTABLEKS                       R17 R16 K12 ["err"]
       87 SETTABLE                         R16 R9 R15
       88 FORGLOOP                         R10 2 ; [-13]
       90 LOADB                            R10 1
       91 MOVE                             R11 R9
       92 CLOSEUPVALS                      R5
       93 RETURN                           R10 2

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
      132 CALL                             R11 4 2
      133 JUMPIFNOT                        R11 ; [+7]
      134 FASTCALL1                        TYPE R12 ; [+3]
      135 MOVE                             R14 R12
      136 GETIMPORT                        R13 K26 [type]
      138 CALL                             R13 1 1
      139 JUMPIFNOTEQKS                    R13 K27 ["string"] ; [+7]
      141 GETTABLEKS                       R13 R1 K3 ["error"]
      143 MOVE                             R14 R12
      144 CALL                             R13 1 0
      145 CLOSEUPVALS                      R3
      146 RETURN                           R0 0
      147 LOADN                            R6 1
      148 MULK                             R14 R7 K10 [0.8]
      149 ADD                              R13 R6 R14
      150 GETTABLEKS                       R14 R1 K11 ["progress"]
      152 MOVE                             R15 R13
      153 CALL                             R14 1 0
      154 NEWTABLE                         R13 0 0
      156 NEWTABLE                         R14 0 0
      158 LOADB                            R15 1
      159 MOVE                             R16 R12
      160 LOADNIL                          R17
      161 LOADNIL                          R18
      162 FORGPREP                         R16
      163 GETTABLEKS                       R21 R20 K28 ["err"]
      165 JUMPIFEQKNIL                     R21 ; [+14]
      167 DUPTABLE                         R23 K31 [{"label", "message"}]
      168 SETTABLEKS                       R19 R23 K29 ["label"]
      170 GETTABLEKS                       R24 R20 K28 ["err"]
      172 SETTABLEKS                       R24 R23 K30 ["message"]
      174 FASTCALL2                        TABLE_INSERT R14 R23 ; [+4]
      176 MOVE                             R22 R14
      177 GETIMPORT                        R21 K34 [table.insert]
      179 CALL                             R21 2 0
      180 GETTABLEKS                       R21 R20 K35 ["versionedId"]
      182 JUMPIFEQKNIL                     R21 ; [+16]
      184 LOADB                            R15 0
      185 DUPTABLE                         R21 K38 [{"assetId", "versionNumber"}]
      186 GETTABLEKS                       R22 R20 K35 ["versionedId"]
      188 GETTABLEKS                       R22 R22 K36 ["assetId"]
      190 SETTABLEKS                       R22 R21 K36 ["assetId"]
      192 GETTABLEKS                       R22 R20 K35 ["versionedId"]
      194 GETTABLEKS                       R22 R22 K37 ["versionNumber"]
      196 SETTABLEKS                       R22 R21 K37 ["versionNumber"]
      198 SETTABLE                         R21 R13 R19
      199 FORGLOOP                         R16 2 ; [-37]
      201 JUMPIFNOT                        R15 ; [+6]
      202 GETTABLEKS                       R16 R1 K3 ["error"]
      204 MOVE                             R17 R14
      205 CALL                             R16 1 0
      206 CLOSEUPVALS                      R3
      207 RETURN                           R0 0
      208 MOVE                             R16 R14
      209 LOADNIL                          R17
      210 LOADNIL                          R18
      211 FORGPREP                         R16
      212 GETTABLEKS                       R21 R1 K39 ["warning"]
      214 LOADK                            R22 K40 ["Failed to upload map '%*': %*"]
      215 GETTABLEKS                       R24 R20 K29 ["label"]
      217 GETTABLEKS                       R25 R20 K30 ["message"]
      219 NAMECALL                         R22 R22 K41 ["format"]
      221 CALL                             R22 3 1
      222 CALL                             R21 1 0
      223 FORGLOOP                         R16 2 ; [-12]
      225 GETUPVAL                         R16 8
      226 LOADK                            R18 K42 ["Reimport apply instance"]
      227 NAMECALL                         R16 R16 K43 ["TryBeginRecording"]
      229 CALL                             R16 2 1
      230 GETUPVAL                         R17 3
      231 GETTABLEKS                       R17 R17 K44 ["setMaps"]
      233 MOVE                             R18 R0
      234 MOVE                             R19 R13
      235 CALL                             R17 2 0
      236 JUMPIFNOTEQKNIL                  R2 ; [+7]
      238 GETUPVAL                         R17 0
      239 GETTABLEKS                       R17 R17 K45 ["newConfig"]
      241 MOVE                             R18 R3
      242 CALL                             R17 1 1
      243 MOVE                             R2 R17
      244 GETUPVAL                         R19 0
      245 GETTABLEKS                       R19 R19 K46 ["ATTRIBUTE_KEY"]
      247 MOVE                             R20 R2
      248 NAMECALL                         R17 R0 K47 ["SetAttribute"]
      250 CALL                             R17 3 0
      251 JUMPIFNOT                        R16 ; [+7]
      252 GETUPVAL                         R17 8
      253 MOVE                             R19 R16
      254 GETIMPORT                        R20 K50 [Enum.FinishRecordingOperation.Commit]
      256 NAMECALL                         R17 R17 K51 ["FinishRecording"]
      258 CALL                             R17 3 0
      259 GETIMPORT                        R17 K54 [task.delay]
      261 LOADK                            R18 K55 [0.3]
      262 NEWCLOSURE                       R19 P3
      263 CAPTURE                          VAL R1
      264 CALL                             R17 2 0
      265 CLOSEUPVALS                      R3
      266 RETURN                           R0 0

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
       88 GETTABLEKS                       R11 R0 K6 ["Lib"]
       90 GETTABLEKS                       R11 R11 K20 ["Networking"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K16 ["Packages"]
       97 GETTABLEKS                       R12 R12 K21 ["Dash"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K22 ["Flags"]
      104 GETTABLEKS                       R13 R13 K23 ["GetFFlagExpShareUploadedTextures"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K22 ["Flags"]
      111 GETTABLEKS                       R14 R14 K24 ["GetFFlagReimportFileWatcher"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K22 ["Flags"]
      118 GETTABLEKS                       R15 R15 K25 ["GetFFlagReimportVersionedImageUpload"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K22 ["Flags"]
      125 GETTABLEKS                       R16 R16 K26 ["GetFFlagReimportImageMissingFile"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETIMPORT                        R17 K1 [script]
      132 GETTABLEKS                       R17 R17 K27 ["Parent"]
      134 GETTABLEKS                       R17 R17 K28 ["Types"]
      136 CALL                             R16 1 1
      137 NEWTABLE                         R17 1 0
      139 DUPCLOSURE                       R18 K29 [PROTO_2]
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R8
      146 DUPCLOSURE                       R19 K30 [PROTO_4]
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R8
      156 DUPCLOSURE                       R20 K31 [PROTO_9]
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R20 R17 K32 ["reimport"]
      168 RETURN                           R17 1
