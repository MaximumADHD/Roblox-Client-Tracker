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
      231 JUMPIFNOT                        R12 ; [+29]
      232 GETIMPORT                        R13 K36 [game]
      234 GETTABLEKS                       R13 R13 K37 ["GameId"]
      236 JUMPIFEQKN                       R13 K38 [0] ; [+24]
      238 GETUPVAL                         R13 3
      239 LOADK                            R15 K39 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      240 MOVE                             R17 R3
      241 MOVE                             R18 R9
      242 NAMECALL                         R15 R15 K10 ["format"]
      244 CALL                             R15 3 1
      245 MOVE                             R14 R15
      246 CALL                             R13 1 0
      247 GETUPVAL                         R13 8
      248 NEWTABLE                         R14 0 1
      250 MOVE                             R15 R3
      251 SETLIST                          R14 R15 1 [1]
      253 NEWTABLE                         R15 0 1
      255 MOVE                             R16 R8
      256 SETLIST                          R15 R16 1 [1]
      258 MOVE                             R16 R12
      259 CALL                             R13 3 1
      260 MOVE                             R11 R13
      261 GETIMPORT                        R13 K41 [next]
      263 MOVE                             R14 R11
      264 CALL                             R13 1 1
      265 JUMPIFNOT                        R13 ; [+23]
      266 MOVE                             R13 R11
      267 LOADNIL                          R14
      268 LOADNIL                          R15
      269 FORGPREP                         R13
      270 LOADK                            R19 K42 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      271 MOVE                             R21 R16
      272 NAMECALL                         R19 R19 K10 ["format"]
      274 CALL                             R19 2 1
      275 MOVE                             R18 R19
      276 ORK                              R19 R10 K43 [""]
      277 MOVE                             R20 R18
      278 CONCAT                           R10 R19 R20
      279 FORGLOOP                         R13 2 ; [-10]
      281 GETUPVAL                         R13 3
      282 LOADK                            R15 K44 ["[AssetInsertTool] %*"]
      283 MOVE                             R17 R10
      284 NAMECALL                         R15 R15 K10 ["format"]
      286 CALL                             R15 2 1
      287 MOVE                             R14 R15
      288 CALL                             R13 1 0
      289 GETTABLE                         R13 R11 R3
      290 JUMPIFNOT                        R13 ; [+4]
      291 GETUPVAL                         R13 2
      292 ORK                              R14 R10 K45 ["Failed to grant required permissions for asset"]
      293 CALL                             R13 1 1
      294 RETURN                           R13 1
      295 NEWTABLE                         R13 0 0
      297 LOADNIL                          R14
      298 LOADNIL                          R15
      299 GETIMPORT                        R16 K49 [Enum.AssetType.Model]
      301 JUMPIFEQ                         R8 R16 ; [+9]
      303 GETIMPORT                        R16 K51 [Enum.AssetType.MeshPart]
      305 JUMPIFEQ                         R8 R16 ; [+5]
      307 GETIMPORT                        R16 K52 [Enum.AssetType.Package]
      309 JUMPIFNOTEQ                      R8 R16 ; [+13]
      311 LOADNIL                          R16
      312 GETUPVAL                         R17 9
      313 MOVE                             R18 R2
      314 MOVE                             R19 R7
      315 CALL                             R17 2 3
      316 MOVE                             R14 R17
      317 MOVE                             R16 R18
      318 MOVE                             R15 R19
      319 JUMPIFNOT                        R14 ; [+193]
      320 JUMPIFNOT                        R16 ; [+192]
      321 MOVE                             R13 R16
      322 JUMP                             ; [+190]
      323 GETIMPORT                        R16 K54 [Enum.AssetType.Mesh]
      325 JUMPIFNOTEQ                      R8 R16 ; [+35]
      327 LOADNIL                          R16
      328 MOVE                             R20 R3
      329 GETIMPORT                        R21 K56 [pcall]
      331 NEWCLOSURE                       R22 P0
      332 CAPTURE                          UPVAL U0
      333 CAPTURE                          VAL R20
      334 CALL                             R21 1 2
      335 JUMPIF                           R21 ; [+9]
      336 LOADB                            R17 0
      337 LOADNIL                          R18
      338 LOADK                            R23 K57 ["Failed to create mesh part: %*"]
      339 MOVE                             R25 R22
      340 NAMECALL                         R23 R23 K10 ["format"]
      342 CALL                             R23 2 1
      343 MOVE                             R19 R23
      344 JUMP                             ; [+3]
      345 LOADB                            R17 1
      346 MOVE                             R18 R22
      347 LOADNIL                          R19
      348 MOVE                             R14 R17
      349 MOVE                             R16 R18
      350 MOVE                             R15 R19
      351 JUMPIFNOT                        R14 ; [+161]
      352 JUMPIFNOT                        R16 ; [+160]
      353 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      355 MOVE                             R18 R13
      356 MOVE                             R19 R16
      357 GETIMPORT                        R17 K60 [table.insert]
      359 CALL                             R17 2 0
      360 JUMP                             ; [+152]
      361 GETIMPORT                        R16 K62 [Enum.AssetType.Decal]
      363 JUMPIFEQ                         R8 R16 ; [+5]
      365 GETIMPORT                        R16 K64 [Enum.AssetType.Image]
      367 JUMPIFNOTEQ                      R8 R16 ; [+42]
      369 LOADNIL                          R16
      370 MOVE                             R20 R2
      371 GETIMPORT                        R22 K64 [Enum.AssetType.Image]
      373 JUMPIFEQ                         R8 R22 ; [+2]
      375 LOADB                            R21 0 +1
      376 LOADB                            R21 1
      377 GETIMPORT                        R22 K56 [pcall]
      379 NEWCLOSURE                       R23 P1
      380 CAPTURE                          VAL R21
      381 CAPTURE                          UPVAL U0
      382 CAPTURE                          VAL R20
      383 CALL                             R22 1 2
      384 JUMPIF                           R22 ; [+9]
      385 LOADB                            R17 0
      386 LOADNIL                          R18
      387 LOADK                            R24 K65 ["Failed to create decal: %*"]
      388 MOVE                             R26 R23
      389 NAMECALL                         R24 R24 K10 ["format"]
      391 CALL                             R24 2 1
      392 MOVE                             R19 R24
      393 JUMP                             ; [+3]
      394 LOADB                            R17 1
      395 MOVE                             R18 R23
      396 LOADNIL                          R19
      397 MOVE                             R14 R17
      398 MOVE                             R16 R18
      399 MOVE                             R15 R19
      400 JUMPIFNOT                        R14 ; [+112]
      401 JUMPIFNOT                        R16 ; [+111]
      402 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      404 MOVE                             R18 R13
      405 MOVE                             R19 R16
      406 GETIMPORT                        R17 K60 [table.insert]
      408 CALL                             R17 2 0
      409 JUMP                             ; [+103]
      410 GETIMPORT                        R16 K67 [Enum.AssetType.Audio]
      412 JUMPIFNOTEQ                      R8 R16 ; [+13]
      414 LOADNIL                          R16
      415 GETUPVAL                         R17 10
      416 MOVE                             R18 R2
      417 MOVE                             R19 R5
      418 CALL                             R17 2 3
      419 MOVE                             R14 R17
      420 MOVE                             R16 R18
      421 MOVE                             R15 R19
      422 JUMPIFNOT                        R14 ; [+90]
      423 JUMPIFNOT                        R16 ; [+89]
      424 MOVE                             R13 R16
      425 JUMP                             ; [+87]
      426 GETIMPORT                        R16 K69 [Enum.AssetType.Video]
      428 JUMPIFNOTEQ                      R8 R16 ; [+35]
      430 LOADNIL                          R16
      431 MOVE                             R20 R2
      432 GETIMPORT                        R21 K56 [pcall]
      434 NEWCLOSURE                       R22 P2
      435 CAPTURE                          UPVAL U0
      436 CAPTURE                          VAL R20
      437 CALL                             R21 1 2
      438 JUMPIF                           R21 ; [+9]
      439 LOADB                            R17 0
      440 LOADNIL                          R18
      441 LOADK                            R23 K70 ["Failed to create video frame: %*"]
      442 MOVE                             R25 R22
      443 NAMECALL                         R23 R23 K10 ["format"]
      445 CALL                             R23 2 1
      446 MOVE                             R19 R23
      447 JUMP                             ; [+3]
      448 LOADB                            R17 1
      449 MOVE                             R18 R22
      450 LOADNIL                          R19
      451 MOVE                             R14 R17
      452 MOVE                             R16 R18
      453 MOVE                             R15 R19
      454 JUMPIFNOT                        R14 ; [+58]
      455 JUMPIFNOT                        R16 ; [+57]
      456 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      458 MOVE                             R18 R13
      459 MOVE                             R19 R16
      460 GETIMPORT                        R17 K60 [table.insert]
      462 CALL                             R17 2 0
      463 JUMP                             ; [+49]
      464 GETIMPORT                        R16 K72 [Enum.AssetType.Animation]
      466 JUMPIFNOTEQ                      R8 R16 ; [+37]
      468 LOADNIL                          R16
      469 MOVE                             R20 R3
      470 GETIMPORT                        R21 K56 [pcall]
      472 NEWCLOSURE                       R22 P3
      473 CAPTURE                          UPVAL U0
      474 CAPTURE                          VAL R20
      475 CALL                             R21 1 2
      476 JUMPIF                           R21 ; [+9]
      477 LOADB                            R17 0
      478 LOADNIL                          R18
      479 LOADK                            R23 K73 ["Failed to load animation asset: %*"]
      480 MOVE                             R25 R22
      481 NAMECALL                         R23 R23 K10 ["format"]
      483 CALL                             R23 2 1
      484 MOVE                             R19 R23
      485 JUMP                             ; [+11]
      486 JUMPIFNOT                        R22 ; [+3]
      487 LENGTH                           R23 R22
      488 JUMPIFNOTEQKN                    R23 K38 [0] ; [+5]
      490 LOADB                            R17 0
      491 LOADNIL                          R18
      492 LOADK                            R19 K74 ["GetObjects returned empty result for animation"]
      493 JUMP                             ; [+3]
      494 LOADB                            R17 1
      495 MOVE                             R18 R22
      496 LOADNIL                          R19
      497 MOVE                             R14 R17
      498 MOVE                             R16 R18
      499 MOVE                             R15 R19
      500 JUMPIFNOT                        R14 ; [+12]
      501 JUMPIFNOT                        R16 ; [+11]
      502 MOVE                             R13 R16
      503 JUMP                             ; [+9]
      504 GETUPVAL                         R16 2
      505 LOADK                            R18 K75 ["Unhandled asset type: %*"]
      506 MOVE                             R20 R9
      507 NAMECALL                         R18 R18 K10 ["format"]
      509 CALL                             R18 2 1
      510 MOVE                             R17 R18
      511 CALL                             R16 1 1
      512 RETURN                           R16 1
      513 JUMPIFNOT                        R14 ; [+3]
      514 LENGTH                           R16 R13
      515 JUMPIFNOTEQKN                    R16 K38 [0] ; [+5]
      517 GETUPVAL                         R16 2
      518 ORK                              R17 R15 K76 ["Failed to load asset instances"]
      519 CALL                             R16 1 1
      520 RETURN                           R16 1
      521 GETUPVAL                         R16 3
      522 LOADK                            R18 K77 ["[AssetInsertTool] Sanitizing %* instances..."]
      523 LENGTH                           R20 R13
      524 NAMECALL                         R18 R18 K10 ["format"]
      526 CALL                             R18 2 1
      527 MOVE                             R17 R18
      528 CALL                             R16 1 0
      529 LENGTH                           R18 R13
      530 LOADN                            R16 1
      531 LOADN                            R17 255
      532 FORNPREP                         R16
      533 GETTABLE                         R19 R13 R18
      534 LOADB                            R20 0
      535 GETUPVAL                         R21 3
      536 LOADK                            R23 K78 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      537 MOVE                             R25 R18
      538 GETTABLEKS                       R26 R19 K26 ["Name"]
      540 GETTABLEKS                       R27 R19 K79 ["ClassName"]
      542 LOADK                            R30 K48 ["Model"]
      543 NAMECALL                         R28 R19 K80 ["IsA"]
      545 CALL                             R28 2 1
      546 LOADK                            R31 K50 ["MeshPart"]
      547 NAMECALL                         R29 R19 K80 ["IsA"]
      549 CALL                             R29 2 1
      550 NAMECALL                         R23 R23 K10 ["format"]
      552 CALL                             R23 6 1
      553 MOVE                             R22 R23
      554 CALL                             R21 1 0
      555 GETUPVAL                         R21 11
      556 MOVE                             R22 R19
      557 CALL                             R21 1 2
      558 JUMPIF                           R21 ; [+12]
      559 GETUPVAL                         R23 3
      560 LOADK                            R25 K81 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      561 GETTABLEKS                       R27 R19 K79 ["ClassName"]
      563 MOVE                             R28 R22
      564 NAMECALL                         R25 R25 K10 ["format"]
      566 CALL                             R25 3 1
      567 MOVE                             R24 R25
      568 CALL                             R23 1 0
      569 LOADB                            R20 1
      570 JUMP                             ; [+27]
      571 LOADK                            R25 K50 ["MeshPart"]
      572 NAMECALL                         R23 R19 K80 ["IsA"]
      574 CALL                             R23 2 1
      575 JUMPIFNOT                        R23 ; [+22]
      576 NAMECALL                         R26 R19 K82 ["GetChildren"]
      578 CALL                             R26 1 1
      579 LENGTH                           R25 R26
      580 LOADN                            R26 0
      581 JUMPIFNOTLT                      R26 R25 ; [+4]
      583 NAMECALL                         R25 R19 K83 ["ClearAllChildren"]
      585 CALL                             R25 1 0
      586 LOADB                            R23 1
      587 LOADNIL                          R24
      588 JUMPIF                           R23 ; [+9]
      589 GETUPVAL                         R25 3
      590 LOADK                            R27 K84 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      591 MOVE                             R29 R24
      592 NAMECALL                         R27 R27 K10 ["format"]
      594 CALL                             R27 2 1
      595 MOVE                             R26 R27
      596 CALL                             R25 1 0
      597 LOADB                            R20 1
      598 JUMPIFNOT                        R20 ; [+15]
      599 GETUPVAL                         R23 3
      600 LOADK                            R25 K85 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      601 MOVE                             R27 R18
      602 GETTABLEKS                       R28 R19 K26 ["Name"]
      604 NAMECALL                         R25 R25 K10 ["format"]
      606 CALL                             R25 3 1
      607 MOVE                             R24 R25
      608 CALL                             R23 1 0
      609 GETIMPORT                        R23 K87 [table.remove]
      611 MOVE                             R24 R13
      612 MOVE                             R25 R18
      613 CALL                             R23 2 0
      614 FORNLOOP                         R16
      615 GETUPVAL                         R16 3
      616 LOADK                            R18 K88 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      617 LENGTH                           R20 R13
      618 NAMECALL                         R18 R18 K10 ["format"]
      620 CALL                             R18 2 1
      621 MOVE                             R17 R18
      622 CALL                             R16 1 0
      623 LENGTH                           R16 R13
      624 JUMPIFNOTEQKN                    R16 K38 [0] ; [+5]
      626 GETUPVAL                         R16 2
      627 LOADK                            R17 K89 ["All instances failed sanitization"]
      628 CALL                             R16 1 1
      629 RETURN                           R16 1
      630 GETUPVAL                         R16 3
      631 LOADK                            R18 K90 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      632 LENGTH                           R20 R13
      633 NAMECALL                         R18 R18 K10 ["format"]
      635 CALL                             R18 2 1
      636 MOVE                             R17 R18
      637 CALL                             R16 1 0
      638 GETUPVAL                         R16 3
      639 LOADK                            R18 K91 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      640 MOVE                             R20 R3
      641 LENGTH                           R21 R13
      642 NAMECALL                         R18 R18 K10 ["format"]
      644 CALL                             R18 3 1
      645 MOVE                             R17 R18
      646 CALL                             R16 1 0
      647 MOVE                             R16 R13
      648 LOADNIL                          R17
      649 LOADNIL                          R18
      650 FORGPREP                         R16
      651 GETUPVAL                         R21 12
      652 MOVE                             R22 R3
      653 MOVE                             R23 R20
      654 CALL                             R21 2 0
      655 FORGLOOP                         R16 2 ; [-5]
      657 GETUPVAL                         R16 13
      658 LOADB                            R18 0
      659 NAMECALL                         R16 R16 K92 ["GenerateGUID"]
      661 CALL                             R16 2 1
      662 GETUPVAL                         R18 14
      663 CALL                             R18 0 1
      664 JUMPIFNOT                        R18 ; [+7]
      665 GETUPVAL                         R17 15
      666 GETTABLEKS                       R17 R17 K93 ["getUniqueTag"]
      668 LOADK                            R18 K94 ["Insert"]
      669 MOVE                             R19 R16
      670 CALL                             R17 2 1
      671 JUMP                             ; [+3]
      672 LOADK                            R18 K95 ["Assistant:"]
      673 MOVE                             R19 R16
      674 CONCAT                           R17 R18 R19
      675 GETUPVAL                         R18 13
      676 LOADB                            R20 0
      677 NAMECALL                         R18 R18 K92 ["GenerateGUID"]
      679 CALL                             R18 2 1
      680 GETUPVAL                         R19 3
      681 LOADK                            R21 K96 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      682 MOVE                             R23 R16
      683 MOVE                             R24 R17
      684 NAMECALL                         R21 R21 K10 ["format"]
      686 CALL                             R21 3 1
      687 MOVE                             R20 R21
      688 CALL                             R19 1 0
      689 GETUPVAL                         R19 16
      690 GETTABLEKS                       R20 R0 K9 ["parentPath"]
      692 CALL                             R19 1 2
      693 GETUPVAL                         R21 3
      694 LOADK                            R23 K97 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      695 NAMECALL                         R25 R19 K98 ["GetFullName"]
      697 CALL                             R25 1 1
      698 ORK                              R26 R20 K99 ["none"]
      699 NAMECALL                         R23 R23 K10 ["format"]
      701 CALL                             R23 3 1
      702 MOVE                             R22 R23
      703 CALL                             R21 1 0
      704 GETTABLEN                        R21 R13 1
      705 GETTABLEKS                       R21 R21 K79 ["ClassName"]
      707 GETTABLEKS                       R22 R1 K32 ["toolArgs"]
      709 GETTABLEKS                       R22 R22 K33 ["environment"]
      711 GETTABLEKS                       R23 R22 K100 ["startRecording"]
      713 MOVE                             R24 R18
      714 CALL                             R23 1 0
      715 NEWTABLE                         R23 0 0
      717 MOVE                             R24 R13
      718 LOADNIL                          R25
      719 LOADNIL                          R26
      720 FORGPREP                         R24
      721 SETTABLEKS                       R5 R28 K26 ["Name"]
      723 MOVE                             R31 R17
      724 NAMECALL                         R29 R28 K101 ["AddTag"]
      726 CALL                             R29 2 0
      727 LOADK                            R31 K102 ["PVInstance"]
      728 NAMECALL                         R29 R28 K80 ["IsA"]
      730 CALL                             R29 2 1
      731 JUMPIFNOT                        R29 ; [+6]
      732 GETUPVAL                         R29 17
      733 GETTABLEKS                       R29 R29 K103 ["setPositionOnGround"]
      735 MOVE                             R30 R28
      736 LOADB                            R31 1
      737 CALL                             R29 2 0
      738 SETTABLEKS                       R19 R28 K104 ["Parent"]
      740 GETUPVAL                         R29 3
      741 LOADK                            R31 K105 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      742 GETTABLEKS                       R33 R28 K26 ["Name"]
      744 GETTABLEKS                       R34 R28 K79 ["ClassName"]
      746 GETUPVAL                         R35 18
      747 MOVE                             R36 R28
      748 CALL                             R35 1 1
      749 NAMECALL                         R31 R31 K10 ["format"]
      751 CALL                             R31 4 1
      752 MOVE                             R30 R31
      753 CALL                             R29 1 0
      754 DUPTABLE                         R31 K109 [{"name", "className", "fullPath"}]
      755 GETTABLEKS                       R32 R28 K26 ["Name"]
      757 SETTABLEKS                       R32 R31 K106 ["name"]
      759 GETTABLEKS                       R32 R28 K79 ["ClassName"]
      761 SETTABLEKS                       R32 R31 K107 ["className"]
      763 GETUPVAL                         R32 18
      764 MOVE                             R33 R28
      765 CALL                             R32 1 1
      766 SETTABLEKS                       R32 R31 K108 ["fullPath"]
      768 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      770 MOVE                             R30 R23
      771 GETIMPORT                        R29 K60 [table.insert]
      773 CALL                             R29 2 0
      774 FORGLOOP                         R24 2 ; [-54]
      776 GETTABLEKS                       R24 R22 K110 ["endRecording"]
      778 MOVE                             R25 R18
      779 CALL                             R24 1 0
      780 GETUPVAL                         R24 3
      781 LOADK                            R25 K111 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      782 CALL                             R24 1 0
      783 GETUPVAL                         R24 13
      784 DUPTABLE                         R26 K119 [{"status", "insertGuid", "tag", "assetId", "assetName", "assetType", "isPackage", "insertedInstances", "parentWarning", "permissionWarning"}]
      785 LOADK                            R27 K120 ["success"]
      786 SETTABLEKS                       R27 R26 K112 ["status"]
      788 SETTABLEKS                       R16 R26 K113 ["insertGuid"]
      790 SETTABLEKS                       R17 R26 K114 ["tag"]
      792 SETTABLEKS                       R2 R26 K4 ["assetId"]
      794 SETTABLEKS                       R5 R26 K7 ["assetName"]
      796 SETTABLEKS                       R9 R26 K8 ["assetType"]
      798 SETTABLEKS                       R7 R26 K115 ["isPackage"]
      800 SETTABLEKS                       R23 R26 K116 ["insertedInstances"]
      802 SETTABLEKS                       R20 R26 K117 ["parentWarning"]
      804 SETTABLEKS                       R10 R26 K118 ["permissionWarning"]
      806 NAMECALL                         R24 R24 K121 ["JSONEncode"]
      808 CALL                             R24 2 1
      809 DUPTABLE                         R25 K124 [{"result", "responseInfo"}]
      810 SETTABLEKS                       R24 R25 K122 ["result"]
      812 DUPTABLE                         R26 K125 [{"tag", "assetName", "insertGuid", "className"}]
      813 SETTABLEKS                       R17 R26 K114 ["tag"]
      815 SETTABLEKS                       R5 R26 K7 ["assetName"]
      817 SETTABLEKS                       R16 R26 K113 ["insertGuid"]
      819 SETTABLEKS                       R21 R26 K107 ["className"]
      821 SETTABLEKS                       R26 R25 K123 ["responseInfo"]
      823 RETURN                           R25 1

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
       39 GETTABLEKS                       R7 R0 K14 ["Parent"]
       41 GETTABLEKS                       R7 R7 K15 ["AssetInsertFramework"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Util"]
       48 GETTABLEKS                       R8 R8 K17 ["DataModelType"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Util"]
       55 GETTABLEKS                       R9 R9 K18 ["Tagging"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K13 [require]
       60 GETTABLEKS                       R10 R0 K16 ["Util"]
       62 GETTABLEKS                       R10 R10 K19 ["ToolUtils"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K13 [require]
       67 GETTABLEKS                       R11 R0 K20 ["Resources"]
       69 GETTABLEKS                       R11 R11 K21 ["Localization"]
       71 GETTABLEKS                       R11 R11 K22 ["Translator"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K1 [script]
       76 LOADK                            R13 K23 ["AssetManagement"]
       77 NAMECALL                         R11 R11 K3 ["FindFirstAncestor"]
       79 CALL                             R11 2 1
       80 GETIMPORT                        R12 K13 [require]
       82 GETTABLEKS                       R13 R11 K24 ["AssetManagementConstants"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K13 [require]
       87 GETTABLEKS                       R14 R11 K25 ["AssetManagementUrls"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K13 [require]
       92 GETTABLEKS                       R15 R11 K26 ["AssetManagementUtils"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K13 [require]
       97 GETIMPORT                        R16 K1 [script]
       99 GETTABLEKS                       R16 R16 K14 ["Parent"]
      101 GETTABLEKS                       R16 R16 K27 ["AssetInsertBridgeTypes"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K13 [require]
      106 GETTABLEKS                       R17 R0 K28 ["Flags"]
      108 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantUseNewTags"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R17 R6 K30 ["Utils"]
      113 GETTABLEKS                       R17 R17 K31 ["assignSourceAssetId"]
      115 GETTABLEKS                       R18 R6 K30 ["Utils"]
      117 GETTABLEKS                       R18 R18 K32 ["grantUniversePermissions"]
      119 GETTABLEKS                       R19 R14 K33 ["debugPrint"]
      121 DUPTABLE                         R20 K46 [{"getObjects", "getItemDetails", "loadPackageAssetAsync", "createMeshPartAsync", "getAudioApiByDefault", "insertAudioAsset", "findService", "getDataModelType", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      122 DUPCLOSURE                       R21 K47 [PROTO_0]
      123 SETTABLEKS                       R21 R20 K34 ["getObjects"]
      125 DUPCLOSURE                       R21 K48 [PROTO_1]
      126 CAPTURE                          VAL R13
      127 SETTABLEKS                       R21 R20 K35 ["getItemDetails"]
      129 DUPCLOSURE                       R21 K49 [PROTO_2]
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R21 R20 K36 ["loadPackageAssetAsync"]
      133 DUPCLOSURE                       R21 K50 [PROTO_3]
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R21 R20 K37 ["createMeshPartAsync"]
      137 DUPCLOSURE                       R21 K51 [PROTO_4]
      138 CAPTURE                          VAL R5
      139 SETTABLEKS                       R21 R20 K38 ["getAudioApiByDefault"]
      141 DUPCLOSURE                       R21 K52 [PROTO_5]
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R21 R20 K39 ["insertAudioAsset"]
      145 DUPCLOSURE                       R21 K53 [PROTO_6]
      146 SETTABLEKS                       R21 R20 K40 ["findService"]
      148 DUPCLOSURE                       R21 K54 [PROTO_7]
      149 CAPTURE                          VAL R7
      150 SETTABLEKS                       R21 R20 K41 ["getDataModelType"]
      152 DUPCLOSURE                       R21 K55 [PROTO_8]
      153 SETTABLEKS                       R21 R20 K42 ["createDecal"]
      155 DUPCLOSURE                       R21 K56 [PROTO_9]
      156 SETTABLEKS                       R21 R20 K43 ["createDecalFromImage"]
      158 DUPCLOSURE                       R21 K57 [PROTO_10]
      159 SETTABLEKS                       R21 R20 K44 ["createSound"]
      161 DUPCLOSURE                       R21 K58 [PROTO_11]
      162 SETTABLEKS                       R21 R20 K45 ["createVideoFrame"]
      164 DUPCLOSURE                       R21 K59 [PROTO_12]
      165 CAPTURE                          VAL R3
      166 GETTABLEKS                       R22 R12 K60 ["ASSET_TYPE_ID_MAP"]
      168 GETTABLEKS                       R23 R12 K61 ["ASSET_TYPE_NAME_TO_ID"]
      170 DUPCLOSURE                       R24 K62 [PROTO_13]
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R8
      173 DUPCLOSURE                       R25 K63 [PROTO_14]
      174 CAPTURE                          VAL R2
      175 DUPCLOSURE                       R26 K64 [PROTO_16]
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R10
      179 DUPCLOSURE                       R27 K65 [PROTO_18]
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R3
      183 DUPCLOSURE                       R28 K66 [PROTO_19]
      184 DUPCLOSURE                       R29 K67 [PROTO_20]
      185 DUPCLOSURE                       R30 K68 [PROTO_21]
      186 DUPCLOSURE                       R31 K69 [PROTO_23]
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R19
      189 DUPCLOSURE                       R32 K70 [PROTO_26]
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R9
      193 DUPCLOSURE                       R33 K71 [PROTO_28]
      194 CAPTURE                          VAL R20
      195 DUPCLOSURE                       R34 K72 [PROTO_30]
      196 CAPTURE                          VAL R20
      197 DUPCLOSURE                       R35 K73 [PROTO_34]
      198 CAPTURE                          VAL R20
      199 DUPCLOSURE                       R36 K74 [PROTO_36]
      200 CAPTURE                          VAL R20
      201 DUPCLOSURE                       R37 K75 [PROTO_38]
      202 CAPTURE                          VAL R20
      203 DUPCLOSURE                       R38 K76 [PROTO_39]
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R32
      214 CAPTURE                          VAL R35
      215 CAPTURE                          VAL R31
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R29
      223 DUPTABLE                         R39 K80 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
      224 SETTABLEKS                       R25 R39 K77 ["selectInsertedAssets"]
      226 SETTABLEKS                       R26 R39 K78 ["listenToLinkChanges"]
      228 SETTABLEKS                       R38 R39 K79 ["insertAssetAsync"]
      230 DUPTABLE                         R40 K83 [{"bridge", "_deps"}]
      231 SETTABLEKS                       R39 R40 K81 ["bridge"]
      233 SETTABLEKS                       R20 R40 K82 ["_deps"]
      235 RETURN                           R40 1
