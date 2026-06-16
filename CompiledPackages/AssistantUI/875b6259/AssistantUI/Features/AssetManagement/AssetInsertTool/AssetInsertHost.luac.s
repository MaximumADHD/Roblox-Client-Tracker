PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetItemDetails"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CreateMeshPartAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["FindService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDataModelType"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Texture"]
        9 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["ColorMap"]
        9 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["VideoFrame"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Video"]
        9 GETIMPORT                        R2 K8 [UDim2.fromScale]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K9 ["Size"]
       16 RETURN                           R1 1

PROTO_12:
        0 DUPTABLE                         R1 K2 [{"result", "responseInfo"}]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K5 [{"status", "error"}]
        3 LOADK                            R5 K4 ["error"]
        4 SETTABLEKS                       R5 R4 K3 ["status"]
        6 SETTABLEKS                       R0 R4 K4 ["error"]
        8 NAMECALL                         R2 R2 K6 ["JSONEncode"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K0 ["result"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K1 ["responseInfo"]
       16 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUniqueTag"]
        6 LOADK                            R2 K1 ["Insert"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADK                            R2 K2 ["Assistant:"]
       11 MOVE                             R3 R0
       12 CONCAT                           R1 R2 R3
       13 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["tag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K2 ["toolArgs"]
        8 GETTABLEKS                       R3 R3 K3 ["environment"]
       10 GETTABLEKS                       R3 R3 K4 ["selection"]
       12 GETTABLEKS                       R3 R3 K5 ["set"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R3 R1 ; [+15]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K1 ["InstanceChip"]
       12 LOADK                            R6 K2 ["Multiple"]
       13 DUPTABLE                         R7 K5 [{"name", "count"}]
       14 GETUPVAL                         R8 2
       15 SETTABLEKS                       R8 R7 K3 ["name"]
       17 SETTABLEKS                       R1 R7 K4 ["count"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+13]
       24 JUMPIFNOTEQKN                    R1 K7 [0] ; [+12]
       26 GETUPVAL                         R3 3
       27 LOADK                            R5 K1 ["InstanceChip"]
       28 LOADK                            R6 K8 ["Deleted"]
       29 DUPTABLE                         R7 K9 [{"name"}]
       30 GETUPVAL                         R8 2
       31 SETTABLEKS                       R8 R7 K3 ["name"]
       33 NAMECALL                         R3 R3 K6 ["getText"]
       35 CALL                             R3 4 1
       36 MOVE                             R2 R3
       37 LOADNIL                          R3
       38 LOADN                            R4 0
       39 JUMPIFNOTLT                      R4 R1 ; [+4]
       41 GETTABLEN                        R4 R0 1
       42 GETTABLEKS                       R3 R4 K10 ["ClassName"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K11 ["bridge"]
       47 GETTABLEKS                       R4 R4 K12 ["updateContentHeader"]
       49 DUPTABLE                         R5 K16 [{"newDisplayName", "newClassName", "showChip"}]
       50 SETTABLEKS                       R2 R5 K13 ["newDisplayName"]
       52 SETTABLEKS                       R3 R5 K14 ["newClassName"]
       54 LOADN                            R7 0
       55 JUMPIFLT                         R7 R1 ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 SETTABLEKS                       R6 R5 K15 ["showChip"]
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R3 R0 K1 ["tag"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["observeTagChanges"]
        7 MOVE                             R5 R3
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getItemDetails"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R3 1
        6 FASTCALL1                        TONUMBER R3 ; [+2]
        7 GETIMPORT                        R2 K2 [tonumber]
        9 CALL                             R2 1 1
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 1
       13 NAMECALL                         R1 R0 K3 ["makeRequest"]
       15 CALL                             R1 1 1
       16 NAMECALL                         R1 R1 K4 ["expect"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_18:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+8]
        6 LOADB                            R1 0
        7 LOADK                            R3 K2 ["Invalid asset ID: %*"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 RETURN                           R1 2
       14 GETUPVAL                         R1 0
       15 LOADK                            R3 K4 ["[AssetInsertTool] Fetching metadata via Networking library for assetId=%*"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R3 R3 K3 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 CALL                             R1 1 0
       22 GETIMPORT                        R1 K6 [pcall]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CALL                             R1 1 2
       28 JUMPIF                           R1 ; [+24]
       29 GETUPVAL                         R3 0
       30 LOADK                            R5 K7 ["[AssetInsertTool] Metadata fetch failed: %*"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R8 R2
       33 GETIMPORT                        R7 K9 [tostring]
       35 CALL                             R7 1 1
       36 NAMECALL                         R5 R5 K3 ["format"]
       38 CALL                             R5 2 1
       39 MOVE                             R4 R5
       40 CALL                             R3 1 0
       41 LOADB                            R3 0
       42 LOADK                            R5 K10 ["Failed to fetch asset metadata: %*"]
       43 FASTCALL1                        TOSTRING R2 ; [+3]
       44 MOVE                             R8 R2
       45 GETIMPORT                        R7 K9 [tostring]
       47 CALL                             R7 1 1
       48 NAMECALL                         R5 R5 K3 ["format"]
       50 CALL                             R5 2 1
       51 MOVE                             R4 R5
       52 RETURN                           R3 2
       53 GETTABLEKS                       R3 R2 K11 ["responseBody"]
       55 GETTABLEKS                       R4 R3 K12 ["data"]
       57 JUMPIFNOT                        R4 ; [+3]
       58 LENGTH                           R5 R4
       59 JUMPIFNOTEQKN                    R5 K13 [0] ; [+9]
       61 LOADB                            R5 0
       62 LOADK                            R7 K14 ["No asset found for ID: %*"]
       63 MOVE                             R9 R0
       64 NAMECALL                         R7 R7 K3 ["format"]
       66 CALL                             R7 2 1
       67 MOVE                             R6 R7
       68 RETURN                           R5 2
       69 GETTABLEN                        R5 R4 1
       70 GETTABLEKS                       R6 R5 K15 ["asset"]
       72 JUMPIF                           R6 ; [+8]
       73 LOADB                            R7 0
       74 LOADK                            R9 K16 ["Asset data missing in response for ID: %*"]
       75 MOVE                             R11 R0
       76 NAMECALL                         R9 R9 K3 ["format"]
       78 CALL                             R9 2 1
       79 MOVE                             R8 R9
       80 RETURN                           R7 2
       81 DUPTABLE                         R7 K21 [{"AssetId", "Name", "AssetTypeId", "AssetSubTypes"}]
       82 GETTABLEKS                       R8 R6 K22 ["id"]
       84 SETTABLEKS                       R8 R7 K17 ["AssetId"]
       86 GETTABLEKS                       R8 R6 K23 ["name"]
       88 SETTABLEKS                       R8 R7 K18 ["Name"]
       90 GETTABLEKS                       R8 R6 K24 ["typeId"]
       92 SETTABLEKS                       R8 R7 K19 ["AssetTypeId"]
       94 GETTABLEKS                       R8 R6 K25 ["assetSubTypes"]
       96 SETTABLEKS                       R8 R7 K20 ["AssetSubTypes"]
       98 GETUPVAL                         R8 0
       99 LOADK                            R10 K26 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      100 GETTABLEKS                       R12 R7 K17 ["AssetId"]
      102 GETTABLEKS                       R13 R7 K18 ["Name"]
      104 GETTABLEKS                       R14 R7 K19 ["AssetTypeId"]
      106 GETTABLEKS                       R16 R7 K20 ["AssetSubTypes"]
      108 JUMPIFNOT                        R16 ; [+7]
      109 GETUPVAL                         R15 2
      110 GETTABLEKS                       R17 R7 K20 ["AssetSubTypes"]
      112 NAMECALL                         R15 R15 K27 ["JSONEncode"]
      114 CALL                             R15 2 1
      115 JUMPIF                           R15 ; [+1]
      116 LOADK                            R15 K28 ["nil"]
      117 NAMECALL                         R10 R10 K3 ["format"]
      119 CALL                             R10 5 1
      120 MOVE                             R9 R10
      121 CALL                             R8 1 0
      122 LOADB                            R8 1
      123 MOVE                             R9 R7
      124 RETURN                           R8 2

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 GETIMPORT                        R1 K2 [workspace]
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 LOADK                            R3 K3 ["."]
        8 NAMECALL                         R1 R0 K4 ["split"]
       10 CALL                             R1 2 1
       11 LENGTH                           R2 R1
       12 JUMPIFNOTEQKN                    R2 K5 [0] ; [+5]
       14 GETIMPORT                        R2 K2 [workspace]
       16 LOADNIL                          R3
       17 RETURN                           R2 2
       18 LOADNIL                          R2
       19 GETTABLEN                        R3 R1 1
       20 JUMPIFNOTEQKS                    R3 K6 ["game"] ; [+9]
       22 GETIMPORT                        R2 K7 [game]
       24 GETIMPORT                        R3 K10 [table.remove]
       26 MOVE                             R4 R1
       27 LOADN                            R5 1
       28 CALL                             R3 2 0
       29 JUMP                             ; [+16]
       30 GETTABLEN                        R3 R1 1
       31 JUMPIFEQKS                       R3 K1 ["workspace"] ; [+4]
       33 GETTABLEN                        R3 R1 1
       34 JUMPIFNOTEQKS                    R3 K11 ["Workspace"] ; [+9]
       36 GETIMPORT                        R2 K2 [workspace]
       38 GETIMPORT                        R3 K10 [table.remove]
       40 MOVE                             R4 R1
       41 LOADN                            R5 1
       42 CALL                             R3 2 0
       43 JUMP                             ; [+2]
       44 GETIMPORT                        R2 K7 [game]
       46 MOVE                             R3 R1
       47 LOADNIL                          R4
       48 LOADNIL                          R5
       49 FORGPREP                         R3
       50 MOVE                             R10 R7
       51 NAMECALL                         R8 R2 K12 ["FindFirstChild"]
       53 CALL                             R8 2 1
       54 JUMPIF                           R8 ; [+10]
       55 GETIMPORT                        R9 K2 [workspace]
       57 LOADK                            R11 K13 ["Could not resolve path \"%*\": \"%*\" not found. Defaulting to workspace."]
       58 MOVE                             R13 R0
       59 MOVE                             R14 R7
       60 NAMECALL                         R11 R11 K14 ["format"]
       62 CALL                             R11 3 1
       63 MOVE                             R10 R11
       64 RETURN                           R9 2
       65 MOVE                             R2 R8
       66 FORGLOOP                         R3 2 ; [-17]
       68 MOVE                             R3 R2
       69 LOADNIL                          R4
       70 RETURN                           R3 2

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIFNOT                        R2 ; [+16]
        4 GETIMPORT                        R3 K1 [game]
        6 JUMPIFEQ                         R2 R3 ; [+13]
        8 LOADN                            R5 1
        9 GETTABLEKS                       R6 R2 K2 ["Name"]
       11 FASTCALL3                        TABLE_INSERT R1 R5 R6
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 3 0
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 JUMPBACK                         ; [-17]
       20 LOADK                            R4 K7 ["game."]
       21 GETIMPORT                        R5 K9 [table.concat]
       23 MOVE                             R6 R1
       24 LOADK                            R7 K10 ["."]
       25 CALL                             R5 2 1
       26 CONCAT                           R3 R4 R5
       27 RETURN                           R3 1

PROTO_21:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+4]
        7 NAMECALL                         R1 R0 K1 ["ClearAllChildren"]
        9 CALL                             R1 1 0
       10 LOADB                            R1 1
       11 LOADNIL                          R2
       12 RETURN                           R1 2

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findService"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ClassName"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 LOADK                            R5 K2 ["[AssetInsertTool] sanitizeModel: ClassName=%*, FindService ok=%*, found=%*"]
        8 GETTABLEKS                       R7 R0 K3 ["ClassName"]
       10 MOVE                             R8 R1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R9 0 +1
       14 LOADB                            R9 1
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 4 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 JUMPIFNOT                        R1 ; [+19]
       21 JUMPIFNOT                        R2 ; [+18]
       22 GETUPVAL                         R3 1
       23 LOADK                            R5 K5 ["[AssetInsertTool] sanitizeModel REJECTED: %* is an existing service"]
       24 GETTABLEKS                       R7 R0 K3 ["ClassName"]
       26 NAMECALL                         R5 R5 K4 ["format"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 CALL                             R3 1 0
       31 LOADB                            R3 0
       32 LOADK                            R5 K6 ["Asset appears to be a service (%*) rather than a valid model"]
       33 GETTABLEKS                       R7 R0 K3 ["ClassName"]
       35 NAMECALL                         R5 R5 K4 ["format"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 RETURN                           R3 2
       40 GETUPVAL                         R3 1
       41 LOADK                            R5 K7 ["[AssetInsertTool] sanitizeModel PASSED: %*"]
       42 GETTABLEKS                       R7 R0 K8 ["Name"]
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 CALL                             R3 1 0
       49 LOADB                            R3 1
       50 LOADNIL                          R4
       51 RETURN                           R3 2

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadPackageAssetAsync"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_26:
        0 JUMPIFNOT                        R1 ; [+67]
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K0 ["[AssetInsertTool] Loading as PACKAGE: rbxassetid://%*"]
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 CALL                             R2 1 0
        9 GETIMPORT                        R2 K3 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R2 1 2
       15 JUMPIF                           R2 ; [+17]
       16 GETUPVAL                         R4 0
       17 LOADK                            R6 K4 ["[AssetInsertTool] LoadPackageAssetAsync FAILED: %*"]
       18 MOVE                             R8 R3
       19 NAMECALL                         R6 R6 K1 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 CALL                             R4 1 0
       24 LOADB                            R4 0
       25 LOADNIL                          R5
       26 LOADK                            R7 K5 ["Failed to load package asset: %*"]
       27 MOVE                             R9 R3
       28 NAMECALL                         R7 R7 K1 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 RETURN                           R4 3
       33 JUMPIFNOT                        R3 ; [+30]
       34 LENGTH                           R4 R3
       35 LOADN                            R5 0
       36 JUMPIFNOTLT                      R5 R4 ; [+27]
       38 GETUPVAL                         R4 0
       39 LOADK                            R6 K6 ["[AssetInsertTool] Package loaded: %* (%*), children=%*"]
       40 GETTABLEN                        R8 R3 1
       41 GETTABLEKS                       R8 R8 K7 ["Name"]
       43 GETTABLEN                        R9 R3 1
       44 GETTABLEKS                       R9 R9 K8 ["ClassName"]
       46 GETTABLEN                        R11 R3 1
       47 NAMECALL                         R11 R11 K9 ["GetChildren"]
       49 CALL                             R11 1 1
       50 LENGTH                           R10 R11
       51 NAMECALL                         R6 R6 K1 ["format"]
       53 CALL                             R6 4 1
       54 MOVE                             R5 R6
       55 CALL                             R4 1 0
       56 LOADB                            R4 1
       57 NEWTABLE                         R5 0 1
       59 GETTABLEN                        R6 R3 1
       60 SETLIST                          R5 R6 1 [1]
       62 LOADNIL                          R6
       63 RETURN                           R4 3
       64 LOADB                            R4 0
       65 LOADNIL                          R5
       66 LOADK                            R6 K10 ["LoadPackageAssetAsync returned empty result"]
       67 RETURN                           R4 3
       68 GETUPVAL                         R2 0
       69 LOADK                            R4 K11 ["[AssetInsertTool] Loading as MODEL via ToolUtils.loadCachedAssetAsync(%*)"]
       70 MOVE                             R6 R0
       71 NAMECALL                         R4 R4 K1 ["format"]
       73 CALL                             R4 2 1
       74 MOVE                             R3 R4
       75 CALL                             R2 1 0
       76 GETIMPORT                        R2 K3 [pcall]
       78 NEWCLOSURE                       R3 P1
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R0
       81 CALL                             R2 1 2
       82 JUMPIF                           R2 ; [+17]
       83 GETUPVAL                         R4 0
       84 LOADK                            R6 K12 ["[AssetInsertTool] loadCachedAssetAsync FAILED: %*"]
       85 MOVE                             R8 R3
       86 NAMECALL                         R6 R6 K1 ["format"]
       88 CALL                             R6 2 1
       89 MOVE                             R5 R6
       90 CALL                             R4 1 0
       91 LOADB                            R4 0
       92 LOADNIL                          R5
       93 LOADK                            R7 K13 ["Failed to load asset: %*"]
       94 MOVE                             R9 R3
       95 NAMECALL                         R7 R7 K1 ["format"]
       97 CALL                             R7 2 1
       98 MOVE                             R6 R7
       99 RETURN                           R4 3
      100 JUMPIF                           R3 ; [+4]
      101 LOADB                            R4 0
      102 LOADNIL                          R5
      103 LOADK                            R6 K14 ["loadCachedAssetAsync returned nil"]
      104 RETURN                           R4 3
      105 GETUPVAL                         R4 0
      106 LOADK                            R6 K15 ["[AssetInsertTool] loadCachedAssetAsync returned: %* (%*), children=%*"]
      107 GETTABLEKS                       R8 R3 K7 ["Name"]
      109 GETTABLEKS                       R9 R3 K8 ["ClassName"]
      111 NAMECALL                         R11 R3 K9 ["GetChildren"]
      113 CALL                             R11 1 1
      114 LENGTH                           R10 R11
      115 NAMECALL                         R6 R6 K1 ["format"]
      117 CALL                             R6 4 1
      118 MOVE                             R5 R6
      119 CALL                             R4 1 0
      120 LOADB                            R4 1
      121 NEWTABLE                         R5 0 1
      123 MOVE                             R6 R3
      124 SETLIST                          R5 R6 1 [1]
      126 LOADNIL                          R6
      127 RETURN                           R4 3

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMeshPartAsync"]
        3 GETIMPORT                        R1 K2 [Content]
        5 GETTABLEKS                       R1 R1 K3 ["fromAssetId"]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+9]
        7 LOADB                            R3 0
        8 LOADNIL                          R4
        9 LOADK                            R6 K2 ["Failed to create mesh part: %*"]
       10 MOVE                             R8 R2
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 RETURN                           R3 3
       16 LOADB                            R3 1
       17 MOVE                             R4 R2
       18 LOADNIL                          R5
       19 RETURN                           R3 3

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["createDecalFromImage"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["createDecal"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_30:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+9]
        8 LOADB                            R4 0
        9 LOADNIL                          R5
       10 LOADK                            R7 K2 ["Failed to create decal: %*"]
       11 MOVE                             R9 R3
       12 NAMECALL                         R7 R7 K3 ["format"]
       14 CALL                             R7 2 1
       15 MOVE                             R6 R7
       16 RETURN                           R4 3
       17 LOADB                            R4 1
       18 MOVE                             R5 R3
       19 LOADNIL                          R6
       20 RETURN                           R4 3

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAudioApiByDefault"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAudioAsset"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 ORK                              R2 R3 K1 ["Audio"]
        6 LOADB                            R3 0
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSound"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_34:
        0 LOADB                            R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 DUPCLOSURE                       R4 K2 [PROTO_31]
        4 CAPTURE                          UPVAL U0
        5 CALL                             R3 1 2
        6 JUMPIFNOT                        R3 ; [+2]
        7 JUMPIFNOT                        R4 ; [+1]
        8 LOADB                            R2 1
        9 JUMPIFNOT                        R2 ; [+24]
       10 LOADK                            R6 K3 ["rbxassetid://"]
       11 MOVE                             R7 R0
       12 CONCAT                           R5 R6 R7
       13 GETIMPORT                        R6 K1 [pcall]
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R1
       19 CALL                             R6 1 2
       20 JUMPIF                           R6 ; [+9]
       21 LOADB                            R8 0
       22 LOADNIL                          R9
       23 LOADK                            R11 K4 ["Failed to insert audio asset: %*"]
       24 MOVE                             R13 R7
       25 NAMECALL                         R11 R11 K5 ["format"]
       27 CALL                             R11 2 1
       28 MOVE                             R10 R11
       29 RETURN                           R8 3
       30 LOADB                            R8 1
       31 MOVE                             R9 R7
       32 LOADNIL                          R10
       33 RETURN                           R8 3
       34 GETIMPORT                        R5 K1 [pcall]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R0
       39 CALL                             R5 1 2
       40 JUMPIF                           R5 ; [+9]
       41 LOADB                            R7 0
       42 LOADNIL                          R8
       43 LOADK                            R10 K6 ["Failed to create sound: %*"]
       44 MOVE                             R12 R6
       45 NAMECALL                         R10 R10 K5 ["format"]
       47 CALL                             R10 2 1
       48 MOVE                             R9 R10
       49 RETURN                           R7 3
       50 LOADB                            R7 1
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R6
       54 SETLIST                          R8 R9 1 [1]
       56 LOADNIL                          R9
       57 RETURN                           R7 3

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createVideoFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_36:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+9]
        7 LOADB                            R3 0
        8 LOADNIL                          R4
        9 LOADK                            R6 K2 ["Failed to create video frame: %*"]
       10 MOVE                             R8 R2
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 RETURN                           R3 3
       16 LOADB                            R3 1
       17 MOVE                             R4 R2
       18 LOADNIL                          R5
       19 RETURN                           R3 3

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObjects"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_38:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+9]
        7 LOADB                            R3 0
        8 LOADNIL                          R4
        9 LOADK                            R6 K2 ["Failed to load animation asset: %*"]
       10 MOVE                             R8 R2
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 RETURN                           R3 3
       16 JUMPIFNOT                        R2 ; [+3]
       17 LENGTH                           R3 R2
       18 JUMPIFNOTEQKN                    R3 K4 [0] ; [+5]
       20 LOADB                            R3 0
       21 LOADNIL                          R4
       22 LOADK                            R5 K5 ["GetObjects returned empty result for animation"]
       23 RETURN                           R3 3
       24 LOADB                            R3 1
       25 MOVE                             R4 R2
       26 LOADNIL                          R5
       27 RETURN                           R3 3

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Edit"]
        9 JUMPIFEQ                         R2 R3 ; [+5]
       11 GETUPVAL                         R2 2
       12 LOADK                            R3 K3 ["Cannot insert assets outside of Edit mode"]
       13 CALL                             R2 1 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K4 ["assetId"]
       17 GETUPVAL                         R3 3
       18 LOADK                            R5 K5 ["[AssetInsertTool] === INSERT START === input assetId=%*, assetName=%*, assetType=%*, parentPath=%*"]
       19 MOVE                             R7 R2
       20 GETTABLEKS                       R9 R0 K7 ["assetName"]
       22 ORK                              R8 R9 K6 ["nil"]
       23 GETTABLEKS                       R10 R0 K8 ["assetType"]
       25 ORK                              R9 R10 K6 ["nil"]
       26 GETTABLEKS                       R11 R0 K9 ["parentPath"]
       28 ORK                              R10 R11 K6 ["nil"]
       29 NAMECALL                         R5 R5 K10 ["format"]
       31 CALL                             R5 5 1
       32 MOVE                             R4 R5
       33 CALL                             R3 1 0
       34 FASTCALL1                        TONUMBER R2 ; [+3]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K12 [tonumber]
       38 CALL                             R3 1 1
       39 JUMPIF                           R3 ; [+9]
       40 GETUPVAL                         R4 2
       41 LOADK                            R6 K13 ["Invalid asset ID: %*"]
       42 MOVE                             R8 R2
       43 NAMECALL                         R6 R6 K10 ["format"]
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 CALL                             R4 1 1
       48 RETURN                           R4 1
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 GETTABLEKS                       R7 R0 K8 ["assetType"]
       54 JUMPIFNOT                        R7 ; [+35]
       55 GETUPVAL                         R8 4
       56 GETTABLEKS                       R9 R0 K8 ["assetType"]
       58 GETTABLE                         R7 R8 R9
       59 JUMPIFNOT                        R7 ; [+30]
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R8 R0 K8 ["assetType"]
       63 GETTABLE                         R4 R7 R8
       64 GETTABLEKS                       R7 R0 K7 ["assetName"]
       66 ORK                              R5 R7 K14 ["Asset"]
       67 GETTABLEKS                       R7 R0 K8 ["assetType"]
       69 JUMPIFNOTEQKS                    R7 K15 ["Package"] ; [+8]
       71 NEWTABLE                         R7 0 1
       73 LOADK                            R8 K15 ["Package"]
       74 SETLIST                          R7 R8 1 [1]
       76 MOVE                             R6 R7
       77 JUMP                             ; [+1]
       78 LOADNIL                          R6
       79 GETUPVAL                         R7 3
       80 LOADK                            R9 K16 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       81 GETTABLEKS                       R11 R0 K8 ["assetType"]
       83 MOVE                             R12 R4
       84 NAMECALL                         R9 R9 K10 ["format"]
       86 CALL                             R9 3 1
       87 MOVE                             R8 R9
       88 CALL                             R7 1 0
       89 JUMP                             ; [+88]
       90 GETTABLEKS                       R7 R0 K8 ["assetType"]
       92 JUMPIFNOT                        R7 ; [+9]
       93 GETUPVAL                         R7 3
       94 LOADK                            R9 K17 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
       95 GETTABLEKS                       R11 R0 K8 ["assetType"]
       97 NAMECALL                         R9 R9 K10 ["format"]
       99 CALL                             R9 2 1
      100 MOVE                             R8 R9
      101 CALL                             R7 1 0
      102 GETUPVAL                         R7 5
      103 MOVE                             R8 R2
      104 CALL                             R7 1 2
      105 JUMPIF                           R7 ; [+4]
      106 GETUPVAL                         R9 2
      107 MOVE                             R10 R8
      108 CALL                             R9 1 1
      109 RETURN                           R9 1
      110 GETTABLEKS                       R9 R8 K18 ["AssetId"]
      112 JUMPIFNOT                        R9 ; [+45]
      113 GETTABLEKS                       R10 R8 K18 ["AssetId"]
      115 FASTCALL1                        TOSTRING R10 ; [+2]
      116 GETIMPORT                        R9 K20 [tostring]
      118 CALL                             R9 1 1
      119 JUMPIFEQ                         R9 R2 ; [+29]
      121 GETUPVAL                         R10 3
      122 LOADK                            R12 K21 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      123 MOVE                             R14 R2
      124 MOVE                             R15 R9
      125 NAMECALL                         R12 R12 K10 ["format"]
      127 CALL                             R12 3 1
      128 MOVE                             R11 R12
      129 CALL                             R10 1 0
      130 MOVE                             R2 R9
      131 FASTCALL1                        TONUMBER R2 ; [+3]
      132 MOVE                             R11 R2
      133 GETIMPORT                        R10 K12 [tonumber]
      135 CALL                             R10 1 1
      136 MOVE                             R3 R10
      137 JUMPIF                           R3 ; [+28]
      138 GETUPVAL                         R10 2
      139 LOADK                            R12 K22 ["Resolved asset ID is not a valid number: "]
      140 FASTCALL1                        TOSTRING R2 ; [+3]
      141 MOVE                             R14 R2
      142 GETIMPORT                        R13 K20 [tostring]
      144 CALL                             R13 1 1
      145 CONCAT                           R11 R12 R13
      146 CALL                             R10 1 1
      147 RETURN                           R10 1
      148 JUMP                             ; [+17]
      149 GETUPVAL                         R10 3
      150 LOADK                            R12 K23 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      151 MOVE                             R14 R2
      152 NAMECALL                         R12 R12 K10 ["format"]
      154 CALL                             R12 2 1
      155 MOVE                             R11 R12
      156 CALL                             R10 1 0
      157 JUMP                             ; [+8]
      158 GETUPVAL                         R9 3
      159 LOADK                            R11 K24 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      160 MOVE                             R13 R2
      161 NAMECALL                         R11 R11 K10 ["format"]
      163 CALL                             R11 2 1
      164 MOVE                             R10 R11
      165 CALL                             R9 1 0
      166 GETTABLEKS                       R4 R8 K25 ["AssetTypeId"]
      168 GETTABLEKS                       R9 R0 K7 ["assetName"]
      170 JUMPIF                           R9 ; [+4]
      171 GETTABLEKS                       R9 R8 K26 ["Name"]
      173 JUMPIF                           R9 ; [+1]
      174 LOADK                            R9 K14 ["Asset"]
      175 MOVE                             R5 R9
      176 GETTABLEKS                       R6 R8 K27 ["AssetSubTypes"]
      178 GETUPVAL                         R7 3
      179 LOADK                            R9 K28 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      180 MOVE                             R11 R2
      181 MOVE                             R12 R3
      182 MOVE                             R13 R4
      183 MOVE                             R14 R5
      184 JUMPIFNOT                        R6 ; [+2]
      185 LENGTH                           R15 R6
      186 JUMPIF                           R15 ; [+1]
      187 LOADN                            R15 0
      188 NAMECALL                         R9 R9 K10 ["format"]
      190 CALL                             R9 6 1
      191 MOVE                             R8 R9
      192 CALL                             R7 1 0
      193 GETUPVAL                         R7 6
      194 GETTABLEKS                       R7 R7 K29 ["isPackageAsset"]
      196 MOVE                             R8 R4
      197 MOVE                             R9 R6
      198 CALL                             R7 2 1
      199 GETUPVAL                         R9 7
      200 GETTABLE                         R8 R9 R4
      201 JUMPIF                           R8 ; [+9]
      202 GETUPVAL                         R9 2
      203 LOADK                            R11 K30 ["Unsupported asset type ID: %*"]
      204 MOVE                             R13 R4
      205 NAMECALL                         R11 R11 K10 ["format"]
      207 CALL                             R11 2 1
      208 MOVE                             R10 R11
      209 CALL                             R9 1 1
      210 RETURN                           R9 1
      211 GETTABLEKS                       R9 R8 K26 ["Name"]
      213 GETUPVAL                         R10 3
      214 LOADK                            R12 K31 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      215 MOVE                             R14 R9
      216 MOVE                             R15 R7
      217 NAMECALL                         R12 R12 K10 ["format"]
      219 CALL                             R12 3 1
      220 MOVE                             R11 R12
      221 CALL                             R10 1 0
      222 LOADNIL                          R10
      223 NEWTABLE                         R11 0 0
      225 GETTABLEKS                       R12 R1 K32 ["toolArgs"]
      227 GETTABLEKS                       R12 R12 K33 ["environment"]
      229 GETTABLEKS                       R12 R12 K34 ["assetAccessController"]
      231 GETUPVAL                         R13 8
      232 CALL                             R13 0 1
      233 JUMPIF                           R13 ; [+30]
      234 JUMPIFNOT                        R12 ; [+29]
      235 GETIMPORT                        R13 K36 [game]
      237 GETTABLEKS                       R13 R13 K37 ["GameId"]
      239 JUMPIFEQKN                       R13 K38 [0] ; [+24]
      241 GETUPVAL                         R13 3
      242 LOADK                            R15 K39 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      243 MOVE                             R17 R3
      244 MOVE                             R18 R9
      245 NAMECALL                         R15 R15 K10 ["format"]
      247 CALL                             R15 3 1
      248 MOVE                             R14 R15
      249 CALL                             R13 1 0
      250 GETUPVAL                         R13 9
      251 NEWTABLE                         R14 0 1
      253 MOVE                             R15 R3
      254 SETLIST                          R14 R15 1 [1]
      256 NEWTABLE                         R15 0 1
      258 MOVE                             R16 R8
      259 SETLIST                          R15 R16 1 [1]
      261 MOVE                             R16 R12
      262 CALL                             R13 3 1
      263 MOVE                             R11 R13
      264 GETIMPORT                        R13 K41 [next]
      266 MOVE                             R14 R11
      267 CALL                             R13 1 1
      268 JUMPIFNOT                        R13 ; [+23]
      269 MOVE                             R13 R11
      270 LOADNIL                          R14
      271 LOADNIL                          R15
      272 FORGPREP                         R13
      273 LOADK                            R19 K42 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      274 MOVE                             R21 R16
      275 NAMECALL                         R19 R19 K10 ["format"]
      277 CALL                             R19 2 1
      278 MOVE                             R18 R19
      279 ORK                              R19 R10 K43 [""]
      280 MOVE                             R20 R18
      281 CONCAT                           R10 R19 R20
      282 FORGLOOP                         R13 2 ; [-10]
      284 GETUPVAL                         R13 3
      285 LOADK                            R15 K44 ["[AssetInsertTool] %*"]
      286 MOVE                             R17 R10
      287 NAMECALL                         R15 R15 K10 ["format"]
      289 CALL                             R15 2 1
      290 MOVE                             R14 R15
      291 CALL                             R13 1 0
      292 GETTABLE                         R13 R11 R3
      293 JUMPIFNOT                        R13 ; [+4]
      294 GETUPVAL                         R13 2
      295 ORK                              R14 R10 K45 ["Failed to grant required permissions for asset"]
      296 CALL                             R13 1 1
      297 RETURN                           R13 1
      298 NEWTABLE                         R13 0 0
      300 LOADNIL                          R14
      301 LOADNIL                          R15
      302 GETIMPORT                        R16 K49 [Enum.AssetType.Model]
      304 JUMPIFEQ                         R8 R16 ; [+9]
      306 GETIMPORT                        R16 K51 [Enum.AssetType.MeshPart]
      308 JUMPIFEQ                         R8 R16 ; [+5]
      310 GETIMPORT                        R16 K52 [Enum.AssetType.Package]
      312 JUMPIFNOTEQ                      R8 R16 ; [+13]
      314 LOADNIL                          R16
      315 GETUPVAL                         R17 10
      316 MOVE                             R18 R2
      317 MOVE                             R19 R7
      318 CALL                             R17 2 3
      319 MOVE                             R14 R17
      320 MOVE                             R16 R18
      321 MOVE                             R15 R19
      322 JUMPIFNOT                        R14 ; [+193]
      323 JUMPIFNOT                        R16 ; [+192]
      324 MOVE                             R13 R16
      325 JUMP                             ; [+190]
      326 GETIMPORT                        R16 K54 [Enum.AssetType.Mesh]
      328 JUMPIFNOTEQ                      R8 R16 ; [+35]
      330 LOADNIL                          R16
      331 MOVE                             R20 R3
      332 GETIMPORT                        R21 K56 [pcall]
      334 NEWCLOSURE                       R22 P0
      335 CAPTURE                          UPVAL U0
      336 CAPTURE                          VAL R20
      337 CALL                             R21 1 2
      338 JUMPIF                           R21 ; [+9]
      339 LOADB                            R17 0
      340 LOADNIL                          R18
      341 LOADK                            R23 K57 ["Failed to create mesh part: %*"]
      342 MOVE                             R25 R22
      343 NAMECALL                         R23 R23 K10 ["format"]
      345 CALL                             R23 2 1
      346 MOVE                             R19 R23
      347 JUMP                             ; [+3]
      348 LOADB                            R17 1
      349 MOVE                             R18 R22
      350 LOADNIL                          R19
      351 MOVE                             R14 R17
      352 MOVE                             R16 R18
      353 MOVE                             R15 R19
      354 JUMPIFNOT                        R14 ; [+161]
      355 JUMPIFNOT                        R16 ; [+160]
      356 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      358 MOVE                             R18 R13
      359 MOVE                             R19 R16
      360 GETIMPORT                        R17 K60 [table.insert]
      362 CALL                             R17 2 0
      363 JUMP                             ; [+152]
      364 GETIMPORT                        R16 K62 [Enum.AssetType.Decal]
      366 JUMPIFEQ                         R8 R16 ; [+5]
      368 GETIMPORT                        R16 K64 [Enum.AssetType.Image]
      370 JUMPIFNOTEQ                      R8 R16 ; [+42]
      372 LOADNIL                          R16
      373 MOVE                             R20 R2
      374 GETIMPORT                        R22 K64 [Enum.AssetType.Image]
      376 JUMPIFEQ                         R8 R22 ; [+2]
      378 LOADB                            R21 0 +1
      379 LOADB                            R21 1
      380 GETIMPORT                        R22 K56 [pcall]
      382 NEWCLOSURE                       R23 P1
      383 CAPTURE                          VAL R21
      384 CAPTURE                          UPVAL U0
      385 CAPTURE                          VAL R20
      386 CALL                             R22 1 2
      387 JUMPIF                           R22 ; [+9]
      388 LOADB                            R17 0
      389 LOADNIL                          R18
      390 LOADK                            R24 K65 ["Failed to create decal: %*"]
      391 MOVE                             R26 R23
      392 NAMECALL                         R24 R24 K10 ["format"]
      394 CALL                             R24 2 1
      395 MOVE                             R19 R24
      396 JUMP                             ; [+3]
      397 LOADB                            R17 1
      398 MOVE                             R18 R23
      399 LOADNIL                          R19
      400 MOVE                             R14 R17
      401 MOVE                             R16 R18
      402 MOVE                             R15 R19
      403 JUMPIFNOT                        R14 ; [+112]
      404 JUMPIFNOT                        R16 ; [+111]
      405 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      407 MOVE                             R18 R13
      408 MOVE                             R19 R16
      409 GETIMPORT                        R17 K60 [table.insert]
      411 CALL                             R17 2 0
      412 JUMP                             ; [+103]
      413 GETIMPORT                        R16 K67 [Enum.AssetType.Audio]
      415 JUMPIFNOTEQ                      R8 R16 ; [+13]
      417 LOADNIL                          R16
      418 GETUPVAL                         R17 11
      419 MOVE                             R18 R2
      420 MOVE                             R19 R5
      421 CALL                             R17 2 3
      422 MOVE                             R14 R17
      423 MOVE                             R16 R18
      424 MOVE                             R15 R19
      425 JUMPIFNOT                        R14 ; [+90]
      426 JUMPIFNOT                        R16 ; [+89]
      427 MOVE                             R13 R16
      428 JUMP                             ; [+87]
      429 GETIMPORT                        R16 K69 [Enum.AssetType.Video]
      431 JUMPIFNOTEQ                      R8 R16 ; [+35]
      433 LOADNIL                          R16
      434 MOVE                             R20 R2
      435 GETIMPORT                        R21 K56 [pcall]
      437 NEWCLOSURE                       R22 P2
      438 CAPTURE                          UPVAL U0
      439 CAPTURE                          VAL R20
      440 CALL                             R21 1 2
      441 JUMPIF                           R21 ; [+9]
      442 LOADB                            R17 0
      443 LOADNIL                          R18
      444 LOADK                            R23 K70 ["Failed to create video frame: %*"]
      445 MOVE                             R25 R22
      446 NAMECALL                         R23 R23 K10 ["format"]
      448 CALL                             R23 2 1
      449 MOVE                             R19 R23
      450 JUMP                             ; [+3]
      451 LOADB                            R17 1
      452 MOVE                             R18 R22
      453 LOADNIL                          R19
      454 MOVE                             R14 R17
      455 MOVE                             R16 R18
      456 MOVE                             R15 R19
      457 JUMPIFNOT                        R14 ; [+58]
      458 JUMPIFNOT                        R16 ; [+57]
      459 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      461 MOVE                             R18 R13
      462 MOVE                             R19 R16
      463 GETIMPORT                        R17 K60 [table.insert]
      465 CALL                             R17 2 0
      466 JUMP                             ; [+49]
      467 GETIMPORT                        R16 K72 [Enum.AssetType.Animation]
      469 JUMPIFNOTEQ                      R8 R16 ; [+37]
      471 LOADNIL                          R16
      472 MOVE                             R20 R3
      473 GETIMPORT                        R21 K56 [pcall]
      475 NEWCLOSURE                       R22 P3
      476 CAPTURE                          UPVAL U0
      477 CAPTURE                          VAL R20
      478 CALL                             R21 1 2
      479 JUMPIF                           R21 ; [+9]
      480 LOADB                            R17 0
      481 LOADNIL                          R18
      482 LOADK                            R23 K73 ["Failed to load animation asset: %*"]
      483 MOVE                             R25 R22
      484 NAMECALL                         R23 R23 K10 ["format"]
      486 CALL                             R23 2 1
      487 MOVE                             R19 R23
      488 JUMP                             ; [+11]
      489 JUMPIFNOT                        R22 ; [+3]
      490 LENGTH                           R23 R22
      491 JUMPIFNOTEQKN                    R23 K38 [0] ; [+5]
      493 LOADB                            R17 0
      494 LOADNIL                          R18
      495 LOADK                            R19 K74 ["GetObjects returned empty result for animation"]
      496 JUMP                             ; [+3]
      497 LOADB                            R17 1
      498 MOVE                             R18 R22
      499 LOADNIL                          R19
      500 MOVE                             R14 R17
      501 MOVE                             R16 R18
      502 MOVE                             R15 R19
      503 JUMPIFNOT                        R14 ; [+12]
      504 JUMPIFNOT                        R16 ; [+11]
      505 MOVE                             R13 R16
      506 JUMP                             ; [+9]
      507 GETUPVAL                         R16 2
      508 LOADK                            R18 K75 ["Unhandled asset type: %*"]
      509 MOVE                             R20 R9
      510 NAMECALL                         R18 R18 K10 ["format"]
      512 CALL                             R18 2 1
      513 MOVE                             R17 R18
      514 CALL                             R16 1 1
      515 RETURN                           R16 1
      516 JUMPIFNOT                        R14 ; [+3]
      517 LENGTH                           R16 R13
      518 JUMPIFNOTEQKN                    R16 K38 [0] ; [+5]
      520 GETUPVAL                         R16 2
      521 ORK                              R17 R15 K76 ["Failed to load asset instances"]
      522 CALL                             R16 1 1
      523 RETURN                           R16 1
      524 GETUPVAL                         R16 3
      525 LOADK                            R18 K77 ["[AssetInsertTool] Sanitizing %* instances..."]
      526 LENGTH                           R20 R13
      527 NAMECALL                         R18 R18 K10 ["format"]
      529 CALL                             R18 2 1
      530 MOVE                             R17 R18
      531 CALL                             R16 1 0
      532 LENGTH                           R18 R13
      533 LOADN                            R16 1
      534 LOADN                            R17 255
      535 FORNPREP                         R16
      536 GETTABLE                         R19 R13 R18
      537 LOADB                            R20 0
      538 GETUPVAL                         R21 3
      539 LOADK                            R23 K78 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      540 MOVE                             R25 R18
      541 GETTABLEKS                       R26 R19 K26 ["Name"]
      543 GETTABLEKS                       R27 R19 K79 ["ClassName"]
      545 LOADK                            R30 K48 ["Model"]
      546 NAMECALL                         R28 R19 K80 ["IsA"]
      548 CALL                             R28 2 1
      549 LOADK                            R31 K50 ["MeshPart"]
      550 NAMECALL                         R29 R19 K80 ["IsA"]
      552 CALL                             R29 2 1
      553 NAMECALL                         R23 R23 K10 ["format"]
      555 CALL                             R23 6 1
      556 MOVE                             R22 R23
      557 CALL                             R21 1 0
      558 GETUPVAL                         R21 12
      559 MOVE                             R22 R19
      560 CALL                             R21 1 2
      561 JUMPIF                           R21 ; [+12]
      562 GETUPVAL                         R23 3
      563 LOADK                            R25 K81 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      564 GETTABLEKS                       R27 R19 K79 ["ClassName"]
      566 MOVE                             R28 R22
      567 NAMECALL                         R25 R25 K10 ["format"]
      569 CALL                             R25 3 1
      570 MOVE                             R24 R25
      571 CALL                             R23 1 0
      572 LOADB                            R20 1
      573 JUMP                             ; [+27]
      574 LOADK                            R25 K50 ["MeshPart"]
      575 NAMECALL                         R23 R19 K80 ["IsA"]
      577 CALL                             R23 2 1
      578 JUMPIFNOT                        R23 ; [+22]
      579 NAMECALL                         R26 R19 K82 ["GetChildren"]
      581 CALL                             R26 1 1
      582 LENGTH                           R25 R26
      583 LOADN                            R26 0
      584 JUMPIFNOTLT                      R26 R25 ; [+4]
      586 NAMECALL                         R25 R19 K83 ["ClearAllChildren"]
      588 CALL                             R25 1 0
      589 LOADB                            R23 1
      590 LOADNIL                          R24
      591 JUMPIF                           R23 ; [+9]
      592 GETUPVAL                         R25 3
      593 LOADK                            R27 K84 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      594 MOVE                             R29 R24
      595 NAMECALL                         R27 R27 K10 ["format"]
      597 CALL                             R27 2 1
      598 MOVE                             R26 R27
      599 CALL                             R25 1 0
      600 LOADB                            R20 1
      601 JUMPIFNOT                        R20 ; [+15]
      602 GETUPVAL                         R23 3
      603 LOADK                            R25 K85 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      604 MOVE                             R27 R18
      605 GETTABLEKS                       R28 R19 K26 ["Name"]
      607 NAMECALL                         R25 R25 K10 ["format"]
      609 CALL                             R25 3 1
      610 MOVE                             R24 R25
      611 CALL                             R23 1 0
      612 GETIMPORT                        R23 K87 [table.remove]
      614 MOVE                             R24 R13
      615 MOVE                             R25 R18
      616 CALL                             R23 2 0
      617 FORNLOOP                         R16
      618 GETUPVAL                         R16 3
      619 LOADK                            R18 K88 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      620 LENGTH                           R20 R13
      621 NAMECALL                         R18 R18 K10 ["format"]
      623 CALL                             R18 2 1
      624 MOVE                             R17 R18
      625 CALL                             R16 1 0
      626 LENGTH                           R16 R13
      627 JUMPIFNOTEQKN                    R16 K38 [0] ; [+5]
      629 GETUPVAL                         R16 2
      630 LOADK                            R17 K89 ["All instances failed sanitization"]
      631 CALL                             R16 1 1
      632 RETURN                           R16 1
      633 GETUPVAL                         R16 3
      634 LOADK                            R18 K90 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      635 LENGTH                           R20 R13
      636 NAMECALL                         R18 R18 K10 ["format"]
      638 CALL                             R18 2 1
      639 MOVE                             R17 R18
      640 CALL                             R16 1 0
      641 GETUPVAL                         R16 3
      642 LOADK                            R18 K91 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      643 MOVE                             R20 R3
      644 LENGTH                           R21 R13
      645 NAMECALL                         R18 R18 K10 ["format"]
      647 CALL                             R18 3 1
      648 MOVE                             R17 R18
      649 CALL                             R16 1 0
      650 MOVE                             R16 R13
      651 LOADNIL                          R17
      652 LOADNIL                          R18
      653 FORGPREP                         R16
      654 GETUPVAL                         R21 13
      655 MOVE                             R22 R3
      656 MOVE                             R23 R20
      657 CALL                             R21 2 0
      658 FORGLOOP                         R16 2 ; [-5]
      660 GETUPVAL                         R16 14
      661 LOADB                            R18 0
      662 NAMECALL                         R16 R16 K92 ["GenerateGUID"]
      664 CALL                             R16 2 1
      665 GETUPVAL                         R18 15
      666 CALL                             R18 0 1
      667 JUMPIFNOT                        R18 ; [+7]
      668 GETUPVAL                         R17 16
      669 GETTABLEKS                       R17 R17 K93 ["getUniqueTag"]
      671 LOADK                            R18 K94 ["Insert"]
      672 MOVE                             R19 R16
      673 CALL                             R17 2 1
      674 JUMP                             ; [+3]
      675 LOADK                            R18 K95 ["Assistant:"]
      676 MOVE                             R19 R16
      677 CONCAT                           R17 R18 R19
      678 GETUPVAL                         R18 14
      679 LOADB                            R20 0
      680 NAMECALL                         R18 R18 K92 ["GenerateGUID"]
      682 CALL                             R18 2 1
      683 GETUPVAL                         R19 3
      684 LOADK                            R21 K96 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      685 MOVE                             R23 R16
      686 MOVE                             R24 R17
      687 NAMECALL                         R21 R21 K10 ["format"]
      689 CALL                             R21 3 1
      690 MOVE                             R20 R21
      691 CALL                             R19 1 0
      692 GETUPVAL                         R19 17
      693 GETTABLEKS                       R20 R0 K9 ["parentPath"]
      695 CALL                             R19 1 2
      696 GETUPVAL                         R21 3
      697 LOADK                            R23 K97 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      698 NAMECALL                         R25 R19 K98 ["GetFullName"]
      700 CALL                             R25 1 1
      701 ORK                              R26 R20 K99 ["none"]
      702 NAMECALL                         R23 R23 K10 ["format"]
      704 CALL                             R23 3 1
      705 MOVE                             R22 R23
      706 CALL                             R21 1 0
      707 GETTABLEN                        R21 R13 1
      708 GETTABLEKS                       R21 R21 K79 ["ClassName"]
      710 GETTABLEKS                       R22 R1 K32 ["toolArgs"]
      712 GETTABLEKS                       R22 R22 K33 ["environment"]
      714 GETTABLEKS                       R23 R22 K100 ["startRecording"]
      716 MOVE                             R24 R18
      717 CALL                             R23 1 0
      718 NEWTABLE                         R23 0 0
      720 MOVE                             R24 R13
      721 LOADNIL                          R25
      722 LOADNIL                          R26
      723 FORGPREP                         R24
      724 SETTABLEKS                       R5 R28 K26 ["Name"]
      726 MOVE                             R31 R17
      727 NAMECALL                         R29 R28 K101 ["AddTag"]
      729 CALL                             R29 2 0
      730 LOADK                            R31 K102 ["PVInstance"]
      731 NAMECALL                         R29 R28 K80 ["IsA"]
      733 CALL                             R29 2 1
      734 JUMPIFNOT                        R29 ; [+6]
      735 GETUPVAL                         R29 18
      736 GETTABLEKS                       R29 R29 K103 ["setPositionOnGround"]
      738 MOVE                             R30 R28
      739 LOADB                            R31 1
      740 CALL                             R29 2 0
      741 SETTABLEKS                       R19 R28 K104 ["Parent"]
      743 GETUPVAL                         R29 3
      744 LOADK                            R31 K105 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      745 GETTABLEKS                       R33 R28 K26 ["Name"]
      747 GETTABLEKS                       R34 R28 K79 ["ClassName"]
      749 GETUPVAL                         R35 19
      750 MOVE                             R36 R28
      751 CALL                             R35 1 1
      752 NAMECALL                         R31 R31 K10 ["format"]
      754 CALL                             R31 4 1
      755 MOVE                             R30 R31
      756 CALL                             R29 1 0
      757 DUPTABLE                         R31 K109 [{"name", "className", "fullPath"}]
      758 GETTABLEKS                       R32 R28 K26 ["Name"]
      760 SETTABLEKS                       R32 R31 K106 ["name"]
      762 GETTABLEKS                       R32 R28 K79 ["ClassName"]
      764 SETTABLEKS                       R32 R31 K107 ["className"]
      766 GETUPVAL                         R32 19
      767 MOVE                             R33 R28
      768 CALL                             R32 1 1
      769 SETTABLEKS                       R32 R31 K108 ["fullPath"]
      771 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      773 MOVE                             R30 R23
      774 GETIMPORT                        R29 K60 [table.insert]
      776 CALL                             R29 2 0
      777 FORGLOOP                         R24 2 ; [-54]
      779 GETTABLEKS                       R24 R22 K110 ["endRecording"]
      781 MOVE                             R25 R18
      782 CALL                             R24 1 0
      783 GETUPVAL                         R24 3
      784 LOADK                            R25 K111 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      785 CALL                             R24 1 0
      786 GETUPVAL                         R24 14
      787 DUPTABLE                         R26 K119 [{"status", "insertGuid", "tag", "assetId", "assetName", "assetType", "isPackage", "insertedInstances", "parentWarning", "permissionWarning"}]
      788 LOADK                            R27 K120 ["success"]
      789 SETTABLEKS                       R27 R26 K112 ["status"]
      791 SETTABLEKS                       R16 R26 K113 ["insertGuid"]
      793 SETTABLEKS                       R17 R26 K114 ["tag"]
      795 SETTABLEKS                       R2 R26 K4 ["assetId"]
      797 SETTABLEKS                       R5 R26 K7 ["assetName"]
      799 SETTABLEKS                       R9 R26 K8 ["assetType"]
      801 SETTABLEKS                       R7 R26 K115 ["isPackage"]
      803 SETTABLEKS                       R23 R26 K116 ["insertedInstances"]
      805 SETTABLEKS                       R20 R26 K117 ["parentWarning"]
      807 SETTABLEKS                       R10 R26 K118 ["permissionWarning"]
      809 NAMECALL                         R24 R24 K121 ["JSONEncode"]
      811 CALL                             R24 2 1
      812 DUPTABLE                         R25 K124 [{"result", "responseInfo"}]
      813 SETTABLEKS                       R24 R25 K122 ["result"]
      815 DUPTABLE                         R26 K125 [{"tag", "assetName", "insertGuid", "className"}]
      816 SETTABLEKS                       R17 R26 K114 ["tag"]
      818 SETTABLEKS                       R5 R26 K7 ["assetName"]
      820 SETTABLEKS                       R16 R26 K113 ["insertGuid"]
      822 SETTABLEKS                       R21 R26 K107 ["className"]
      824 SETTABLEKS                       R26 R25 K123 ["responseInfo"]
      826 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["HttpService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["InsertService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["SoundService"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Util"]
       41 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Util"]
       48 GETTABLEKS                       R8 R8 K16 ["Tagging"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Util"]
       55 GETTABLEKS                       R9 R9 K17 ["ToolUtils"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K13 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Resources"]
       62 GETTABLEKS                       R10 R10 K19 ["Localization"]
       64 GETTABLEKS                       R10 R10 K20 ["Translator"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K1 [script]
       69 LOADK                            R12 K21 ["AssetManagement"]
       70 NAMECALL                         R10 R10 K3 ["FindFirstAncestor"]
       72 CALL                             R10 2 1
       73 GETIMPORT                        R11 K13 [require]
       75 GETTABLEKS                       R12 R10 K22 ["AssetManagementConstants"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K13 [require]
       80 GETTABLEKS                       R13 R10 K23 ["AssetManagementUrls"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K13 [require]
       85 GETTABLEKS                       R14 R10 K24 ["AssetManagementUtils"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K13 [require]
       90 GETIMPORT                        R15 K1 [script]
       92 GETTABLEKS                       R15 R15 K25 ["Parent"]
       94 GETTABLEKS                       R15 R15 K26 ["AssetInsertBridgeTypes"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K13 [require]
       99 GETTABLEKS                       R16 R0 K27 ["Flags"]
      101 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K13 [require]
      106 GETTABLEKS                       R17 R0 K27 ["Flags"]
      108 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantUseNewTags"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K13 [require]
      113 GETIMPORT                        R18 K1 [script]
      115 GETTABLEKS                       R18 R18 K25 ["Parent"]
      117 GETTABLEKS                       R18 R18 K30 ["assignSourceAssetId"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K13 [require]
      122 GETIMPORT                        R19 K1 [script]
      124 GETTABLEKS                       R19 R19 K25 ["Parent"]
      126 GETTABLEKS                       R19 R19 K31 ["grantUniversePermissions"]
      128 CALL                             R18 1 1
      129 GETTABLEKS                       R19 R13 K32 ["debugPrint"]
      131 DUPTABLE                         R20 K45 [{"getObjects", "getItemDetails", "loadPackageAssetAsync", "createMeshPartAsync", "getAudioApiByDefault", "insertAudioAsset", "findService", "getDataModelType", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      132 DUPCLOSURE                       R21 K46 [PROTO_0]
      133 SETTABLEKS                       R21 R20 K33 ["getObjects"]
      135 DUPCLOSURE                       R21 K47 [PROTO_1]
      136 CAPTURE                          VAL R12
      137 SETTABLEKS                       R21 R20 K34 ["getItemDetails"]
      139 DUPCLOSURE                       R21 K48 [PROTO_2]
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R21 R20 K35 ["loadPackageAssetAsync"]
      143 DUPCLOSURE                       R21 K49 [PROTO_3]
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R21 R20 K36 ["createMeshPartAsync"]
      147 DUPCLOSURE                       R21 K50 [PROTO_4]
      148 CAPTURE                          VAL R5
      149 SETTABLEKS                       R21 R20 K37 ["getAudioApiByDefault"]
      151 DUPCLOSURE                       R21 K51 [PROTO_5]
      152 CAPTURE                          VAL R5
      153 SETTABLEKS                       R21 R20 K38 ["insertAudioAsset"]
      155 DUPCLOSURE                       R21 K52 [PROTO_6]
      156 SETTABLEKS                       R21 R20 K39 ["findService"]
      158 DUPCLOSURE                       R21 K53 [PROTO_7]
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R21 R20 K40 ["getDataModelType"]
      162 DUPCLOSURE                       R21 K54 [PROTO_8]
      163 SETTABLEKS                       R21 R20 K41 ["createDecal"]
      165 DUPCLOSURE                       R21 K55 [PROTO_9]
      166 SETTABLEKS                       R21 R20 K42 ["createDecalFromImage"]
      168 DUPCLOSURE                       R21 K56 [PROTO_10]
      169 SETTABLEKS                       R21 R20 K43 ["createSound"]
      171 DUPCLOSURE                       R21 K57 [PROTO_11]
      172 SETTABLEKS                       R21 R20 K44 ["createVideoFrame"]
      174 DUPCLOSURE                       R21 K58 [PROTO_12]
      175 CAPTURE                          VAL R3
      176 GETTABLEKS                       R22 R11 K59 ["ASSET_TYPE_ID_MAP"]
      178 GETTABLEKS                       R23 R11 K60 ["ASSET_TYPE_NAME_TO_ID"]
      180 DUPCLOSURE                       R24 K61 [PROTO_13]
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R7
      183 DUPCLOSURE                       R25 K62 [PROTO_14]
      184 CAPTURE                          VAL R2
      185 DUPCLOSURE                       R26 K63 [PROTO_16]
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R9
      189 DUPCLOSURE                       R27 K64 [PROTO_18]
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R3
      193 DUPCLOSURE                       R28 K65 [PROTO_19]
      194 DUPCLOSURE                       R29 K66 [PROTO_20]
      195 DUPCLOSURE                       R30 K67 [PROTO_21]
      196 DUPCLOSURE                       R31 K68 [PROTO_23]
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R19
      199 DUPCLOSURE                       R32 K69 [PROTO_26]
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R8
      203 DUPCLOSURE                       R33 K70 [PROTO_28]
      204 CAPTURE                          VAL R20
      205 DUPCLOSURE                       R34 K71 [PROTO_30]
      206 CAPTURE                          VAL R20
      207 DUPCLOSURE                       R35 K72 [PROTO_34]
      208 CAPTURE                          VAL R20
      209 DUPCLOSURE                       R36 K73 [PROTO_36]
      210 CAPTURE                          VAL R20
      211 DUPCLOSURE                       R37 K74 [PROTO_38]
      212 CAPTURE                          VAL R20
      213 DUPCLOSURE                       R38 K75 [PROTO_39]
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R35
      226 CAPTURE                          VAL R31
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R16
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R29
      234 DUPTABLE                         R39 K79 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
      235 SETTABLEKS                       R25 R39 K76 ["selectInsertedAssets"]
      237 SETTABLEKS                       R26 R39 K77 ["listenToLinkChanges"]
      239 SETTABLEKS                       R38 R39 K78 ["insertAssetAsync"]
      241 DUPTABLE                         R40 K82 [{"bridge", "_deps"}]
      242 SETTABLEKS                       R39 R40 K80 ["bridge"]
      244 SETTABLEKS                       R20 R40 K81 ["_deps"]
      246 RETURN                           R40 1
