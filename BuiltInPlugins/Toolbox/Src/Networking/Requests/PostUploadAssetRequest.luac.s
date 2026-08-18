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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
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
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K5 ["computeTranslatedErrorMessage"]
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
       46 GETUPVAL                         R1 7
       47 GETTABLEKS                       R1 R1 K8 ["incrementUploadAssetFailure"]
       49 GETUPVAL                         R2 8
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+20]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["copyOn"]
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
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K9 ["shouldDebugWarnings"]
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
       84 GETUPVAL                         R4 8
       85 GETTABLEKS                       R4 R4 K17 ["incrementUploadAssetFailure"]
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
      102 JUMPIFNOT                        R3 ; [+15]
      103 GETUPVAL                         R3 13
      104 GETTABLEKS                       R3 R3 K19 ["hasNonEmptyDependencyIssues"]
      106 GETTABLEKS                       R4 R0 K20 ["NonBlockingDependencyIssues"]
      108 CALL                             R3 1 1
      109 JUMPIFNOT                        R3 ; [+8]
      110 GETUPVAL                         R3 5
      111 GETUPVAL                         R5 14
      112 GETTABLEKS                       R6 R0 K20 ["NonBlockingDependencyIssues"]
      114 CALL                             R5 1 -1
      115 NAMECALL                         R3 R3 K13 ["dispatch"]
      117 CALL                             R3 -1 0
      118 GETUPVAL                         R3 15
      119 GETUPVAL                         R4 10
      120 CALL                             R3 1 0
      121 GETUPVAL                         R3 8
      122 GETTABLEKS                       R3 R3 K21 ["incrementUploadAssetSuccess"]
      124 GETUPVAL                         R4 9
      125 CALL                             R3 1 0
      126 GETUPVAL                         R3 2
      127 GETTABLEKS                       R3 R3 K22 ["saleStatus"]
      129 GETUPVAL                         R4 16
      130 JUMPIFNOT                        R4 ; [+12]
      131 GETUPVAL                         R4 2
      132 GETUPVAL                         R5 10
      133 SETTABLEKS                       R5 R4 K23 ["assetId"]
      135 GETUPVAL                         R4 5
      136 GETUPVAL                         R6 17
      137 GETUPVAL                         R7 2
      138 CALL                             R6 1 -1
      139 NAMECALL                         R4 R4 K13 ["dispatch"]
      141 CALL                             R4 -1 0
      142 RETURN                           R0 0
      143 JUMPIF                           R3 ; [+8]
      144 GETUPVAL                         R4 2
      145 GETTABLEKS                       R4 R4 K24 ["iconFile"]
      147 JUMPIF                           R4 ; [+4]
      148 GETUPVAL                         R4 2
      149 GETTABLEKS                       R4 R4 K25 ["assetMediaUpdateData"]
      151 JUMPIFNOT                        R4 ; [+12]
      152 GETUPVAL                         R4 2
      153 GETUPVAL                         R5 10
      154 SETTABLEKS                       R5 R4 K23 ["assetId"]
      156 GETUPVAL                         R4 5
      157 GETUPVAL                         R6 17
      158 GETUPVAL                         R7 2
      159 CALL                             R6 1 -1
      160 NAMECALL                         R4 R4 K13 ["dispatch"]
      162 CALL                             R4 -1 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R4 5
      165 GETUPVAL                         R6 18
      166 GETUPVAL                         R7 19
      167 GETTABLEKS                       R7 R7 K26 ["SCREENS"]
      169 GETTABLEKS                       R7 R7 K27 ["UPLOADING_ASSET"]
      171 CALL                             R6 1 -1
      172 NAMECALL                         R4 R4 K13 ["dispatch"]
      174 CALL                             R4 -1 0
      175 GETUPVAL                         R4 5
      176 GETUPVAL                         R6 6
      177 LOADB                            R7 1
      178 CALL                             R6 1 -1
      179 NAMECALL                         R4 R4 K13 ["dispatch"]
      181 CALL                             R4 -1 0
      182 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: SerializeInstances failed"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["SCREENS"]
       14 GETTABLEKS                       R4 R4 K5 ["UPLOAD_ASSET_RESULT"]
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
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["groupId"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R4 1
       12 JUMPIFNOT                        R4 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["description"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R5 1
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["name"]
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
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K14 ["assetTypeEnum"]
       47 GETIMPORT                        R7 K17 [Enum.AssetType.Model]
       49 JUMPIFNOTEQ                      R6 R7 ; [+31]
       51 DUPTABLE                         R6 K28 [{["AdditionalParameters"], ["AssetType"], ["AssetName"], ["AssetId"] = 0, ["ContentType"] = "model/x-rbxm", ["CreatorId"], ["CreatorType"], ["Description"], ["Token"] = ""}]
       52 DUPTABLE                         R7 K31 [{["PublishAsPackage"] = False}]
       53 SETTABLEKS                       R7 R6 K18 ["AdditionalParameters"]
       55 GETUPVAL                         R7 2
       56 SETTABLEKS                       R7 R6 K15 ["AssetType"]
       58 SETTABLEKS                       R4 R6 K19 ["AssetName"]
       60 SETTABLEKS                       R0 R6 K24 ["CreatorId"]
       62 SETTABLEKS                       R1 R6 K25 ["CreatorType"]
       64 SETTABLEKS                       R3 R6 K26 ["Description"]
       66 GETUPVAL                         R7 3
       67 CALL                             R7 0 1
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETUPVAL                         R9 4
       70 MOVE                             R10 R6
       71 NAMECALL                         R7 R5 K32 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       73 CALL                             R7 3 -1
       74 RETURN                           R7 -1
       75 GETUPVAL                         R9 4
       76 MOVE                             R10 R6
       77 NAMECALL                         R7 R5 K33 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       79 CALL                             R7 3 -1
       80 RETURN                           R7 -1
       81 GETUPVAL                         R8 4
       82 MOVE                             R9 R1
       83 MOVE                             R10 R0
       84 GETUPVAL                         R11 2
       85 LOADN                            R12 0
       86 MOVE                             R13 R4
       87 MOVE                             R14 R3
       88 LOADK                            R15 K9 [""]
       89 LOADK                            R16 K23 ["model/x-rbxm"]
       90 LOADN                            R17 0
       91 NAMECALL                         R6 R5 K34 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       93 CALL                             R6 11 -1
       94 RETURN                           R6 -1

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
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["SCREENS"]
        4 GETTABLEKS                       R5 R5 K1 ["UPLOADING_ASSET"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       13 GETTABLEKS                       R2 R2 K4 ["Name"]
       15 LOADNIL                          R3
       16 GETUPVAL                         R5 3
       17 JUMPIF                           R5 ; [+2]
       18 GETUPVAL                         R5 4
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["isMarketplaceModelsAsPackagesEnabled"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 JUMPIFNOT                        R4 ; [+13]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K6 ["sourceInstances"]
       30 JUMPIFEQKNIL                     R6 ; [+9]
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K7 ["isPackagePublishAllowed"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K6 ["sourceInstances"]
       38 CALL                             R6 1 1
       39 MOVE                             R5 R6
       40 JUMPIFNOT                        R5 ; [+4]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K8 ["copyOn"]
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K10 ["packageOn"]
       48 ORK                              R6 R7 K9 [False]
       49 DUPTABLE                         R7 K18 [{"Name", "AssetType", "Description", "IsPackage", "PublishToMarketplace", "AllowComments", "GroupId", "OrigInstance"}]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K19 ["name"]
       53 SETTABLEKS                       R8 R7 K4 ["Name"]
       55 SETTABLEKS                       R2 R7 K11 ["AssetType"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K20 ["description"]
       60 SETTABLEKS                       R8 R7 K12 ["Description"]
       62 SETTABLEKS                       R6 R7 K13 ["IsPackage"]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K8 ["copyOn"]
       67 SETTABLEKS                       R8 R7 K14 ["PublishToMarketplace"]
       69 GETUPVAL                         R9 2
       70 GETTABLEKS                       R9 R9 K21 ["allowComments"]
       72 ORK                              R8 R9 K9 [False]
       73 SETTABLEKS                       R8 R7 K15 ["AllowComments"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K22 ["groupId"]
       78 SETTABLEKS                       R8 R7 K16 ["GroupId"]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K6 ["sourceInstances"]
       83 JUMPIFEQKNIL                     R9 ; [+6]
       85 GETUPVAL                         R9 2
       86 GETTABLEKS                       R9 R9 K6 ["sourceInstances"]
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
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          UPVAL U16
      119 CAPTURE                          UPVAL U17
      120 CAPTURE                          UPVAL U18
      121 CAPTURE                          UPVAL U19
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U1
      124 NEWCLOSURE                       R10 P2
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          UPVAL U7
      131 GETUPVAL                         R11 20
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R12 R12 K23 ["instances"]
      135 GETTABLEKS                       R13 R1 K24 ["StudioAssetService"]
      137 CALL                             R11 2 1
      138 NEWCLOSURE                       R13 P3
      139 CAPTURE                          UPVAL U21
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          VAL R2
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R8
      145 MOVE                             R14 R10
      146 NAMECALL                         R11 R11 K25 ["andThen"]
      148 CALL                             R11 3 0
      149 CLOSEUPVALS                      R3
      150 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U19
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
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
       32 GETTABLEKS                       R6 R1 K10 ["Analytics"]
       34 GETTABLEKS                       R6 R6 K10 ["Analytics"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Packages"]
       41 GETTABLEKS                       R7 R7 K12 ["Framework"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R6 R6 K4 ["Util"]
       46 GETTABLEKS                       R6 R6 K13 ["sendResultToKibana"]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R1 K14 ["SerializeInstances"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K15 ["getUserId"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R0 K3 ["Src"]
       60 GETTABLEKS                       R9 R9 K16 ["Actions"]
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
       89 GETTABLEKS                       R16 R9 K22 ["SetNonBlockingDependencyIssues"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R0 K3 ["Src"]
       96 GETTABLEKS                       R17 R17 K23 ["Networking"]
       98 GETTABLEKS                       R17 R17 K24 ["Requests"]
      100 GETTABLEKS                       R17 R17 K25 ["TrySaveSalesThumbnailAssetMediaRequest"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K6 [require]
      105 GETTABLEKS                       R18 R0 K3 ["Src"]
      107 GETTABLEKS                       R18 R18 K26 ["Types"]
      109 GETTABLEKS                       R18 R18 K27 ["PublishInfoType"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K3 ["Src"]
      116 GETTABLEKS                       R19 R19 K26 ["Types"]
      118 GETTABLEKS                       R19 R19 K28 ["AssetUploadAPIPublishInfo"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K30 [game]
      123 LOADK                            R21 K31 ["DebugAssetConfigNetworkError"]
      124 NAMECALL                         R19 R19 K32 ["GetFastFlag"]
      126 CALL                             R19 2 1
      127 GETIMPORT                        R20 K30 [game]
      129 LOADK                            R22 K33 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
      130 NAMECALL                         R20 R20 K32 ["GetFastFlag"]
      132 CALL                             R20 2 1
      133 GETIMPORT                        R21 K30 [game]
      135 LOADK                            R23 K34 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
      136 NAMECALL                         R21 R21 K32 ["GetFastFlag"]
      138 CALL                             R21 2 1
      139 GETIMPORT                        R22 K6 [require]
      141 GETTABLEKS                       R23 R1 K35 ["SharedFlags"]
      143 GETTABLEKS                       R23 R23 K36 ["getFFlagToolboxTranslateUploadError"]
      145 CALL                             R22 1 1
      146 GETIMPORT                        R23 K6 [require]
      148 GETTABLEKS                       R24 R1 K35 ["SharedFlags"]
      150 GETTABLEKS                       R24 R24 K37 ["getFFlagToolboxModelCreationWarningWindow"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K6 [require]
      155 GETTABLEKS                       R25 R1 K38 ["reportUploadedAssetId"]
      157 CALL                             R24 1 1
      158 MOVE                             R26 R22
      159 CALL                             R26 0 1
      160 JUMPIFNOT                        R26 ; [+6]
      161 GETIMPORT                        R25 K6 [require]
      163 GETTABLEKS                       R26 R1 K39 ["AssetUploadUtil"]
      165 CALL                             R25 1 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R25
      168 DUPCLOSURE                       R26 K40 [PROTO_0]
      169 DUPCLOSURE                       R27 K41 [PROTO_7]
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R8
      190 RETURN                           R27 1
