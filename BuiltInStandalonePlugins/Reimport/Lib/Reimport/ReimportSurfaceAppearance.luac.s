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
       17 JUMPIFNOT                        R3 ; [+38]
       18 GETUPVAL                         R3 5
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       21 GETUPVAL                         R8 6
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+4]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K1 ["creatorId"]
       27 JUMP                             ; [+1]
       28 GETUPVAL                         R7 7
       29 SETTABLEKS                       R7 R6 K1 ["creatorId"]
       31 GETUPVAL                         R8 6
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+4]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R7 R7 K2 ["creatorType"]
       37 JUMP                             ; [+2]
       38 GETIMPORT                        R7 K10 [Enum.AssetCreatorType.User]
       40 SETTABLEKS                       R7 R6 K2 ["creatorType"]
       42 GETIMPORT                        R7 K12 [Enum.AssetType.Image]
       44 SETTABLEKS                       R7 R6 K5 ["targetType"]
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R8 R8 K14 ["existingAssetId"]
       49 ORK                              R7 R8 K13 [0]
       50 NAMECALL                         R3 R3 K15 ["UploadVersionedAssetFromPathAsync"]
       52 CALL                             R3 4 2
       53 MOVE                             R1 R3
       54 MOVE                             R2 R4
       55 JUMP                             ; [+38]
       56 LOADNIL                          R3
       57 GETUPVAL                         R4 5
       58 GETUPVAL                         R6 2
       59 DUPTABLE                         R7 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       60 GETUPVAL                         R9 6
       61 CALL                             R9 0 1
       62 JUMPIFNOT                        R9 ; [+4]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K1 ["creatorId"]
       66 JUMP                             ; [+1]
       67 GETUPVAL                         R8 7
       68 SETTABLEKS                       R8 R7 K1 ["creatorId"]
       70 GETUPVAL                         R9 6
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+4]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K2 ["creatorType"]
       76 JUMP                             ; [+2]
       77 GETIMPORT                        R8 K10 [Enum.AssetCreatorType.User]
       79 SETTABLEKS                       R8 R7 K2 ["creatorType"]
       81 GETIMPORT                        R8 K12 [Enum.AssetType.Image]
       83 SETTABLEKS                       R8 R7 K5 ["targetType"]
       85 NAMECALL                         R4 R4 K16 ["UploadAssetFromPathAsync"]
       87 CALL                             R4 3 2
       88 MOVE                             R3 R4
       89 MOVE                             R2 R5
       90 DUPTABLE                         R4 K20 [{["assetId"], ["versionNumber"] = 1}]
       91 SETTABLEKS                       R3 R4 K17 ["assetId"]
       93 MOVE                             R1 R4
       94 GETUPVAL                         R3 0
       95 CALL                             R3 0 1
       96 JUMPIFNOT                        R3 ; [+4]
       97 JUMPIFNOT                        R0 ; [+3]
       98 GETTABLEKS                       R3 R0 K21 ["release"]
      100 CALL                             R3 0 0
      101 SETUPVAL                         R2 8
      102 GETUPVAL                         R3 9
      103 CALL                             R3 0 1
      104 JUMPIFNOT                        R3 ; [+6]
      105 GETIMPORT                        R3 K23 [pcall]
      107 NEWCLOSURE                       R4 P0
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          REF R1
      110 CALL                             R3 1 0
      111 CLOSEUPVALS                      R1
      112 RETURN                           R1 1

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
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R2
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CALL                             R4 1 2
       20 JUMPIF                           R4 ; [+4]
       21 LOADNIL                          R6
       22 MOVE                             R7 R5
       23 CLOSEUPVALS                      R3
       24 RETURN                           R6 2
       25 JUMPIFEQKNIL                     R3 ; [+5]
       27 LOADNIL                          R6
       28 MOVE                             R7 R3
       29 CLOSEUPVALS                      R3
       30 RETURN                           R6 2
       31 MOVE                             R6 R5
       32 LOADNIL                          R7
       33 CLOSEUPVALS                      R3
       34 RETURN                           R6 2

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
       22 GETUPVAL                         R5 5
       23 NAMECALL                         R5 R5 K4 ["GetUserId"]
       25 CALL                             R5 1 1
       26 LOADNIL                          R6
       27 GETIMPORT                        R7 K6 [pcall]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          VAL R5
       38 CAPTURE                          REF R6
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          UPVAL U11
       41 CALL                             R7 1 2
       42 JUMPIF                           R7 ; [+4]
       43 LOADNIL                          R2
       44 MOVE                             R3 R8
       45 CLOSEUPVALS                      R6
       46 JUMP                             ; [+9]
       47 JUMPIFEQKNIL                     R6 ; [+5]
       49 LOADNIL                          R2
       50 MOVE                             R3 R6
       51 CLOSEUPVALS                      R6
       52 JUMP                             ; [+3]
       53 MOVE                             R2 R8
       54 LOADNIL                          R3
       55 CLOSEUPVALS                      R6
       56 GETUPVAL                         R5 12
       57 ADDK                             R4 R5 K7 [1]
       58 SETUPVAL                         R4 12
       59 GETUPVAL                         R4 13
       60 JUMPIFNOT                        R4 ; [+6]
       61 GETUPVAL                         R4 13
       62 GETUPVAL                         R6 12
       63 GETUPVAL                         R8 14
       64 LENGTH                           R7 R8
       65 DIV                              R5 R6 R7
       66 CALL                             R4 1 0
       67 MOVE                             R4 R0
       68 DUPTABLE                         R5 K11 [{"kind", "versionedId", "err"}]
       69 GETUPVAL                         R6 3
       70 SETTABLEKS                       R6 R5 K8 ["kind"]
       72 SETTABLEKS                       R2 R5 K9 ["versionedId"]
       74 SETTABLEKS                       R3 R5 K10 ["err"]
       76 CALL                             R4 1 0
       77 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CALL                             R13 1 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R11 K3 [table.insert]
       31 CALL                             R11 -1 0
       32 FORGLOOP                         R6 2 ; [-26]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K4 ["all"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 1
       39 NAMECALL                         R6 R6 K5 ["await"]
       41 CALL                             R6 1 2
       42 NEWTABLE                         R8 0 0
       44 MOVE                             R9 R7
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 FORGPREP                         R9
       48 GETTABLEKS                       R14 R13 K6 ["kind"]
       50 DUPTABLE                         R15 K9 [{"versionedId", "err"}]
       51 GETTABLEKS                       R16 R13 K7 ["versionedId"]
       53 SETTABLEKS                       R16 R15 K7 ["versionedId"]
       55 GETTABLEKS                       R16 R13 K8 ["err"]
       57 SETTABLEKS                       R16 R15 K8 ["err"]
       59 SETTABLE                         R15 R8 R14
       60 FORGLOOP                         R9 2 ; [-13]
       62 CLOSEUPVALS                      R4
       63 RETURN                           R8 1

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
       81 GETUPVAL                         R10 5
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+21]
       84 GETTABLEKS                       R10 R3 K12 ["creatorId"]
       86 JUMPIFNOT                        R10 ; [+18]
       87 GETTABLEKS                       R10 R3 K13 ["creatorType"]
       89 JUMPIFNOT                        R10 ; [+15]
       90 GETTABLEKS                       R10 R3 K12 ["creatorId"]
       92 SETTABLEKS                       R10 R9 K12 ["creatorId"]
       94 GETTABLEKS                       R11 R3 K13 ["creatorType"]
       96 JUMPIFNOTEQKS                    R11 K20 ["group"] ; [+4]
       98 GETIMPORT                        R10 K22 [Enum.AssetCreatorType.Group]
      100 JUMP                             ; [+2]
      101 GETIMPORT                        R10 K19 [Enum.AssetCreatorType.User]
      103 SETTABLEKS                       R10 R9 K13 ["creatorType"]
      105 NEWTABLE                         R10 0 0
      107 GETUPVAL                         R11 6
      108 CALL                             R11 0 1
      109 JUMPIFNOT                        R11 ; [+17]
      110 MOVE                             R11 R5
      111 LOADNIL                          R12
      112 LOADNIL                          R13
      113 FORGPREP                         R11
      114 GETUPVAL                         R16 7
      115 GETTABLEKS                       R16 R16 K23 ["extractAssetId"]
      117 GETUPVAL                         R17 3
      118 GETTABLEKS                       R17 R17 K24 ["getMapUri"]
      120 MOVE                             R18 R0
      121 MOVE                             R19 R14
      122 CALL                             R17 2 -1
      123 CALL                             R16 -1 1
      124 SETTABLE                         R16 R10 R14
      125 FORGLOOP                         R11 1 ; [-12]
      127 GETUPVAL                         R11 8
      128 MOVE                             R12 R5
      129 MOVE                             R13 R9
      130 MOVE                             R14 R10
      131 NEWCLOSURE                       R15 P2
      132 CAPTURE                          REF R7
      133 CAPTURE                          REF R6
      134 CAPTURE                          VAL R1
      135 CALL                             R11 4 1
      136 LOADN                            R6 1
      137 MULK                             R13 R7 K10 [0.8]
      138 ADD                              R12 R6 R13
      139 GETTABLEKS                       R13 R1 K11 ["progress"]
      141 MOVE                             R14 R12
      142 CALL                             R13 1 0
      143 NEWTABLE                         R12 0 0
      145 NEWTABLE                         R13 0 0
      147 LOADB                            R14 1
      148 MOVE                             R15 R11
      149 LOADNIL                          R16
      150 LOADNIL                          R17
      151 FORGPREP                         R15
      152 GETTABLEKS                       R20 R19 K25 ["err"]
      154 JUMPIFEQKNIL                     R20 ; [+14]
      156 DUPTABLE                         R22 K28 [{"label", "message"}]
      157 SETTABLEKS                       R18 R22 K26 ["label"]
      159 GETTABLEKS                       R23 R19 K25 ["err"]
      161 SETTABLEKS                       R23 R22 K27 ["message"]
      163 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
      165 MOVE                             R21 R13
      166 GETIMPORT                        R20 K31 [table.insert]
      168 CALL                             R20 2 0
      169 GETTABLEKS                       R20 R19 K32 ["versionedId"]
      171 JUMPIFEQKNIL                     R20 ; [+16]
      173 LOADB                            R14 0
      174 DUPTABLE                         R20 K35 [{"assetId", "versionNumber"}]
      175 GETTABLEKS                       R21 R19 K32 ["versionedId"]
      177 GETTABLEKS                       R21 R21 K33 ["assetId"]
      179 SETTABLEKS                       R21 R20 K33 ["assetId"]
      181 GETTABLEKS                       R21 R19 K32 ["versionedId"]
      183 GETTABLEKS                       R21 R21 K34 ["versionNumber"]
      185 SETTABLEKS                       R21 R20 K34 ["versionNumber"]
      187 SETTABLE                         R20 R12 R18
      188 FORGLOOP                         R15 2 ; [-37]
      190 JUMPIFNOT                        R14 ; [+6]
      191 GETTABLEKS                       R15 R1 K3 ["error"]
      193 MOVE                             R16 R13
      194 CALL                             R15 1 0
      195 CLOSEUPVALS                      R3
      196 RETURN                           R0 0
      197 MOVE                             R15 R13
      198 LOADNIL                          R16
      199 LOADNIL                          R17
      200 FORGPREP                         R15
      201 GETTABLEKS                       R20 R1 K36 ["warning"]
      203 LOADK                            R21 K37 ["Failed to upload map '%*': %*"]
      204 GETTABLEKS                       R23 R19 K26 ["label"]
      206 GETTABLEKS                       R24 R19 K27 ["message"]
      208 NAMECALL                         R21 R21 K38 ["format"]
      210 CALL                             R21 3 1
      211 CALL                             R20 1 0
      212 FORGLOOP                         R15 2 ; [-12]
      214 GETUPVAL                         R15 9
      215 LOADK                            R17 K39 ["Reimport apply instance"]
      216 NAMECALL                         R15 R15 K40 ["TryBeginRecording"]
      218 CALL                             R15 2 1
      219 GETUPVAL                         R16 3
      220 GETTABLEKS                       R16 R16 K41 ["setMaps"]
      222 MOVE                             R17 R0
      223 MOVE                             R18 R12
      224 CALL                             R16 2 0
      225 JUMPIFNOTEQKNIL                  R2 ; [+7]
      227 GETUPVAL                         R16 0
      228 GETTABLEKS                       R16 R16 K42 ["newConfig"]
      230 MOVE                             R17 R3
      231 CALL                             R16 1 1
      232 MOVE                             R2 R16
      233 GETUPVAL                         R18 0
      234 GETTABLEKS                       R18 R18 K43 ["ATTRIBUTE_KEY"]
      236 MOVE                             R19 R2
      237 NAMECALL                         R16 R0 K44 ["SetAttribute"]
      239 CALL                             R16 3 0
      240 JUMPIFNOT                        R15 ; [+7]
      241 GETUPVAL                         R16 9
      242 MOVE                             R18 R15
      243 GETIMPORT                        R19 K47 [Enum.FinishRecordingOperation.Commit]
      245 NAMECALL                         R16 R16 K48 ["FinishRecording"]
      247 CALL                             R16 3 0
      248 GETIMPORT                        R16 K51 [task.delay]
      250 LOADK                            R17 K52 [0.3]
      251 NEWCLOSURE                       R18 P3
      252 CAPTURE                          VAL R1
      253 CALL                             R16 2 0
      254 CLOSEUPVALS                      R3
      255 RETURN                           R0 0

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
       90 GETTABLEKS                       R11 R11 K21 ["GetFFlagEnableGroupUpload"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K20 ["Flags"]
       97 GETTABLEKS                       R12 R12 K22 ["GetFFlagExpShareUploadedTextures"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K20 ["Flags"]
      104 GETTABLEKS                       R13 R13 K23 ["GetFFlagReimportFileWatcher"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K20 ["Flags"]
      111 GETTABLEKS                       R14 R14 K24 ["GetFFlagReimportVersionedImageUpload"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K20 ["Flags"]
      118 GETTABLEKS                       R15 R15 K25 ["GetFFlagReimportImageMissingFile"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETIMPORT                        R16 K1 [script]
      125 GETTABLEKS                       R16 R16 K26 ["Parent"]
      127 GETTABLEKS                       R16 R16 K27 ["Types"]
      129 CALL                             R15 1 1
      130 NEWTABLE                         R16 1 0
      132 DUPCLOSURE                       R17 K28 [PROTO_2]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R8
      141 DUPCLOSURE                       R18 K29 [PROTO_4]
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R8
      151 DUPCLOSURE                       R19 K30 [PROTO_9]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R3
      162 SETTABLEKS                       R19 R16 K31 ["reimport"]
      164 RETURN                           R16 1
