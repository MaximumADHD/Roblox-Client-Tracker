PROTO_0:
        0 LOADNIL                          R1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 JUMPIFNOTLT                      R3 R2 ; [+15]
        5 GETIMPORT                        R2 K2 [Instance.new]
        7 LOADK                            R3 K3 ["Folder"]
        8 CALL                             R2 1 1
        9 MOVE                             R3 R0
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 SETTABLEKS                       R2 R7 K4 ["Parent"]
       15 FORGLOOP                         R3 2 ; [-3]
       17 MOVE                             R1 R2
       18 RETURN                           R1 1
       19 GETTABLEN                        R1 R0 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Got false response from PostInsertAsset"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 LOADB                            R4 0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+14]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R1 R2 K5 ["computeTranslatedErrorMessage"]
       22 MOVE                             R2 R0
       23 GETUPVAL                         R3 5
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R4 6
       27 MOVE                             R5 R1
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R2 K4 ["dispatch"]
       31 CALL                             R2 -1 0
       32 JUMP                             ; [+13]
       33 MOVE                             R1 R0
       34 JUMPIFEQKNIL                     R0 ; [+3]
       36 JUMPIFNOTEQKS                    R0 K6 [""] ; [+2]
       38 LOADK                            R1 K7 ["Upload failed with unknown error"]
       39 GETUPVAL                         R2 1
       40 GETUPVAL                         R4 6
       41 MOVE                             R5 R1
       42 CALL                             R4 1 -1
       43 NAMECALL                         R2 R2 K4 ["dispatch"]
       45 CALL                             R2 -1 0
       46 GETUPVAL                         R2 7
       47 GETTABLEKS                       R1 R2 K8 ["incrementUploadAssetFailure"]
       49 GETUPVAL                         R2 8
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+20]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["copyOn"]
        7 JUMPIFNOT                        R2 ; [+14]
        8 DUPTABLE                         R2 K4 [{"url", "responseCode", "responseBody"}]
        9 GETTABLEKS                       R3 R0 K1 ["url"]
       11 SETTABLEKS                       R3 R2 K1 ["url"]
       13 GETTABLEKS                       R3 R0 K5 ["statusCode"]
       15 SETTABLEKS                       R3 R2 K2 ["responseCode"]
       17 SETTABLEKS                       R1 R2 K3 ["responseBody"]
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 NOT                              R2 R0
       23 JUMPIF                           R2 ; [+11]
       24 LOADB                            R2 1
       25 GETIMPORT                        R3 K7 [next]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 1
       29 JUMPIFEQKNIL                     R3 ; [+5]
       31 JUMPIFNOTEQKS                    R1 K8 [""] ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 JUMPIFNOT                        R2 ; [+54]
       36 GETUPVAL                         R4 4
       37 GETTABLEKS                       R3 R4 K9 ["shouldDebugWarnings"]
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETIMPORT                        R3 K11 [warn]
       43 LOADK                            R4 K12 ["Got false response from PostInsertAsset"]
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 5
       46 GETUPVAL                         R5 6
       47 LOADB                            R6 0
       48 CALL                             R5 1 -1
       49 NAMECALL                         R3 R3 K13 ["dispatch"]
       51 CALL                             R3 -1 0
       52 LOADNIL                          R3
       53 JUMPIFNOT                        R0 ; [+18]
       54 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       56 JUMPIFNOT                        R4 ; [+15]
       57 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       59 LOADK                            R6 K14 ["statusMessage"]
       60 NAMECALL                         R4 R4 K15 ["find"]
       62 CALL                             R4 2 1
       63 JUMPIFNOT                        R4 ; [+8]
       64 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       66 LOADK                            R6 K14 ["statusMessage"]
       67 NAMECALL                         R4 R4 K15 ["find"]
       69 CALL                             R4 2 1
       70 MOVE                             R3 R4
       71 JUMP                             ; [+5]
       72 JUMPIFEQKS                       R1 K8 [""] ; [+3]
       74 MOVE                             R3 R1
       75 JUMP                             ; [+1]
       76 LOADK                            R3 K16 ["Upload failed with unknown error"]
       77 GETUPVAL                         R4 5
       78 GETUPVAL                         R6 7
       79 MOVE                             R7 R3
       80 CALL                             R6 1 -1
       81 NAMECALL                         R4 R4 K13 ["dispatch"]
       83 CALL                             R4 -1 0
       84 GETUPVAL                         R5 8
       85 GETTABLEKS                       R4 R5 K17 ["incrementUploadAssetFailure"]
       87 GETUPVAL                         R5 9
       88 CALL                             R4 1 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R3 R0 K18 ["AssetId"]
       92 SETUPVAL                         R3 10
       93 GETUPVAL                         R3 5
       94 GETUPVAL                         R5 11
       95 GETUPVAL                         R6 10
       96 CALL                             R5 1 -1
       97 NAMECALL                         R3 R3 K13 ["dispatch"]
       99 CALL                             R3 -1 0
      100 GETUPVAL                         R3 12
      101 CALL                             R3 0 1
      102 JUMPIFNOT                        R3 ; [+3]
      103 GETUPVAL                         R3 13
      104 GETUPVAL                         R4 10
      105 CALL                             R3 1 0
      106 GETUPVAL                         R4 8
      107 GETTABLEKS                       R3 R4 K19 ["incrementUploadAssetSuccess"]
      109 GETUPVAL                         R4 9
      110 CALL                             R3 1 0
      111 GETUPVAL                         R4 2
      112 GETTABLEKS                       R3 R4 K20 ["saleStatus"]
      114 GETUPVAL                         R4 14
      115 JUMPIFNOT                        R4 ; [+12]
      116 GETUPVAL                         R4 2
      117 GETUPVAL                         R5 10
      118 SETTABLEKS                       R5 R4 K21 ["assetId"]
      120 GETUPVAL                         R4 5
      121 GETUPVAL                         R6 15
      122 GETUPVAL                         R7 2
      123 CALL                             R6 1 -1
      124 NAMECALL                         R4 R4 K13 ["dispatch"]
      126 CALL                             R4 -1 0
      127 RETURN                           R0 0
      128 JUMPIF                           R3 ; [+8]
      129 GETUPVAL                         R5 2
      130 GETTABLEKS                       R4 R5 K22 ["iconFile"]
      132 JUMPIF                           R4 ; [+4]
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R4 R5 K23 ["assetMediaUpdateData"]
      136 JUMPIFNOT                        R4 ; [+12]
      137 GETUPVAL                         R4 2
      138 GETUPVAL                         R5 10
      139 SETTABLEKS                       R5 R4 K21 ["assetId"]
      141 GETUPVAL                         R4 5
      142 GETUPVAL                         R6 15
      143 GETUPVAL                         R7 2
      144 CALL                             R6 1 -1
      145 NAMECALL                         R4 R4 K13 ["dispatch"]
      147 CALL                             R4 -1 0
      148 RETURN                           R0 0
      149 GETUPVAL                         R4 5
      150 GETUPVAL                         R6 16
      151 GETUPVAL                         R9 17
      152 GETTABLEKS                       R8 R9 K24 ["SCREENS"]
      154 GETTABLEKS                       R7 R8 K25 ["UPLOADING_ASSET"]
      156 CALL                             R6 1 -1
      157 NAMECALL                         R4 R4 K13 ["dispatch"]
      159 CALL                             R4 -1 0
      160 GETUPVAL                         R4 5
      161 GETUPVAL                         R6 6
      162 LOADB                            R7 1
      163 CALL                             R6 1 -1
      164 NAMECALL                         R4 R4 K13 ["dispatch"]
      166 CALL                             R4 -1 0
      167 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: SerializeInstances failed"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R5 K5 ["UPLOAD_ASSET_RESULT"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 4
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R5 R0
       24 GETIMPORT                        R4 K8 [tostring]
       26 CALL                             R4 1 1
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R1 K6 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 1
       32 GETUPVAL                         R3 5
       33 LOADB                            R4 0
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R1 K6 ["dispatch"]
       37 CALL                             R1 -1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K3 [Enum.AssetCreatorType.User]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["groupId"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R4 1
       12 JUMPIFNOT                        R4 ; [+4]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["description"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R5 1
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["name"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 JUMPIFEQKNIL                     R2 ; [+7]
       27 LOADN                            R5 0
       28 JUMPIFNOTLT                      R5 R2 ; [+4]
       30 MOVE                             R0 R2
       31 GETIMPORT                        R1 K8 [Enum.AssetCreatorType.Group]
       33 JUMPIFEQKNIL                     R3 ; [+3]
       35 JUMPIFNOTEQKS                    R3 K9 [""] ; [+2]
       37 MOVE                             R3 R4
       38 GETIMPORT                        R5 K11 [game]
       40 LOADK                            R7 K12 ["PublishService"]
       41 NAMECALL                         R5 R5 K13 ["GetService"]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R6 R7 K14 ["assetTypeEnum"]
       47 GETIMPORT                        R7 K17 [Enum.AssetType.Model]
       49 JUMPIFNOTEQ                      R6 R7 ; [+43]
       51 DUPTABLE                         R6 K26 [{"AdditionalParameters", "AssetType", "AssetName", "AssetId", "ContentType", "CreatorId", "CreatorType", "Description", "Token"}]
       52 DUPTABLE                         R7 K28 [{"PublishAsPackage"}]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K27 ["PublishAsPackage"]
       56 SETTABLEKS                       R7 R6 K18 ["AdditionalParameters"]
       58 GETUPVAL                         R7 2
       59 SETTABLEKS                       R7 R6 K15 ["AssetType"]
       61 SETTABLEKS                       R4 R6 K19 ["AssetName"]
       63 LOADN                            R7 0
       64 SETTABLEKS                       R7 R6 K20 ["AssetId"]
       66 LOADK                            R7 K29 ["model/x-rbxm"]
       67 SETTABLEKS                       R7 R6 K21 ["ContentType"]
       69 SETTABLEKS                       R0 R6 K22 ["CreatorId"]
       71 SETTABLEKS                       R1 R6 K23 ["CreatorType"]
       73 SETTABLEKS                       R3 R6 K24 ["Description"]
       75 LOADK                            R7 K9 [""]
       76 SETTABLEKS                       R7 R6 K25 ["Token"]
       78 GETUPVAL                         R7 3
       79 CALL                             R7 0 1
       80 JUMPIFNOT                        R7 ; [+6]
       81 GETUPVAL                         R9 4
       82 MOVE                             R10 R6
       83 NAMECALL                         R7 R5 K30 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       85 CALL                             R7 3 -1
       86 RETURN                           R7 -1
       87 GETUPVAL                         R9 4
       88 MOVE                             R10 R6
       89 NAMECALL                         R7 R5 K31 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       91 CALL                             R7 3 -1
       92 RETURN                           R7 -1
       93 GETUPVAL                         R8 4
       94 MOVE                             R9 R1
       95 MOVE                             R10 R0
       96 GETUPVAL                         R11 2
       97 LOADN                            R12 0
       98 MOVE                             R13 R4
       99 MOVE                             R14 R3
      100 LOADK                            R15 K9 [""]
      101 LOADK                            R16 K29 ["model/x-rbxm"]
      102 LOADN                            R17 0
      103 NAMECALL                         R6 R5 K32 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
      105 CALL                             R6 11 -1
      106 RETURN                           R6 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 2
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 [""]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 5
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R6 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["assetTypeEnum"]
       13 GETTABLEKS                       R2 R3 K4 ["Name"]
       15 LOADNIL                          R3
       16 GETUPVAL                         R5 3
       17 JUMPIF                           R5 ; [+2]
       18 GETUPVAL                         R5 4
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K5 ["isMarketplaceModelsAsPackagesEnabled"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 JUMPIFNOT                        R4 ; [+13]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K6 ["sourceInstances"]
       30 JUMPIFEQKNIL                     R6 ; [+9]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K7 ["isPackagePublishAllowed"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K6 ["sourceInstances"]
       38 CALL                             R6 1 1
       39 MOVE                             R5 R6
       40 JUMPIFNOT                        R5 ; [+4]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K8 ["copyOn"]
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K10 ["packageOn"]
       48 ORK                              R6 R7 K9 [False]
       49 DUPTABLE                         R7 K18 [{"Name", "AssetType", "Description", "IsPackage", "PublishToMarketplace", "AllowComments", "GroupId", "OrigInstance"}]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R8 R9 K19 ["name"]
       53 SETTABLEKS                       R8 R7 K4 ["Name"]
       55 SETTABLEKS                       R2 R7 K11 ["AssetType"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R8 R9 K20 ["description"]
       60 SETTABLEKS                       R8 R7 K12 ["Description"]
       62 SETTABLEKS                       R6 R7 K13 ["IsPackage"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R8 R9 K8 ["copyOn"]
       67 SETTABLEKS                       R8 R7 K14 ["PublishToMarketplace"]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R9 R10 K21 ["allowComments"]
       72 ORK                              R8 R9 K9 [False]
       73 SETTABLEKS                       R8 R7 K15 ["AllowComments"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R8 R9 K22 ["groupId"]
       78 SETTABLEKS                       R8 R7 K16 ["GroupId"]
       80 GETUPVAL                         R10 2
       81 GETTABLEKS                       R9 R10 K6 ["sourceInstances"]
       83 JUMPIFEQKNIL                     R9 ; [+6]
       85 GETUPVAL                         R10 2
       86 GETTABLEKS                       R9 R10 K6 ["sourceInstances"]
       88 GETTABLEN                        R8 R9 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R8
       91 SETTABLEKS                       R8 R7 K17 ["OrigInstance"]
       93 NEWCLOSURE                       R8 P0
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          UPVAL U11
      101 CAPTURE                          UPVAL U12
      102 CAPTURE                          VAL R2
      103 NEWCLOSURE                       R9 P1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          REF R5
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U7
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          REF R3
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U15
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          UPVAL U17
      119 CAPTURE                          UPVAL U18
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          UPVAL U1
      122 NEWCLOSURE                       R10 P2
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U1
      127 CAPTURE                          UPVAL U11
      128 CAPTURE                          UPVAL U7
      129 GETUPVAL                         R11 19
      130 GETUPVAL                         R13 2
      131 GETTABLEKS                       R12 R13 K23 ["instances"]
      133 GETTABLEKS                       R13 R1 K24 ["StudioAssetService"]
      135 CALL                             R11 2 1
      136 NEWCLOSURE                       R13 P3
      137 CAPTURE                          UPVAL U20
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R8
      143 MOVE                             R14 R10
      144 NAMECALL                         R11 R11 K25 ["andThen"]
      146 CALL                             R11 3 0
      147 CLOSEUPVALS                      R3
      148 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["AssetConfigUtil"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["DebugFlags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["AssetConfigConstants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R1 K10 ["Analytics"]
       34 GETTABLEKS                       R6 R7 K10 ["Analytics"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R10 R0 K11 ["Packages"]
       41 GETTABLEKS                       R9 R10 K12 ["Framework"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R7 R8 K4 ["Util"]
       46 GETTABLEKS                       R6 R7 K13 ["sendResultToKibana"]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R1 K14 ["SerializeInstances"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K15 ["getUserId"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R10 R0 K3 ["Src"]
       60 GETTABLEKS                       R9 R10 K16 ["Actions"]
       62 GETIMPORT                        R10 K6 [require]
       64 GETTABLEKS                       R11 R9 K17 ["NetworkError"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R9 K18 ["SetCurrentScreen"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R13 R9 K19 ["UploadResult"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R9 K20 ["SetAssetId"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R9 K21 ["SetIsPackage"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R19 R0 K3 ["Src"]
       91 GETTABLEKS                       R18 R19 K22 ["Networking"]
       93 GETTABLEKS                       R17 R18 K23 ["Requests"]
       95 GETTABLEKS                       R16 R17 K24 ["TrySaveSalesThumbnailAssetMediaRequest"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R19 R0 K3 ["Src"]
      102 GETTABLEKS                       R18 R19 K25 ["Types"]
      104 GETTABLEKS                       R17 R18 K26 ["PublishInfoType"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R20 R0 K3 ["Src"]
      111 GETTABLEKS                       R19 R20 K25 ["Types"]
      113 GETTABLEKS                       R18 R19 K27 ["AssetUploadAPIPublishInfo"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K29 [game]
      118 LOADK                            R20 K30 ["DebugAssetConfigNetworkError"]
      119 NAMECALL                         R18 R18 K31 ["GetFastFlag"]
      121 CALL                             R18 2 1
      122 GETIMPORT                        R19 K29 [game]
      124 LOADK                            R21 K32 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
      125 NAMECALL                         R19 R19 K31 ["GetFastFlag"]
      127 CALL                             R19 2 1
      128 GETIMPORT                        R20 K29 [game]
      130 LOADK                            R22 K33 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
      131 NAMECALL                         R20 R20 K31 ["GetFastFlag"]
      133 CALL                             R20 2 1
      134 GETIMPORT                        R21 K6 [require]
      136 GETTABLEKS                       R23 R1 K34 ["SharedFlags"]
      138 GETTABLEKS                       R22 R23 K35 ["getFFlagToolboxTranslateUploadError"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K6 [require]
      143 GETTABLEKS                       R24 R1 K34 ["SharedFlags"]
      145 GETTABLEKS                       R23 R24 K36 ["getFFlagAssetConfigReportNewAssetId"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K6 [require]
      150 GETTABLEKS                       R24 R1 K37 ["reportUploadedAssetId"]
      152 CALL                             R23 1 1
      153 MOVE                             R25 R21
      154 CALL                             R25 0 1
      155 JUMPIFNOT                        R25 ; [+6]
      156 GETIMPORT                        R24 K6 [require]
      158 GETTABLEKS                       R25 R1 K38 ["AssetUploadUtil"]
      160 CALL                             R24 1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R24
      163 DUPCLOSURE                       R25 K39 [PROTO_0]
      164 DUPCLOSURE                       R26 K40 [PROTO_7]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R8
      184 RETURN                           R26 1
