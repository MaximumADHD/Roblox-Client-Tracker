PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Model"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["MeshPart"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Model"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETTABLEKS                       R2 R0 K1 ["responseBody"]
        5 GETTABLEKS                       R2 R2 K2 ["results"]
        7 DUPCLOSURE                       R3 K3 [PROTO_2]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch asset dependencies for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 NEWTABLE                         R1 0 0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetAssetDependenciesRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K1 ["makeRequest"]
        7 CALL                             R1 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_3]
        9 CAPTURE                          UPVAL U1
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R1 R1 K3 ["andThen"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["data"]
        4 GETTABLEN                        R1 R2 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+12]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R1 K2 ["assetId"]
       11 JUMPIFEQKNIL                     R3 ; [+7]
       13 GETTABLEKS                       R3 R1 K3 ["assetVersionNumber"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch package metadata for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PostPackageMetadataGetRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K1 ["makeRequest"]
        7 CALL                             R1 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_6]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R1 R1 K3 ["andThen"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R3 R2 K0 ["Id"]
        2 JUMPIFNOTEQ                      R1 R3 ; [+4]
        4 GETTABLEKS                       R3 R2 K1 ["Name"]
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K2 ["userId"]
        9 JUMPIFNOT                        R3 ; [+15]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["GetNameFromUserIdAsync"]
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R1
       15 FASTPCALL                        pcall 3 ; [+2]
       16 GETIMPORT                        R3 K5 [pcall]
       18 CALL                             R3 3 2
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R5 R4
       21 RETURN                           R5 1
       22 GETTABLEKS                       R5 R0 K2 ["userId"]
       24 RETURN                           R5 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["GetGroupInfoAsync"]
       28 GETUPVAL                         R5 1
       29 MOVE                             R6 R1
       30 FASTPCALL                        pcall 3 ; [+2]
       31 GETIMPORT                        R3 K5 [pcall]
       33 CALL                             R3 3 2
       34 JUMPIFNOT                        R3 ; [+3]
       35 GETTABLEKS                       R5 R4 K1 ["Name"]
       37 RETURN                           R5 1
       38 GETTABLEKS                       R5 R0 K7 ["groupId"]
       40 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["assetType"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+11]
        7 GETUPVAL                         R3 1
        8 LOADK                            R4 K2 ["Skipping asset %* with unsupported asset type %*"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R7 R1 K1 ["assetType"]
       12 NAMECALL                         R4 R4 K3 ["format"]
       14 CALL                             R4 3 1
       15 CALL                             R3 1 0
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R1 K4 ["creationContext"]
       20 GETTABLEKS                       R3 R3 K5 ["creator"]
       22 GETTABLEKS                       R5 R3 K6 ["userId"]
       24 JUMPIF                           R5 ; [+2]
       25 GETTABLEKS                       R5 R3 K7 ["groupId"]
       27 FASTCALL1                        TONUMBER R5 ; [+2]
       28 GETIMPORT                        R4 K9 [tonumber]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R6 R3 K6 ["userId"]
       33 JUMPIFNOT                        R6 ; [+6]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K10 ["ScopeType"]
       37 GETTABLEKS                       R5 R5 K11 ["User"]
       39 JUMP                             ; [+5]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K10 ["ScopeType"]
       43 GETTABLEKS                       R5 R5 K12 ["Group"]
       45 DUPTABLE                         R6 K17 [{"Id", "Name", "Type", "Uid"}]
       46 SETTABLEKS                       R4 R6 K13 ["Id"]
       48 GETUPVAL                         R7 4
       49 MOVE                             R8 R3
       50 MOVE                             R9 R4
       51 GETUPVAL                         R10 5
       52 CALL                             R7 3 1
       53 SETTABLEKS                       R7 R6 K14 ["Name"]
       55 SETTABLEKS                       R5 R6 K15 ["Type"]
       57 GETUPVAL                         R7 6
       58 MOVE                             R8 R5
       59 MOVE                             R9 R4
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K16 ["Uid"]
       63 GETUPVAL                         R7 7
       64 GETTABLEKS                       R8 R1 K18 ["revisionCreateTime"]
       66 CALL                             R7 1 1
       67 GETUPVAL                         R8 8
       68 GETTABLEKS                       R8 R8 K19 ["convertScopeTypeToAccountType"]
       70 MOVE                             R9 R5
       71 CALL                             R8 1 1
       72 DUPTABLE                         R9 K33 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["VersionNumber"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"], ["IsPackage"] = }]
       73 LOADK                            R10 K34 ["%*/%*/creator-inventory-items/asset-%*"]
       74 MOVE                             R12 R8
       75 MOVE                             R13 R4
       76 GETUPVAL                         R14 2
       77 NAMECALL                         R10 R10 K3 ["format"]
       79 CALL                             R10 4 1
       80 SETTABLEKS                       R10 R9 K20 ["Path"]
       82 GETUPVAL                         R10 2
       83 SETTABLEKS                       R10 R9 K21 ["AssetId"]
       85 SETTABLEKS                       R2 R9 K22 ["AssetType"]
       87 GETTABLEKS                       R10 R1 K35 ["displayName"]
       89 SETTABLEKS                       R10 R9 K23 ["DisplayName"]
       91 GETTABLEKS                       R11 R1 K36 ["revisionId"]
       93 FASTCALL1                        TONUMBER R11 ; [+2]
       94 GETIMPORT                        R10 K9 [tonumber]
       96 CALL                             R10 1 1
       97 SETTABLEKS                       R10 R9 K24 ["VersionNumber"]
       99 SETTABLEKS                       R7 R9 K25 ["Created"]
      101 SETTABLEKS                       R7 R9 K26 ["Modified"]
      103 GETTABLEKS                       R10 R1 K37 ["moderationResult"]
      105 GETTABLEKS                       R10 R10 K38 ["moderationState"]
      107 SETTABLEKS                       R10 R9 K27 ["ModerationStatus"]
      109 SETTABLEKS                       R6 R9 K28 ["Creator"]
      111 GETUPVAL                         R10 3
      112 GETTABLEKS                       R10 R10 K39 ["ItemSource"]
      114 GETTABLEKS                       R10 R10 K40 ["Uploaded"]
      116 SETTABLEKS                       R10 R9 K29 ["Source"]
      118 GETTABLEKS                       R11 R1 K41 ["state"]
      120 JUMPIFNOTEQKS                    R11 K42 ["Active"] ; [+2]
      122 LOADB                            R10 0 +1
      123 LOADB                            R10 1
      124 SETTABLEKS                       R10 R9 K30 ["Archived"]
      126 GETTABLEKS                       R11 R9 K22 ["AssetType"]
      128 GETUPVAL                         R12 9
      129 GETTABLEKS                       R12 R12 K43 ["Model"]
      131 JUMPIFEQ                         R11 R12 ; [+2]
      133 LOADB                            R10 0 +1
      134 LOADB                            R10 1
      135 JUMPIF                           R10 ; [+1]
      136 RETURN                           R9 1
      137 GETUPVAL                         R10 10
      138 GETUPVAL                         R11 2
      139 CALL                             R10 1 1
      140 NEWCLOSURE                       R12 P0
      141 CAPTURE                          VAL R9
      142 NAMECALL                         R10 R10 K44 ["andThen"]
      144 CALL                             R10 2 -1
      145 RETURN                           R10 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch asset details for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K3 ["reject"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetFetchAssetDataRequest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U7
       25 NAMECALL                         R2 R2 K2 ["andThen"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"AssetInfos", "FailedAssetIds"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["AssetInfos"]
        5 NEWTABLE                         R1 0 1
        7 GETUPVAL                         R2 0
        8 SETLIST                          R1 R2 1 [1]
       10 SETTABLEKS                       R1 R0 K1 ["FailedAssetIds"]
       12 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADB                            R4 1
        4 CALL                             R1 3 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K0 ["catch"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["all"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["map"]
        6 MOVE                             R3 R0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_17:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["append"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K1 ["AssetInfos"]
       10 GETTABLEKS                       R8 R5 K1 ["AssetInfos"]
       12 CALL                             R6 2 0
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K0 ["append"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K2 ["FailedAssetIds"]
       19 GETTABLEKS                       R8 R5 K2 ["FailedAssetIds"]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-19]
       24 GETUPVAL                         R1 1
       25 RETURN                           R1 1

PROTO_18:
        0 DUPTABLE                         R1 K2 [{"AssetInfos", "FailedAssetIds"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["AssetInfos"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["FailedAssetIds"]
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R3 R1 K0 ["AssetInfos"]
       13 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R2 K5 [table.insert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R2 ; [+16]
       21 GETTABLEKS                       R3 R0 K6 ["AssetType"]
       23 LOADB                            R2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["Model"]
       27 JUMPIFEQ                         R3 R4 ; [+8]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["MeshPart"]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 JUMPIF                           R2 ; [+1]
       37 RETURN                           R1 1
       38 GETUPVAL                         R2 2
       39 GETUPVAL                         R3 3
       40 CALL                             R2 1 1
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 NAMECALL                         R2 R2 K9 ["andThen"]
       48 CALL                             R2 2 1
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R2 R2 K9 ["andThen"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R1
       13 NAMECALL                         R3 R3 K0 ["andThen"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Enums"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Networking"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K11 ["Promise"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Services"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K9 ["Networking"]
       42 GETTABLEKS                       R8 R8 K13 ["Shared"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Types"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Networking"]
       54 GETTABLEKS                       R10 R10 K14 ["Urls"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Utils"]
       61 GETTABLEKS                       R11 R11 K16 ["convertAssetTypeStringToEnum"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K15 ["Utils"]
       68 GETTABLEKS                       R12 R12 K17 ["createScopeUid"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K15 ["Utils"]
       75 GETTABLEKS                       R13 R13 K18 ["logIfDebug"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R14 R0 K15 ["Utils"]
       82 GETTABLEKS                       R14 R14 K19 ["parseIsoToUnixMillis"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R6 K20 ["GetService"]
       87 LOADK                            R15 K21 ["GroupService"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R6 K20 ["GetService"]
       91 LOADK                            R16 K22 ["Players"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R3 K23 ["CreatorInventoryItemType"]
       95 DUPCLOSURE                       R17 K24 [PROTO_0]
       96 CAPTURE                          VAL R16
       97 DUPCLOSURE                       R18 K25 [PROTO_1]
       98 CAPTURE                          VAL R16
       99 DUPCLOSURE                       R19 K26 [PROTO_5]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R20 K27 [PROTO_8]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R21 K28 [PROTO_9]
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R14
      110 DUPCLOSURE                       R22 K29 [PROTO_13]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R23 K30 [PROTO_19]
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R23
      129 RETURN                           R23 1
