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
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R3 R0 K1 ["tag"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["observeLinkChanges"]
        7 GETTABLEKS                       R5 R1 K3 ["toolArgs"]
        9 GETTABLEKS                       R5 R5 K4 ["networking"]
       11 MOVE                             R6 R3
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findService"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ClassName"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadPackageAssetAsync"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMeshPartAsync"]
        3 GETIMPORT                        R1 K2 [Content]
        5 GETTABLEKS                       R1 R1 K3 ["fromAssetId"]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createDecal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+9]
        7 LOADB                            R3 0
        8 LOADNIL                          R4
        9 LOADK                            R6 K2 ["Failed to create decal: %*"]
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
        1 GETTABLEKS                       R0 R0 K0 ["getAudioApiByDefault"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAudioAsset"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 ORK                              R2 R3 K1 ["Audio"]
        6 LOADB                            R3 0
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSound"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_32:
        0 LOADB                            R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 DUPCLOSURE                       R4 K2 [PROTO_29]
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createVideoFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObjects"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 ["Edit"] ; [+5]
        6 GETUPVAL                         R2 1
        7 LOADK                            R3 K2 ["Cannot insert assets outside of Edit mode"]
        8 CALL                             R2 1 1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K3 ["assetId"]
       12 GETUPVAL                         R3 2
       13 LOADK                            R5 K4 ["[AssetInsertTool] === INSERT START === input assetId=%*, assetName=%*, assetType=%*, parentPath=%*"]
       14 MOVE                             R7 R2
       15 GETTABLEKS                       R9 R0 K6 ["assetName"]
       17 ORK                              R8 R9 K5 ["nil"]
       18 GETTABLEKS                       R10 R0 K7 ["assetType"]
       20 ORK                              R9 R10 K5 ["nil"]
       21 GETTABLEKS                       R11 R0 K8 ["parentPath"]
       23 ORK                              R10 R11 K5 ["nil"]
       24 NAMECALL                         R5 R5 K9 ["format"]
       26 CALL                             R5 5 1
       27 MOVE                             R4 R5
       28 CALL                             R3 1 0
       29 FASTCALL1                        TONUMBER R2 ; [+3]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K11 [tonumber]
       33 CALL                             R3 1 1
       34 JUMPIF                           R3 ; [+9]
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K12 ["Invalid asset ID: %*"]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K9 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 CALL                             R4 1 1
       43 RETURN                           R4 1
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 GETTABLEKS                       R7 R0 K7 ["assetType"]
       49 JUMPIFNOT                        R7 ; [+35]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R9 R0 K7 ["assetType"]
       53 GETTABLE                         R7 R8 R9
       54 JUMPIFNOT                        R7 ; [+30]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R8 R0 K7 ["assetType"]
       58 GETTABLE                         R4 R7 R8
       59 GETTABLEKS                       R7 R0 K6 ["assetName"]
       61 ORK                              R5 R7 K13 ["Asset"]
       62 GETTABLEKS                       R7 R0 K7 ["assetType"]
       64 JUMPIFNOTEQKS                    R7 K14 ["Package"] ; [+8]
       66 NEWTABLE                         R7 0 1
       68 LOADK                            R8 K14 ["Package"]
       69 SETLIST                          R7 R8 1 [1]
       71 MOVE                             R6 R7
       72 JUMP                             ; [+1]
       73 LOADNIL                          R6
       74 GETUPVAL                         R7 2
       75 LOADK                            R9 K15 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       76 GETTABLEKS                       R11 R0 K7 ["assetType"]
       78 MOVE                             R12 R4
       79 NAMECALL                         R9 R9 K9 ["format"]
       81 CALL                             R9 3 1
       82 MOVE                             R8 R9
       83 CALL                             R7 1 0
       84 JUMP                             ; [+88]
       85 GETTABLEKS                       R7 R0 K7 ["assetType"]
       87 JUMPIFNOT                        R7 ; [+9]
       88 GETUPVAL                         R7 2
       89 LOADK                            R9 K16 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
       90 GETTABLEKS                       R11 R0 K7 ["assetType"]
       92 NAMECALL                         R9 R9 K9 ["format"]
       94 CALL                             R9 2 1
       95 MOVE                             R8 R9
       96 CALL                             R7 1 0
       97 GETUPVAL                         R7 4
       98 MOVE                             R8 R2
       99 CALL                             R7 1 2
      100 JUMPIF                           R7 ; [+4]
      101 GETUPVAL                         R9 1
      102 MOVE                             R10 R8
      103 CALL                             R9 1 1
      104 RETURN                           R9 1
      105 GETTABLEKS                       R9 R8 K17 ["AssetId"]
      107 JUMPIFNOT                        R9 ; [+45]
      108 GETTABLEKS                       R10 R8 K17 ["AssetId"]
      110 FASTCALL1                        TOSTRING R10 ; [+2]
      111 GETIMPORT                        R9 K19 [tostring]
      113 CALL                             R9 1 1
      114 JUMPIFEQ                         R9 R2 ; [+29]
      116 GETUPVAL                         R10 2
      117 LOADK                            R12 K20 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      118 MOVE                             R14 R2
      119 MOVE                             R15 R9
      120 NAMECALL                         R12 R12 K9 ["format"]
      122 CALL                             R12 3 1
      123 MOVE                             R11 R12
      124 CALL                             R10 1 0
      125 MOVE                             R2 R9
      126 FASTCALL1                        TONUMBER R2 ; [+3]
      127 MOVE                             R11 R2
      128 GETIMPORT                        R10 K11 [tonumber]
      130 CALL                             R10 1 1
      131 MOVE                             R3 R10
      132 JUMPIF                           R3 ; [+28]
      133 GETUPVAL                         R10 1
      134 LOADK                            R12 K21 ["Resolved asset ID is not a valid number: "]
      135 FASTCALL1                        TOSTRING R2 ; [+3]
      136 MOVE                             R14 R2
      137 GETIMPORT                        R13 K19 [tostring]
      139 CALL                             R13 1 1
      140 CONCAT                           R11 R12 R13
      141 CALL                             R10 1 1
      142 RETURN                           R10 1
      143 JUMP                             ; [+17]
      144 GETUPVAL                         R10 2
      145 LOADK                            R12 K22 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      146 MOVE                             R14 R2
      147 NAMECALL                         R12 R12 K9 ["format"]
      149 CALL                             R12 2 1
      150 MOVE                             R11 R12
      151 CALL                             R10 1 0
      152 JUMP                             ; [+8]
      153 GETUPVAL                         R9 2
      154 LOADK                            R11 K23 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      155 MOVE                             R13 R2
      156 NAMECALL                         R11 R11 K9 ["format"]
      158 CALL                             R11 2 1
      159 MOVE                             R10 R11
      160 CALL                             R9 1 0
      161 GETTABLEKS                       R4 R8 K24 ["AssetTypeId"]
      163 GETTABLEKS                       R9 R0 K6 ["assetName"]
      165 JUMPIF                           R9 ; [+4]
      166 GETTABLEKS                       R9 R8 K25 ["Name"]
      168 JUMPIF                           R9 ; [+1]
      169 LOADK                            R9 K13 ["Asset"]
      170 MOVE                             R5 R9
      171 GETTABLEKS                       R6 R8 K26 ["AssetSubTypes"]
      173 GETUPVAL                         R7 2
      174 LOADK                            R9 K27 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      175 MOVE                             R11 R2
      176 MOVE                             R12 R3
      177 MOVE                             R13 R4
      178 MOVE                             R14 R5
      179 JUMPIFNOT                        R6 ; [+2]
      180 LENGTH                           R15 R6
      181 JUMPIF                           R15 ; [+1]
      182 LOADN                            R15 0
      183 NAMECALL                         R9 R9 K9 ["format"]
      185 CALL                             R9 6 1
      186 MOVE                             R8 R9
      187 CALL                             R7 1 0
      188 GETUPVAL                         R7 5
      189 GETTABLEKS                       R7 R7 K28 ["isPackageAsset"]
      191 MOVE                             R8 R4
      192 MOVE                             R9 R6
      193 CALL                             R7 2 1
      194 GETUPVAL                         R9 6
      195 GETTABLE                         R8 R9 R4
      196 JUMPIF                           R8 ; [+9]
      197 GETUPVAL                         R9 1
      198 LOADK                            R11 K29 ["Unsupported asset type ID: %*"]
      199 MOVE                             R13 R4
      200 NAMECALL                         R11 R11 K9 ["format"]
      202 CALL                             R11 2 1
      203 MOVE                             R10 R11
      204 CALL                             R9 1 1
      205 RETURN                           R9 1
      206 GETTABLEKS                       R9 R8 K25 ["Name"]
      208 GETUPVAL                         R10 2
      209 LOADK                            R12 K30 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      210 MOVE                             R14 R9
      211 MOVE                             R15 R7
      212 NAMECALL                         R12 R12 K9 ["format"]
      214 CALL                             R12 3 1
      215 MOVE                             R11 R12
      216 CALL                             R10 1 0
      217 LOADNIL                          R10
      218 NEWTABLE                         R11 0 0
      220 GETTABLEKS                       R12 R1 K31 ["toolArgs"]
      222 GETTABLEKS                       R12 R12 K32 ["environment"]
      224 GETTABLEKS                       R12 R12 K33 ["assetAccessController"]
      226 JUMPIFNOT                        R12 ; [+29]
      227 GETIMPORT                        R13 K35 [game]
      229 GETTABLEKS                       R13 R13 K36 ["GameId"]
      231 JUMPIFEQKN                       R13 K37 [0] ; [+24]
      233 GETUPVAL                         R13 2
      234 LOADK                            R15 K38 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      235 MOVE                             R17 R3
      236 MOVE                             R18 R9
      237 NAMECALL                         R15 R15 K9 ["format"]
      239 CALL                             R15 3 1
      240 MOVE                             R14 R15
      241 CALL                             R13 1 0
      242 GETUPVAL                         R13 7
      243 NEWTABLE                         R14 0 1
      245 MOVE                             R15 R3
      246 SETLIST                          R14 R15 1 [1]
      248 NEWTABLE                         R15 0 1
      250 MOVE                             R16 R8
      251 SETLIST                          R15 R16 1 [1]
      253 MOVE                             R16 R12
      254 CALL                             R13 3 1
      255 MOVE                             R11 R13
      256 GETIMPORT                        R13 K40 [next]
      258 MOVE                             R14 R11
      259 CALL                             R13 1 1
      260 JUMPIFNOT                        R13 ; [+23]
      261 MOVE                             R13 R11
      262 LOADNIL                          R14
      263 LOADNIL                          R15
      264 FORGPREP                         R13
      265 LOADK                            R19 K41 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      266 MOVE                             R21 R16
      267 NAMECALL                         R19 R19 K9 ["format"]
      269 CALL                             R19 2 1
      270 MOVE                             R18 R19
      271 ORK                              R19 R10 K42 [""]
      272 MOVE                             R20 R18
      273 CONCAT                           R10 R19 R20
      274 FORGLOOP                         R13 2 ; [-10]
      276 GETUPVAL                         R13 2
      277 LOADK                            R15 K43 ["[AssetInsertTool] %*"]
      278 MOVE                             R17 R10
      279 NAMECALL                         R15 R15 K9 ["format"]
      281 CALL                             R15 2 1
      282 MOVE                             R14 R15
      283 CALL                             R13 1 0
      284 GETTABLE                         R13 R11 R3
      285 JUMPIFNOT                        R13 ; [+4]
      286 GETUPVAL                         R13 1
      287 ORK                              R14 R10 K44 ["Failed to grant required permissions for asset"]
      288 CALL                             R13 1 1
      289 RETURN                           R13 1
      290 NEWTABLE                         R13 0 0
      292 LOADNIL                          R14
      293 LOADNIL                          R15
      294 GETIMPORT                        R16 K48 [Enum.AssetType.Model]
      296 JUMPIFEQ                         R8 R16 ; [+9]
      298 GETIMPORT                        R16 K50 [Enum.AssetType.MeshPart]
      300 JUMPIFEQ                         R8 R16 ; [+5]
      302 GETIMPORT                        R16 K51 [Enum.AssetType.Package]
      304 JUMPIFNOTEQ                      R8 R16 ; [+13]
      306 LOADNIL                          R16
      307 GETUPVAL                         R17 8
      308 MOVE                             R18 R2
      309 MOVE                             R19 R7
      310 CALL                             R17 2 3
      311 MOVE                             R14 R17
      312 MOVE                             R16 R18
      313 MOVE                             R15 R19
      314 JUMPIFNOT                        R14 ; [+182]
      315 JUMPIFNOT                        R16 ; [+181]
      316 MOVE                             R13 R16
      317 JUMP                             ; [+179]
      318 GETIMPORT                        R16 K53 [Enum.AssetType.Mesh]
      320 JUMPIFNOTEQ                      R8 R16 ; [+35]
      322 LOADNIL                          R16
      323 MOVE                             R20 R3
      324 GETIMPORT                        R21 K55 [pcall]
      326 NEWCLOSURE                       R22 P0
      327 CAPTURE                          UPVAL U0
      328 CAPTURE                          VAL R20
      329 CALL                             R21 1 2
      330 JUMPIF                           R21 ; [+9]
      331 LOADB                            R17 0
      332 LOADNIL                          R18
      333 LOADK                            R23 K56 ["Failed to create mesh part: %*"]
      334 MOVE                             R25 R22
      335 NAMECALL                         R23 R23 K9 ["format"]
      337 CALL                             R23 2 1
      338 MOVE                             R19 R23
      339 JUMP                             ; [+3]
      340 LOADB                            R17 1
      341 MOVE                             R18 R22
      342 LOADNIL                          R19
      343 MOVE                             R14 R17
      344 MOVE                             R16 R18
      345 MOVE                             R15 R19
      346 JUMPIFNOT                        R14 ; [+150]
      347 JUMPIFNOT                        R16 ; [+149]
      348 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      350 MOVE                             R18 R13
      351 MOVE                             R19 R16
      352 GETIMPORT                        R17 K59 [table.insert]
      354 CALL                             R17 2 0
      355 JUMP                             ; [+141]
      356 GETIMPORT                        R16 K61 [Enum.AssetType.Decal]
      358 JUMPIFNOTEQ                      R8 R16 ; [+35]
      360 LOADNIL                          R16
      361 MOVE                             R20 R2
      362 GETIMPORT                        R21 K55 [pcall]
      364 NEWCLOSURE                       R22 P1
      365 CAPTURE                          UPVAL U0
      366 CAPTURE                          VAL R20
      367 CALL                             R21 1 2
      368 JUMPIF                           R21 ; [+9]
      369 LOADB                            R17 0
      370 LOADNIL                          R18
      371 LOADK                            R23 K62 ["Failed to create decal: %*"]
      372 MOVE                             R25 R22
      373 NAMECALL                         R23 R23 K9 ["format"]
      375 CALL                             R23 2 1
      376 MOVE                             R19 R23
      377 JUMP                             ; [+3]
      378 LOADB                            R17 1
      379 MOVE                             R18 R22
      380 LOADNIL                          R19
      381 MOVE                             R14 R17
      382 MOVE                             R16 R18
      383 MOVE                             R15 R19
      384 JUMPIFNOT                        R14 ; [+112]
      385 JUMPIFNOT                        R16 ; [+111]
      386 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      388 MOVE                             R18 R13
      389 MOVE                             R19 R16
      390 GETIMPORT                        R17 K59 [table.insert]
      392 CALL                             R17 2 0
      393 JUMP                             ; [+103]
      394 GETIMPORT                        R16 K64 [Enum.AssetType.Audio]
      396 JUMPIFNOTEQ                      R8 R16 ; [+13]
      398 LOADNIL                          R16
      399 GETUPVAL                         R17 9
      400 MOVE                             R18 R2
      401 MOVE                             R19 R5
      402 CALL                             R17 2 3
      403 MOVE                             R14 R17
      404 MOVE                             R16 R18
      405 MOVE                             R15 R19
      406 JUMPIFNOT                        R14 ; [+90]
      407 JUMPIFNOT                        R16 ; [+89]
      408 MOVE                             R13 R16
      409 JUMP                             ; [+87]
      410 GETIMPORT                        R16 K66 [Enum.AssetType.Video]
      412 JUMPIFNOTEQ                      R8 R16 ; [+35]
      414 LOADNIL                          R16
      415 MOVE                             R20 R2
      416 GETIMPORT                        R21 K55 [pcall]
      418 NEWCLOSURE                       R22 P2
      419 CAPTURE                          UPVAL U0
      420 CAPTURE                          VAL R20
      421 CALL                             R21 1 2
      422 JUMPIF                           R21 ; [+9]
      423 LOADB                            R17 0
      424 LOADNIL                          R18
      425 LOADK                            R23 K67 ["Failed to create video frame: %*"]
      426 MOVE                             R25 R22
      427 NAMECALL                         R23 R23 K9 ["format"]
      429 CALL                             R23 2 1
      430 MOVE                             R19 R23
      431 JUMP                             ; [+3]
      432 LOADB                            R17 1
      433 MOVE                             R18 R22
      434 LOADNIL                          R19
      435 MOVE                             R14 R17
      436 MOVE                             R16 R18
      437 MOVE                             R15 R19
      438 JUMPIFNOT                        R14 ; [+58]
      439 JUMPIFNOT                        R16 ; [+57]
      440 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      442 MOVE                             R18 R13
      443 MOVE                             R19 R16
      444 GETIMPORT                        R17 K59 [table.insert]
      446 CALL                             R17 2 0
      447 JUMP                             ; [+49]
      448 GETIMPORT                        R16 K69 [Enum.AssetType.Animation]
      450 JUMPIFNOTEQ                      R8 R16 ; [+37]
      452 LOADNIL                          R16
      453 MOVE                             R20 R3
      454 GETIMPORT                        R21 K55 [pcall]
      456 NEWCLOSURE                       R22 P3
      457 CAPTURE                          UPVAL U0
      458 CAPTURE                          VAL R20
      459 CALL                             R21 1 2
      460 JUMPIF                           R21 ; [+9]
      461 LOADB                            R17 0
      462 LOADNIL                          R18
      463 LOADK                            R23 K70 ["Failed to load animation asset: %*"]
      464 MOVE                             R25 R22
      465 NAMECALL                         R23 R23 K9 ["format"]
      467 CALL                             R23 2 1
      468 MOVE                             R19 R23
      469 JUMP                             ; [+11]
      470 JUMPIFNOT                        R22 ; [+3]
      471 LENGTH                           R23 R22
      472 JUMPIFNOTEQKN                    R23 K37 [0] ; [+5]
      474 LOADB                            R17 0
      475 LOADNIL                          R18
      476 LOADK                            R19 K71 ["GetObjects returned empty result for animation"]
      477 JUMP                             ; [+3]
      478 LOADB                            R17 1
      479 MOVE                             R18 R22
      480 LOADNIL                          R19
      481 MOVE                             R14 R17
      482 MOVE                             R16 R18
      483 MOVE                             R15 R19
      484 JUMPIFNOT                        R14 ; [+12]
      485 JUMPIFNOT                        R16 ; [+11]
      486 MOVE                             R13 R16
      487 JUMP                             ; [+9]
      488 GETUPVAL                         R16 1
      489 LOADK                            R18 K72 ["Unhandled asset type: %*"]
      490 MOVE                             R20 R9
      491 NAMECALL                         R18 R18 K9 ["format"]
      493 CALL                             R18 2 1
      494 MOVE                             R17 R18
      495 CALL                             R16 1 1
      496 RETURN                           R16 1
      497 JUMPIFNOT                        R14 ; [+3]
      498 LENGTH                           R16 R13
      499 JUMPIFNOTEQKN                    R16 K37 [0] ; [+5]
      501 GETUPVAL                         R16 1
      502 ORK                              R17 R15 K73 ["Failed to load asset instances"]
      503 CALL                             R16 1 1
      504 RETURN                           R16 1
      505 GETUPVAL                         R16 2
      506 LOADK                            R18 K74 ["[AssetInsertTool] Sanitizing %* instances..."]
      507 LENGTH                           R20 R13
      508 NAMECALL                         R18 R18 K9 ["format"]
      510 CALL                             R18 2 1
      511 MOVE                             R17 R18
      512 CALL                             R16 1 0
      513 LENGTH                           R18 R13
      514 LOADN                            R16 1
      515 LOADN                            R17 255
      516 FORNPREP                         R16
      517 GETTABLE                         R19 R13 R18
      518 LOADB                            R20 0
      519 GETUPVAL                         R21 2
      520 LOADK                            R23 K75 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      521 MOVE                             R25 R18
      522 GETTABLEKS                       R26 R19 K25 ["Name"]
      524 GETTABLEKS                       R27 R19 K76 ["ClassName"]
      526 LOADK                            R30 K47 ["Model"]
      527 NAMECALL                         R28 R19 K77 ["IsA"]
      529 CALL                             R28 2 1
      530 LOADK                            R31 K49 ["MeshPart"]
      531 NAMECALL                         R29 R19 K77 ["IsA"]
      533 CALL                             R29 2 1
      534 NAMECALL                         R23 R23 K9 ["format"]
      536 CALL                             R23 6 1
      537 MOVE                             R22 R23
      538 CALL                             R21 1 0
      539 GETUPVAL                         R21 10
      540 MOVE                             R22 R19
      541 CALL                             R21 1 2
      542 JUMPIF                           R21 ; [+12]
      543 GETUPVAL                         R23 2
      544 LOADK                            R25 K78 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      545 GETTABLEKS                       R27 R19 K76 ["ClassName"]
      547 MOVE                             R28 R22
      548 NAMECALL                         R25 R25 K9 ["format"]
      550 CALL                             R25 3 1
      551 MOVE                             R24 R25
      552 CALL                             R23 1 0
      553 LOADB                            R20 1
      554 JUMP                             ; [+27]
      555 LOADK                            R25 K49 ["MeshPart"]
      556 NAMECALL                         R23 R19 K77 ["IsA"]
      558 CALL                             R23 2 1
      559 JUMPIFNOT                        R23 ; [+22]
      560 NAMECALL                         R26 R19 K79 ["GetChildren"]
      562 CALL                             R26 1 1
      563 LENGTH                           R25 R26
      564 LOADN                            R26 0
      565 JUMPIFNOTLT                      R26 R25 ; [+4]
      567 NAMECALL                         R25 R19 K80 ["ClearAllChildren"]
      569 CALL                             R25 1 0
      570 LOADB                            R23 1
      571 LOADNIL                          R24
      572 JUMPIF                           R23 ; [+9]
      573 GETUPVAL                         R25 2
      574 LOADK                            R27 K81 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      575 MOVE                             R29 R24
      576 NAMECALL                         R27 R27 K9 ["format"]
      578 CALL                             R27 2 1
      579 MOVE                             R26 R27
      580 CALL                             R25 1 0
      581 LOADB                            R20 1
      582 JUMPIFNOT                        R20 ; [+15]
      583 GETUPVAL                         R23 2
      584 LOADK                            R25 K82 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      585 MOVE                             R27 R18
      586 GETTABLEKS                       R28 R19 K25 ["Name"]
      588 NAMECALL                         R25 R25 K9 ["format"]
      590 CALL                             R25 3 1
      591 MOVE                             R24 R25
      592 CALL                             R23 1 0
      593 GETIMPORT                        R23 K84 [table.remove]
      595 MOVE                             R24 R13
      596 MOVE                             R25 R18
      597 CALL                             R23 2 0
      598 FORNLOOP                         R16
      599 GETUPVAL                         R16 2
      600 LOADK                            R18 K85 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      601 LENGTH                           R20 R13
      602 NAMECALL                         R18 R18 K9 ["format"]
      604 CALL                             R18 2 1
      605 MOVE                             R17 R18
      606 CALL                             R16 1 0
      607 LENGTH                           R16 R13
      608 JUMPIFNOTEQKN                    R16 K37 [0] ; [+5]
      610 GETUPVAL                         R16 1
      611 LOADK                            R17 K86 ["All instances failed sanitization"]
      612 CALL                             R16 1 1
      613 RETURN                           R16 1
      614 GETUPVAL                         R16 2
      615 LOADK                            R18 K87 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      616 LENGTH                           R20 R13
      617 NAMECALL                         R18 R18 K9 ["format"]
      619 CALL                             R18 2 1
      620 MOVE                             R17 R18
      621 CALL                             R16 1 0
      622 GETUPVAL                         R16 2
      623 LOADK                            R18 K88 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      624 MOVE                             R20 R3
      625 LENGTH                           R21 R13
      626 NAMECALL                         R18 R18 K9 ["format"]
      628 CALL                             R18 3 1
      629 MOVE                             R17 R18
      630 CALL                             R16 1 0
      631 MOVE                             R16 R13
      632 LOADNIL                          R17
      633 LOADNIL                          R18
      634 FORGPREP                         R16
      635 GETUPVAL                         R21 11
      636 MOVE                             R22 R3
      637 MOVE                             R23 R20
      638 CALL                             R21 2 0
      639 FORGLOOP                         R16 2 ; [-5]
      641 GETUPVAL                         R16 12
      642 LOADB                            R18 0
      643 NAMECALL                         R16 R16 K89 ["GenerateGUID"]
      645 CALL                             R16 2 1
      646 LOADK                            R18 K90 ["Assistant:"]
      647 MOVE                             R19 R16
      648 CONCAT                           R17 R18 R19
      649 GETUPVAL                         R18 12
      650 LOADB                            R20 0
      651 NAMECALL                         R18 R18 K89 ["GenerateGUID"]
      653 CALL                             R18 2 1
      654 GETUPVAL                         R19 2
      655 LOADK                            R21 K91 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      656 MOVE                             R23 R16
      657 MOVE                             R24 R17
      658 NAMECALL                         R21 R21 K9 ["format"]
      660 CALL                             R21 3 1
      661 MOVE                             R20 R21
      662 CALL                             R19 1 0
      663 GETUPVAL                         R19 13
      664 GETTABLEKS                       R20 R0 K8 ["parentPath"]
      666 CALL                             R19 1 2
      667 GETUPVAL                         R21 2
      668 LOADK                            R23 K92 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      669 NAMECALL                         R25 R19 K93 ["GetFullName"]
      671 CALL                             R25 1 1
      672 ORK                              R26 R20 K94 ["none"]
      673 NAMECALL                         R23 R23 K9 ["format"]
      675 CALL                             R23 3 1
      676 MOVE                             R22 R23
      677 CALL                             R21 1 0
      678 GETTABLEN                        R21 R13 1
      679 GETTABLEKS                       R21 R21 K76 ["ClassName"]
      681 GETTABLEKS                       R22 R1 K31 ["toolArgs"]
      683 GETTABLEKS                       R22 R22 K32 ["environment"]
      685 GETTABLEKS                       R23 R22 K95 ["startRecording"]
      687 MOVE                             R24 R18
      688 CALL                             R23 1 0
      689 NEWTABLE                         R23 0 0
      691 MOVE                             R24 R13
      692 LOADNIL                          R25
      693 LOADNIL                          R26
      694 FORGPREP                         R24
      695 SETTABLEKS                       R5 R28 K25 ["Name"]
      697 MOVE                             R31 R17
      698 NAMECALL                         R29 R28 K96 ["AddTag"]
      700 CALL                             R29 2 0
      701 LOADK                            R31 K97 ["PVInstance"]
      702 NAMECALL                         R29 R28 K77 ["IsA"]
      704 CALL                             R29 2 1
      705 JUMPIFNOT                        R29 ; [+6]
      706 GETUPVAL                         R29 14
      707 GETTABLEKS                       R29 R29 K98 ["setPositionOnGround"]
      709 MOVE                             R30 R28
      710 LOADB                            R31 1
      711 CALL                             R29 2 0
      712 SETTABLEKS                       R19 R28 K99 ["Parent"]
      714 GETUPVAL                         R29 2
      715 LOADK                            R31 K100 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      716 GETTABLEKS                       R33 R28 K25 ["Name"]
      718 GETTABLEKS                       R34 R28 K76 ["ClassName"]
      720 GETUPVAL                         R35 15
      721 MOVE                             R36 R28
      722 CALL                             R35 1 1
      723 NAMECALL                         R31 R31 K9 ["format"]
      725 CALL                             R31 4 1
      726 MOVE                             R30 R31
      727 CALL                             R29 1 0
      728 DUPTABLE                         R31 K104 [{"name", "className", "fullPath"}]
      729 GETTABLEKS                       R32 R28 K25 ["Name"]
      731 SETTABLEKS                       R32 R31 K101 ["name"]
      733 GETTABLEKS                       R32 R28 K76 ["ClassName"]
      735 SETTABLEKS                       R32 R31 K102 ["className"]
      737 GETUPVAL                         R32 15
      738 MOVE                             R33 R28
      739 CALL                             R32 1 1
      740 SETTABLEKS                       R32 R31 K103 ["fullPath"]
      742 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      744 MOVE                             R30 R23
      745 GETIMPORT                        R29 K59 [table.insert]
      747 CALL                             R29 2 0
      748 FORGLOOP                         R24 2 ; [-54]
      750 GETTABLEKS                       R24 R22 K105 ["endRecording"]
      752 MOVE                             R25 R18
      753 CALL                             R24 1 0
      754 GETUPVAL                         R24 2
      755 LOADK                            R25 K106 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      756 CALL                             R24 1 0
      757 GETUPVAL                         R24 12
      758 DUPTABLE                         R26 K114 [{"status", "insertGuid", "tag", "assetId", "assetName", "assetType", "isPackage", "insertedInstances", "parentWarning", "permissionWarning"}]
      759 LOADK                            R27 K115 ["success"]
      760 SETTABLEKS                       R27 R26 K107 ["status"]
      762 SETTABLEKS                       R16 R26 K108 ["insertGuid"]
      764 SETTABLEKS                       R17 R26 K109 ["tag"]
      766 SETTABLEKS                       R2 R26 K3 ["assetId"]
      768 SETTABLEKS                       R5 R26 K6 ["assetName"]
      770 SETTABLEKS                       R9 R26 K7 ["assetType"]
      772 SETTABLEKS                       R7 R26 K110 ["isPackage"]
      774 SETTABLEKS                       R23 R26 K111 ["insertedInstances"]
      776 SETTABLEKS                       R20 R26 K112 ["parentWarning"]
      778 SETTABLEKS                       R10 R26 K113 ["permissionWarning"]
      780 NAMECALL                         R24 R24 K116 ["JSONEncode"]
      782 CALL                             R24 2 1
      783 DUPTABLE                         R25 K119 [{"result", "responseInfo"}]
      784 SETTABLEKS                       R24 R25 K117 ["result"]
      786 DUPTABLE                         R26 K120 [{"tag", "assetName", "insertGuid", "className"}]
      787 SETTABLEKS                       R17 R26 K109 ["tag"]
      789 SETTABLEKS                       R5 R26 K6 ["assetName"]
      791 SETTABLEKS                       R16 R26 K108 ["insertGuid"]
      793 SETTABLEKS                       R21 R26 K102 ["className"]
      795 SETTABLEKS                       R26 R25 K118 ["responseInfo"]
      797 RETURN                           R25 1

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
       55 GETTABLEKS                       R9 R9 K18 ["ToolUtils"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K13 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Resources"]
       62 GETTABLEKS                       R10 R10 K20 ["Localization"]
       64 GETTABLEKS                       R10 R10 K21 ["Translator"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K1 [script]
       69 LOADK                            R12 K22 ["AssetManagement"]
       70 NAMECALL                         R10 R10 K3 ["FindFirstAncestor"]
       72 CALL                             R10 2 1
       73 GETIMPORT                        R11 K13 [require]
       75 GETTABLEKS                       R12 R10 K23 ["AssetManagementConstants"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K13 [require]
       80 GETTABLEKS                       R13 R10 K24 ["AssetManagementUrls"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K13 [require]
       85 GETTABLEKS                       R14 R10 K25 ["AssetManagementUtils"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K13 [require]
       90 GETIMPORT                        R15 K1 [script]
       92 GETTABLEKS                       R15 R15 K14 ["Parent"]
       94 GETTABLEKS                       R15 R15 K26 ["AssetInsertBridgeTypes"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R6 K27 ["Utils"]
       99 GETTABLEKS                       R15 R15 K28 ["assignSourceAssetId"]
      101 GETTABLEKS                       R16 R6 K27 ["Utils"]
      103 GETTABLEKS                       R16 R16 K29 ["grantUniversePermissions"]
      105 GETTABLEKS                       R17 R13 K30 ["debugPrint"]
      107 DUPTABLE                         R18 K42 [{"getObjects", "getItemDetails", "loadPackageAssetAsync", "createMeshPartAsync", "getAudioApiByDefault", "insertAudioAsset", "findService", "getDataModelType", "createDecal", "createSound", "createVideoFrame"}]
      108 DUPCLOSURE                       R19 K43 [PROTO_0]
      109 SETTABLEKS                       R19 R18 K31 ["getObjects"]
      111 DUPCLOSURE                       R19 K44 [PROTO_1]
      112 CAPTURE                          VAL R12
      113 SETTABLEKS                       R19 R18 K32 ["getItemDetails"]
      115 DUPCLOSURE                       R19 K45 [PROTO_2]
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R19 R18 K33 ["loadPackageAssetAsync"]
      119 DUPCLOSURE                       R19 K46 [PROTO_3]
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R19 R18 K34 ["createMeshPartAsync"]
      123 DUPCLOSURE                       R19 K47 [PROTO_4]
      124 CAPTURE                          VAL R5
      125 SETTABLEKS                       R19 R18 K35 ["getAudioApiByDefault"]
      127 DUPCLOSURE                       R19 K48 [PROTO_5]
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R19 R18 K36 ["insertAudioAsset"]
      131 DUPCLOSURE                       R19 K49 [PROTO_6]
      132 SETTABLEKS                       R19 R18 K37 ["findService"]
      134 DUPCLOSURE                       R19 K50 [PROTO_7]
      135 CAPTURE                          VAL R7
      136 SETTABLEKS                       R19 R18 K38 ["getDataModelType"]
      138 DUPCLOSURE                       R19 K51 [PROTO_8]
      139 SETTABLEKS                       R19 R18 K39 ["createDecal"]
      141 DUPCLOSURE                       R19 K52 [PROTO_9]
      142 SETTABLEKS                       R19 R18 K40 ["createSound"]
      144 DUPCLOSURE                       R19 K53 [PROTO_10]
      145 SETTABLEKS                       R19 R18 K41 ["createVideoFrame"]
      147 DUPCLOSURE                       R19 K54 [PROTO_11]
      148 CAPTURE                          VAL R3
      149 GETTABLEKS                       R20 R11 K55 ["ASSET_TYPE_ID_MAP"]
      151 GETTABLEKS                       R21 R11 K56 ["ASSET_TYPE_NAME_TO_ID"]
      153 DUPCLOSURE                       R22 K57 [PROTO_12]
      154 CAPTURE                          VAL R2
      155 DUPCLOSURE                       R23 K58 [PROTO_14]
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R24 K59 [PROTO_16]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R3
      163 DUPCLOSURE                       R25 K60 [PROTO_17]
      164 DUPCLOSURE                       R26 K61 [PROTO_18]
      165 DUPCLOSURE                       R27 K62 [PROTO_19]
      166 DUPCLOSURE                       R28 K63 [PROTO_21]
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R17
      169 DUPCLOSURE                       R29 K64 [PROTO_24]
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R8
      173 DUPCLOSURE                       R30 K65 [PROTO_26]
      174 CAPTURE                          VAL R18
      175 DUPCLOSURE                       R31 K66 [PROTO_28]
      176 CAPTURE                          VAL R18
      177 DUPCLOSURE                       R32 K67 [PROTO_32]
      178 CAPTURE                          VAL R18
      179 DUPCLOSURE                       R33 K68 [PROTO_34]
      180 CAPTURE                          VAL R18
      181 DUPCLOSURE                       R34 K69 [PROTO_36]
      182 CAPTURE                          VAL R18
      183 DUPCLOSURE                       R35 K70 [PROTO_37]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R32
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R26
      200 DUPTABLE                         R36 K74 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
      201 SETTABLEKS                       R22 R36 K71 ["selectInsertedAssets"]
      203 SETTABLEKS                       R23 R36 K72 ["listenToLinkChanges"]
      205 SETTABLEKS                       R35 R36 K73 ["insertAssetAsync"]
      207 DUPTABLE                         R37 K77 [{"bridge", "_deps"}]
      208 SETTABLEKS                       R36 R37 K75 ["bridge"]
      210 SETTABLEKS                       R18 R37 K76 ["_deps"]
      212 RETURN                           R37 1
