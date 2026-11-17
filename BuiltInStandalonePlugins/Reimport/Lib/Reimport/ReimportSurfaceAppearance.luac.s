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
       17 JUMPIF                           R3 ; [+3]
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+31]
       21 GETUPVAL                         R3 6
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R6 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K1 ["creatorId"]
       27 SETTABLEKS                       R7 R6 K1 ["creatorId"]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K2 ["creatorType"]
       32 SETTABLEKS                       R7 R6 K2 ["creatorType"]
       34 GETIMPORT                        R7 K9 [Enum.AssetType.Image]
       36 SETTABLEKS                       R7 R6 K5 ["targetType"]
       38 GETUPVAL                         R8 5
       39 CALL                             R8 0 1
       40 JUMPIFNOT                        R8 ; [+4]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["existingAssetId"]
       44 JUMPIF                           R7 ; [+1]
       45 LOADN                            R7 0
       46 NAMECALL                         R3 R3 K11 ["UploadVersionedAssetFromPathAsync"]
       48 CALL                             R3 4 2
       49 MOVE                             R1 R3
       50 MOVE                             R2 R4
       51 JUMP                             ; [+27]
       52 LOADNIL                          R3
       53 GETUPVAL                         R4 6
       54 GETUPVAL                         R6 2
       55 DUPTABLE                         R7 K6 [{["creatorId"], ["creatorType"], ["assetName"] = "Image", ["targetType"]}]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K1 ["creatorId"]
       59 SETTABLEKS                       R8 R7 K1 ["creatorId"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K2 ["creatorType"]
       64 SETTABLEKS                       R8 R7 K2 ["creatorType"]
       66 GETIMPORT                        R8 K9 [Enum.AssetType.Image]
       68 SETTABLEKS                       R8 R7 K5 ["targetType"]
       70 NAMECALL                         R4 R4 K12 ["UploadAssetFromPathAsync"]
       72 CALL                             R4 3 2
       73 MOVE                             R3 R4
       74 MOVE                             R2 R5
       75 DUPTABLE                         R4 K16 [{["assetId"], ["versionNumber"] = 1}]
       76 SETTABLEKS                       R3 R4 K13 ["assetId"]
       78 MOVE                             R1 R4
       79 GETUPVAL                         R3 0
       80 CALL                             R3 0 1
       81 JUMPIFNOT                        R3 ; [+4]
       82 JUMPIFNOT                        R0 ; [+3]
       83 GETTABLEKS                       R3 R0 K17 ["release"]
       85 CALL                             R3 0 0
       86 SETUPVAL                         R2 7
       87 GETUPVAL                         R3 8
       88 CALL                             R3 0 1
       89 JUMPIFNOT                        R3 ; [+7]
       90 NEWCLOSURE                       R4 P0
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          REF R1
       93 FASTPCALL                        pcall 1 ; [+2]
       94 GETIMPORT                        R3 K19 [pcall]
       96 CALL                             R3 1 0
       97 CLOSEUPVALS                      R1
       98 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          REF R2
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R3 K1 [pcall]
       15 CALL                             R3 1 2
       16 JUMPIF                           R3 ; [+4]
       17 LOADNIL                          R5
       18 MOVE                             R6 R4
       19 CLOSEUPVALS                      R2
       20 RETURN                           R5 2
       21 JUMPIFEQKNIL                     R2 ; [+5]
       23 LOADNIL                          R5
       24 MOVE                             R6 R2
       25 CLOSEUPVALS                      R2
       26 RETURN                           R5 2
       27 MOVE                             R5 R4
       28 LOADNIL                          R6
       29 CLOSEUPVALS                      R2
       30 RETURN                           R5 2

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
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          REF R5
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 FASTPCALL                        pcall 1 ; [+2]
       35 GETIMPORT                        R6 K5 [pcall]
       37 CALL                             R6 1 2
       38 JUMPIF                           R6 ; [+4]
       39 LOADNIL                          R2
       40 MOVE                             R3 R7
       41 CLOSEUPVALS                      R5
       42 JUMP                             ; [+9]
       43 JUMPIFEQKNIL                     R5 ; [+5]
       45 LOADNIL                          R2
       46 MOVE                             R3 R5
       47 CLOSEUPVALS                      R5
       48 JUMP                             ; [+3]
       49 MOVE                             R2 R7
       50 LOADNIL                          R3
       51 CLOSEUPVALS                      R5
       52 GETUPVAL                         R5 11
       53 ADDK                             R4 R5 K6 [1]
       54 SETUPVAL                         R4 11
       55 GETUPVAL                         R4 12
       56 JUMPIFNOT                        R4 ; [+6]
       57 GETUPVAL                         R4 12
       58 GETUPVAL                         R6 11
       59 GETUPVAL                         R8 13
       60 LENGTH                           R7 R8
       61 DIV                              R5 R6 R7
       62 CALL                             R4 1 0
       63 MOVE                             R4 R0
       64 DUPTABLE                         R5 K10 [{"kind", "versionedId", "err"}]
       65 GETUPVAL                         R6 3
       66 SETTABLEKS                       R6 R5 K7 ["kind"]
       68 SETTABLEKS                       R2 R5 K8 ["versionedId"]
       70 SETTABLEKS                       R3 R5 K9 ["err"]
       72 CALL                             R4 1 0
       73 RETURN                           R0 0

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
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          REF R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CALL                             R14 1 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R12 K7 [table.insert]
       60 CALL                             R12 -1 0
       61 FORGLOOP                         R7 2 ; [-25]
       63 GETUPVAL                         R7 3
       64 GETTABLEKS                       R7 R7 K8 ["all"]
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 NAMECALL                         R7 R7 K9 ["await"]
       70 CALL                             R7 1 2
       71 NEWTABLE                         R9 0 0
       73 MOVE                             R10 R8
       74 LOADNIL                          R11
       75 LOADNIL                          R12
       76 FORGPREP                         R10
       77 GETTABLEKS                       R15 R14 K10 ["kind"]
       79 DUPTABLE                         R16 K13 [{"versionedId", "err"}]
       80 GETTABLEKS                       R17 R14 K11 ["versionedId"]
       82 SETTABLEKS                       R17 R16 K11 ["versionedId"]
       84 GETTABLEKS                       R17 R14 K12 ["err"]
       86 SETTABLEKS                       R17 R16 K12 ["err"]
       88 SETTABLE                         R16 R9 R15
       89 FORGLOOP                         R10 2 ; [-13]
       91 LOADB                            R10 1
       92 MOVE                             R11 R9
       93 CLOSEUPVALS                      R5
       94 RETURN                           R10 2

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
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          REF R4
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          REF R3
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R5 K6 [pcall]
       32 CALL                             R5 1 2
       33 JUMPIF                           R5 ; [+6]
       34 GETTABLEKS                       R7 R1 K3 ["error"]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 0
       38 CLOSEUPVALS                      R3
       39 RETURN                           R0 0
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K7 ["findMaps"]
       43 GETTABLEKS                       R8 R3 K1 ["filepath"]
       45 MOVE                             R9 R4
       46 CALL                             R7 2 1
       47 LOADN                            R8 0
       48 LOADN                            R9 0
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          REF R8
       51 CAPTURE                          REF R9
       52 CAPTURE                          VAL R1
       53 LOADK                            R8 K8 [0.1]
       54 MULK                             R12 R9 K9 [0.8]
       55 ADD                              R11 R8 R12
       56 GETTABLEKS                       R12 R1 K10 ["progress"]
       58 MOVE                             R13 R11
       59 CALL                             R12 1 0
       60 DUPTABLE                         R11 K13 [{"creatorId", "creatorType"}]
       61 GETUPVAL                         R12 3
       62 NAMECALL                         R12 R12 K14 ["GetUserId"]
       64 CALL                             R12 1 1
       65 SETTABLEKS                       R12 R11 K11 ["creatorId"]
       67 GETIMPORT                        R12 K18 [Enum.AssetCreatorType.User]
       69 SETTABLEKS                       R12 R11 K12 ["creatorType"]
       71 GETTABLEKS                       R12 R3 K11 ["creatorId"]
       73 JUMPIFNOT                        R12 ; [+18]
       74 GETTABLEKS                       R12 R3 K12 ["creatorType"]
       76 JUMPIFNOT                        R12 ; [+15]
       77 GETTABLEKS                       R12 R3 K11 ["creatorId"]
       79 SETTABLEKS                       R12 R11 K11 ["creatorId"]
       81 GETTABLEKS                       R13 R3 K12 ["creatorType"]
       83 JUMPIFNOTEQKS                    R13 K19 ["group"] ; [+4]
       85 GETIMPORT                        R12 K21 [Enum.AssetCreatorType.Group]
       87 JUMP                             ; [+2]
       88 GETIMPORT                        R12 K18 [Enum.AssetCreatorType.User]
       90 SETTABLEKS                       R12 R11 K12 ["creatorType"]
       92 NEWTABLE                         R12 0 0
       94 GETUPVAL                         R13 4
       95 CALL                             R13 0 1
       96 JUMPIFNOT                        R13 ; [+17]
       97 MOVE                             R13 R7
       98 LOADNIL                          R14
       99 LOADNIL                          R15
      100 FORGPREP                         R13
      101 GETUPVAL                         R18 5
      102 GETTABLEKS                       R18 R18 K22 ["extractAssetId"]
      104 GETUPVAL                         R19 2
      105 GETTABLEKS                       R19 R19 K23 ["getMapUri"]
      107 MOVE                             R20 R0
      108 MOVE                             R21 R16
      109 CALL                             R19 2 -1
      110 CALL                             R18 -1 1
      111 SETTABLE                         R18 R12 R16
      112 FORGLOOP                         R13 1 ; [-12]
      114 GETUPVAL                         R13 6
      115 MOVE                             R14 R7
      116 MOVE                             R15 R11
      117 MOVE                             R16 R12
      118 NEWCLOSURE                       R17 P2
      119 CAPTURE                          REF R9
      120 CAPTURE                          REF R8
      121 CAPTURE                          VAL R1
      122 CALL                             R13 4 2
      123 JUMPIFNOT                        R13 ; [+7]
      124 FASTCALL1                        TYPE R14 ; [+3]
      125 MOVE                             R16 R14
      126 GETIMPORT                        R15 K25 [type]
      128 CALL                             R15 1 1
      129 JUMPIFNOTEQKS                    R15 K26 ["string"] ; [+7]
      131 GETTABLEKS                       R15 R1 K3 ["error"]
      133 MOVE                             R16 R14
      134 CALL                             R15 1 0
      135 CLOSEUPVALS                      R3
      136 RETURN                           R0 0
      137 LOADN                            R8 1
      138 MULK                             R16 R9 K9 [0.8]
      139 ADD                              R15 R8 R16
      140 GETTABLEKS                       R16 R1 K10 ["progress"]
      142 MOVE                             R17 R15
      143 CALL                             R16 1 0
      144 NEWTABLE                         R15 0 0
      146 NEWTABLE                         R16 0 0
      148 LOADB                            R17 1
      149 MOVE                             R18 R14
      150 LOADNIL                          R19
      151 LOADNIL                          R20
      152 FORGPREP                         R18
      153 GETTABLEKS                       R23 R22 K27 ["err"]
      155 JUMPIFEQKNIL                     R23 ; [+14]
      157 DUPTABLE                         R25 K30 [{"label", "message"}]
      158 SETTABLEKS                       R21 R25 K28 ["label"]
      160 GETTABLEKS                       R26 R22 K27 ["err"]
      162 SETTABLEKS                       R26 R25 K29 ["message"]
      164 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      166 MOVE                             R24 R16
      167 GETIMPORT                        R23 K33 [table.insert]
      169 CALL                             R23 2 0
      170 GETTABLEKS                       R23 R22 K34 ["versionedId"]
      172 JUMPIFEQKNIL                     R23 ; [+16]
      174 LOADB                            R17 0
      175 DUPTABLE                         R23 K37 [{"assetId", "versionNumber"}]
      176 GETTABLEKS                       R24 R22 K34 ["versionedId"]
      178 GETTABLEKS                       R24 R24 K35 ["assetId"]
      180 SETTABLEKS                       R24 R23 K35 ["assetId"]
      182 GETTABLEKS                       R24 R22 K34 ["versionedId"]
      184 GETTABLEKS                       R24 R24 K36 ["versionNumber"]
      186 SETTABLEKS                       R24 R23 K36 ["versionNumber"]
      188 SETTABLE                         R23 R15 R21
      189 FORGLOOP                         R18 2 ; [-37]
      191 JUMPIFNOT                        R17 ; [+6]
      192 GETTABLEKS                       R18 R1 K3 ["error"]
      194 MOVE                             R19 R16
      195 CALL                             R18 1 0
      196 CLOSEUPVALS                      R3
      197 RETURN                           R0 0
      198 MOVE                             R18 R16
      199 LOADNIL                          R19
      200 LOADNIL                          R20
      201 FORGPREP                         R18
      202 GETTABLEKS                       R23 R1 K38 ["warning"]
      204 LOADK                            R24 K39 ["Failed to upload map '%*': %*"]
      205 GETTABLEKS                       R26 R22 K28 ["label"]
      207 GETTABLEKS                       R27 R22 K29 ["message"]
      209 NAMECALL                         R24 R24 K40 ["format"]
      211 CALL                             R24 3 1
      212 CALL                             R23 1 0
      213 FORGLOOP                         R18 2 ; [-12]
      215 GETUPVAL                         R18 7
      216 LOADK                            R20 K41 ["Reimport apply instance"]
      217 NAMECALL                         R18 R18 K42 ["TryBeginRecording"]
      219 CALL                             R18 2 1
      220 GETUPVAL                         R19 2
      221 GETTABLEKS                       R19 R19 K43 ["setMaps"]
      223 MOVE                             R20 R0
      224 MOVE                             R21 R15
      225 CALL                             R19 2 0
      226 JUMPIFNOTEQKNIL                  R2 ; [+7]
      228 GETUPVAL                         R19 0
      229 GETTABLEKS                       R19 R19 K44 ["newConfig"]
      231 MOVE                             R20 R3
      232 CALL                             R19 1 1
      233 MOVE                             R2 R19
      234 GETUPVAL                         R21 0
      235 GETTABLEKS                       R21 R21 K45 ["ATTRIBUTE_KEY"]
      237 MOVE                             R22 R2
      238 NAMECALL                         R19 R0 K46 ["SetAttribute"]
      240 CALL                             R19 3 0
      241 JUMPIFNOT                        R18 ; [+7]
      242 GETUPVAL                         R19 7
      243 MOVE                             R21 R18
      244 GETIMPORT                        R22 K49 [Enum.FinishRecordingOperation.Commit]
      246 NAMECALL                         R19 R19 K50 ["FinishRecording"]
      248 CALL                             R19 3 0
      249 GETIMPORT                        R19 K53 [task.delay]
      251 LOADK                            R20 K54 [0.3]
      252 NEWCLOSURE                       R21 P3
      253 CAPTURE                          VAL R1
      254 CALL                             R19 2 0
      255 CLOSEUPVALS                      R3
      256 RETURN                           R0 0

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
      125 GETTABLEKS                       R16 R16 K26 ["GetFFlagNewUploadApiParity"]
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
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R8
      147 DUPCLOSURE                       R19 K30 [PROTO_4]
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R8
      158 DUPCLOSURE                       R20 K31 [PROTO_9]
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R20 R17 K32 ["reimport"]
      169 RETURN                           R17 1
