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
        9 GETIMPORT                        R2 K7 [UDim2.new]
       11 LOADN                            R3 1
       12 LOADN                            R4 0
       13 LOADN                            R5 1
       14 LOADN                            R6 0
       15 CALL                             R2 4 1
       16 SETTABLEKS                       R2 R1 K8 ["Size"]
       18 RETURN                           R1 1

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
      226 JUMPIFNOT                        R12 ; [+20]
      227 GETIMPORT                        R13 K35 [game]
      229 GETTABLEKS                       R13 R13 K36 ["GameId"]
      231 JUMPIFEQKN                       R13 K37 [0] ; [+15]
      233 GETUPVAL                         R13 7
      234 NEWTABLE                         R14 0 1
      236 MOVE                             R15 R3
      237 SETLIST                          R14 R15 1 [1]
      239 NEWTABLE                         R15 0 1
      241 MOVE                             R16 R8
      242 SETLIST                          R15 R16 1 [1]
      244 MOVE                             R16 R12
      245 CALL                             R13 3 1
      246 MOVE                             R11 R13
      247 GETIMPORT                        R13 K39 [next]
      249 MOVE                             R14 R11
      250 CALL                             R13 1 1
      251 JUMPIFNOT                        R13 ; [+23]
      252 MOVE                             R13 R11
      253 LOADNIL                          R14
      254 LOADNIL                          R15
      255 FORGPREP                         R13
      256 LOADK                            R19 K40 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      257 MOVE                             R21 R16
      258 NAMECALL                         R19 R19 K9 ["format"]
      260 CALL                             R19 2 1
      261 MOVE                             R18 R19
      262 ORK                              R19 R10 K41 [""]
      263 MOVE                             R20 R18
      264 CONCAT                           R10 R19 R20
      265 FORGLOOP                         R13 2 ; [-10]
      267 GETUPVAL                         R13 2
      268 LOADK                            R15 K42 ["[AssetInsertTool] %*"]
      269 MOVE                             R17 R10
      270 NAMECALL                         R15 R15 K9 ["format"]
      272 CALL                             R15 2 1
      273 MOVE                             R14 R15
      274 CALL                             R13 1 0
      275 GETTABLE                         R13 R11 R3
      276 JUMPIFNOT                        R13 ; [+4]
      277 GETUPVAL                         R13 1
      278 ORK                              R14 R10 K43 ["Failed to grant required permissions for asset"]
      279 CALL                             R13 1 1
      280 RETURN                           R13 1
      281 NEWTABLE                         R13 0 0
      283 LOADNIL                          R14
      284 LOADNIL                          R15
      285 GETIMPORT                        R16 K47 [Enum.AssetType.Model]
      287 JUMPIFEQ                         R8 R16 ; [+9]
      289 GETIMPORT                        R16 K49 [Enum.AssetType.MeshPart]
      291 JUMPIFEQ                         R8 R16 ; [+5]
      293 GETIMPORT                        R16 K50 [Enum.AssetType.Package]
      295 JUMPIFNOTEQ                      R8 R16 ; [+13]
      297 LOADNIL                          R16
      298 GETUPVAL                         R17 8
      299 MOVE                             R18 R2
      300 MOVE                             R19 R7
      301 CALL                             R17 2 3
      302 MOVE                             R14 R17
      303 MOVE                             R16 R18
      304 MOVE                             R15 R19
      305 JUMPIFNOT                        R14 ; [+182]
      306 JUMPIFNOT                        R16 ; [+181]
      307 MOVE                             R13 R16
      308 JUMP                             ; [+179]
      309 GETIMPORT                        R16 K52 [Enum.AssetType.Mesh]
      311 JUMPIFNOTEQ                      R8 R16 ; [+35]
      313 LOADNIL                          R16
      314 MOVE                             R20 R3
      315 GETIMPORT                        R21 K54 [pcall]
      317 NEWCLOSURE                       R22 P0
      318 CAPTURE                          UPVAL U0
      319 CAPTURE                          VAL R20
      320 CALL                             R21 1 2
      321 JUMPIF                           R21 ; [+9]
      322 LOADB                            R17 0
      323 LOADNIL                          R18
      324 LOADK                            R23 K55 ["Failed to create mesh part: %*"]
      325 MOVE                             R25 R22
      326 NAMECALL                         R23 R23 K9 ["format"]
      328 CALL                             R23 2 1
      329 MOVE                             R19 R23
      330 JUMP                             ; [+3]
      331 LOADB                            R17 1
      332 MOVE                             R18 R22
      333 LOADNIL                          R19
      334 MOVE                             R14 R17
      335 MOVE                             R16 R18
      336 MOVE                             R15 R19
      337 JUMPIFNOT                        R14 ; [+150]
      338 JUMPIFNOT                        R16 ; [+149]
      339 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      341 MOVE                             R18 R13
      342 MOVE                             R19 R16
      343 GETIMPORT                        R17 K58 [table.insert]
      345 CALL                             R17 2 0
      346 JUMP                             ; [+141]
      347 GETIMPORT                        R16 K60 [Enum.AssetType.Decal]
      349 JUMPIFNOTEQ                      R8 R16 ; [+35]
      351 LOADNIL                          R16
      352 MOVE                             R20 R2
      353 GETIMPORT                        R21 K54 [pcall]
      355 NEWCLOSURE                       R22 P1
      356 CAPTURE                          UPVAL U0
      357 CAPTURE                          VAL R20
      358 CALL                             R21 1 2
      359 JUMPIF                           R21 ; [+9]
      360 LOADB                            R17 0
      361 LOADNIL                          R18
      362 LOADK                            R23 K61 ["Failed to create decal: %*"]
      363 MOVE                             R25 R22
      364 NAMECALL                         R23 R23 K9 ["format"]
      366 CALL                             R23 2 1
      367 MOVE                             R19 R23
      368 JUMP                             ; [+3]
      369 LOADB                            R17 1
      370 MOVE                             R18 R22
      371 LOADNIL                          R19
      372 MOVE                             R14 R17
      373 MOVE                             R16 R18
      374 MOVE                             R15 R19
      375 JUMPIFNOT                        R14 ; [+112]
      376 JUMPIFNOT                        R16 ; [+111]
      377 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      379 MOVE                             R18 R13
      380 MOVE                             R19 R16
      381 GETIMPORT                        R17 K58 [table.insert]
      383 CALL                             R17 2 0
      384 JUMP                             ; [+103]
      385 GETIMPORT                        R16 K63 [Enum.AssetType.Audio]
      387 JUMPIFNOTEQ                      R8 R16 ; [+13]
      389 LOADNIL                          R16
      390 GETUPVAL                         R17 9
      391 MOVE                             R18 R2
      392 MOVE                             R19 R5
      393 CALL                             R17 2 3
      394 MOVE                             R14 R17
      395 MOVE                             R16 R18
      396 MOVE                             R15 R19
      397 JUMPIFNOT                        R14 ; [+90]
      398 JUMPIFNOT                        R16 ; [+89]
      399 MOVE                             R13 R16
      400 JUMP                             ; [+87]
      401 GETIMPORT                        R16 K65 [Enum.AssetType.Video]
      403 JUMPIFNOTEQ                      R8 R16 ; [+35]
      405 LOADNIL                          R16
      406 MOVE                             R20 R2
      407 GETIMPORT                        R21 K54 [pcall]
      409 NEWCLOSURE                       R22 P2
      410 CAPTURE                          UPVAL U0
      411 CAPTURE                          VAL R20
      412 CALL                             R21 1 2
      413 JUMPIF                           R21 ; [+9]
      414 LOADB                            R17 0
      415 LOADNIL                          R18
      416 LOADK                            R23 K66 ["Failed to create video frame: %*"]
      417 MOVE                             R25 R22
      418 NAMECALL                         R23 R23 K9 ["format"]
      420 CALL                             R23 2 1
      421 MOVE                             R19 R23
      422 JUMP                             ; [+3]
      423 LOADB                            R17 1
      424 MOVE                             R18 R22
      425 LOADNIL                          R19
      426 MOVE                             R14 R17
      427 MOVE                             R16 R18
      428 MOVE                             R15 R19
      429 JUMPIFNOT                        R14 ; [+58]
      430 JUMPIFNOT                        R16 ; [+57]
      431 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      433 MOVE                             R18 R13
      434 MOVE                             R19 R16
      435 GETIMPORT                        R17 K58 [table.insert]
      437 CALL                             R17 2 0
      438 JUMP                             ; [+49]
      439 GETIMPORT                        R16 K68 [Enum.AssetType.Animation]
      441 JUMPIFNOTEQ                      R8 R16 ; [+37]
      443 LOADNIL                          R16
      444 MOVE                             R20 R3
      445 GETIMPORT                        R21 K54 [pcall]
      447 NEWCLOSURE                       R22 P3
      448 CAPTURE                          UPVAL U0
      449 CAPTURE                          VAL R20
      450 CALL                             R21 1 2
      451 JUMPIF                           R21 ; [+9]
      452 LOADB                            R17 0
      453 LOADNIL                          R18
      454 LOADK                            R23 K69 ["Failed to load animation asset: %*"]
      455 MOVE                             R25 R22
      456 NAMECALL                         R23 R23 K9 ["format"]
      458 CALL                             R23 2 1
      459 MOVE                             R19 R23
      460 JUMP                             ; [+11]
      461 JUMPIFNOT                        R22 ; [+3]
      462 LENGTH                           R23 R22
      463 JUMPIFNOTEQKN                    R23 K37 [0] ; [+5]
      465 LOADB                            R17 0
      466 LOADNIL                          R18
      467 LOADK                            R19 K70 ["GetObjects returned empty result for animation"]
      468 JUMP                             ; [+3]
      469 LOADB                            R17 1
      470 MOVE                             R18 R22
      471 LOADNIL                          R19
      472 MOVE                             R14 R17
      473 MOVE                             R16 R18
      474 MOVE                             R15 R19
      475 JUMPIFNOT                        R14 ; [+12]
      476 JUMPIFNOT                        R16 ; [+11]
      477 MOVE                             R13 R16
      478 JUMP                             ; [+9]
      479 GETUPVAL                         R16 1
      480 LOADK                            R18 K71 ["Unhandled asset type: %*"]
      481 MOVE                             R20 R9
      482 NAMECALL                         R18 R18 K9 ["format"]
      484 CALL                             R18 2 1
      485 MOVE                             R17 R18
      486 CALL                             R16 1 1
      487 RETURN                           R16 1
      488 JUMPIFNOT                        R14 ; [+3]
      489 LENGTH                           R16 R13
      490 JUMPIFNOTEQKN                    R16 K37 [0] ; [+5]
      492 GETUPVAL                         R16 1
      493 ORK                              R17 R15 K72 ["Failed to load asset instances"]
      494 CALL                             R16 1 1
      495 RETURN                           R16 1
      496 GETUPVAL                         R16 2
      497 LOADK                            R18 K73 ["[AssetInsertTool] Sanitizing %* instances..."]
      498 LENGTH                           R20 R13
      499 NAMECALL                         R18 R18 K9 ["format"]
      501 CALL                             R18 2 1
      502 MOVE                             R17 R18
      503 CALL                             R16 1 0
      504 LENGTH                           R18 R13
      505 LOADN                            R16 1
      506 LOADN                            R17 255
      507 FORNPREP                         R16
      508 GETTABLE                         R19 R13 R18
      509 LOADB                            R20 0
      510 GETUPVAL                         R21 2
      511 LOADK                            R23 K74 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      512 MOVE                             R25 R18
      513 GETTABLEKS                       R26 R19 K25 ["Name"]
      515 GETTABLEKS                       R27 R19 K75 ["ClassName"]
      517 LOADK                            R30 K46 ["Model"]
      518 NAMECALL                         R28 R19 K76 ["IsA"]
      520 CALL                             R28 2 1
      521 LOADK                            R31 K48 ["MeshPart"]
      522 NAMECALL                         R29 R19 K76 ["IsA"]
      524 CALL                             R29 2 1
      525 NAMECALL                         R23 R23 K9 ["format"]
      527 CALL                             R23 6 1
      528 MOVE                             R22 R23
      529 CALL                             R21 1 0
      530 GETUPVAL                         R21 10
      531 MOVE                             R22 R19
      532 CALL                             R21 1 2
      533 JUMPIF                           R21 ; [+12]
      534 GETUPVAL                         R23 2
      535 LOADK                            R25 K77 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      536 GETTABLEKS                       R27 R19 K75 ["ClassName"]
      538 MOVE                             R28 R22
      539 NAMECALL                         R25 R25 K9 ["format"]
      541 CALL                             R25 3 1
      542 MOVE                             R24 R25
      543 CALL                             R23 1 0
      544 LOADB                            R20 1
      545 JUMP                             ; [+27]
      546 LOADK                            R25 K48 ["MeshPart"]
      547 NAMECALL                         R23 R19 K76 ["IsA"]
      549 CALL                             R23 2 1
      550 JUMPIFNOT                        R23 ; [+22]
      551 NAMECALL                         R26 R19 K78 ["GetChildren"]
      553 CALL                             R26 1 1
      554 LENGTH                           R25 R26
      555 LOADN                            R26 0
      556 JUMPIFNOTLT                      R26 R25 ; [+4]
      558 NAMECALL                         R25 R19 K79 ["ClearAllChildren"]
      560 CALL                             R25 1 0
      561 LOADB                            R23 1
      562 LOADNIL                          R24
      563 JUMPIF                           R23 ; [+9]
      564 GETUPVAL                         R25 2
      565 LOADK                            R27 K80 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      566 MOVE                             R29 R24
      567 NAMECALL                         R27 R27 K9 ["format"]
      569 CALL                             R27 2 1
      570 MOVE                             R26 R27
      571 CALL                             R25 1 0
      572 LOADB                            R20 1
      573 JUMPIFNOT                        R20 ; [+15]
      574 GETUPVAL                         R23 2
      575 LOADK                            R25 K81 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      576 MOVE                             R27 R18
      577 GETTABLEKS                       R28 R19 K25 ["Name"]
      579 NAMECALL                         R25 R25 K9 ["format"]
      581 CALL                             R25 3 1
      582 MOVE                             R24 R25
      583 CALL                             R23 1 0
      584 GETIMPORT                        R23 K83 [table.remove]
      586 MOVE                             R24 R13
      587 MOVE                             R25 R18
      588 CALL                             R23 2 0
      589 FORNLOOP                         R16
      590 GETUPVAL                         R16 2
      591 LOADK                            R18 K84 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      592 LENGTH                           R20 R13
      593 NAMECALL                         R18 R18 K9 ["format"]
      595 CALL                             R18 2 1
      596 MOVE                             R17 R18
      597 CALL                             R16 1 0
      598 LENGTH                           R16 R13
      599 JUMPIFNOTEQKN                    R16 K37 [0] ; [+5]
      601 GETUPVAL                         R16 1
      602 LOADK                            R17 K85 ["All instances failed sanitization"]
      603 CALL                             R16 1 1
      604 RETURN                           R16 1
      605 GETUPVAL                         R16 2
      606 LOADK                            R18 K86 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      607 LENGTH                           R20 R13
      608 NAMECALL                         R18 R18 K9 ["format"]
      610 CALL                             R18 2 1
      611 MOVE                             R17 R18
      612 CALL                             R16 1 0
      613 GETUPVAL                         R16 2
      614 LOADK                            R18 K87 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      615 MOVE                             R20 R3
      616 LENGTH                           R21 R13
      617 NAMECALL                         R18 R18 K9 ["format"]
      619 CALL                             R18 3 1
      620 MOVE                             R17 R18
      621 CALL                             R16 1 0
      622 MOVE                             R16 R13
      623 LOADNIL                          R17
      624 LOADNIL                          R18
      625 FORGPREP                         R16
      626 GETUPVAL                         R21 11
      627 MOVE                             R22 R3
      628 MOVE                             R23 R20
      629 CALL                             R21 2 0
      630 FORGLOOP                         R16 2 ; [-5]
      632 GETUPVAL                         R16 12
      633 LOADB                            R18 0
      634 NAMECALL                         R16 R16 K88 ["GenerateGUID"]
      636 CALL                             R16 2 1
      637 LOADK                            R18 K89 ["Assistant:"]
      638 MOVE                             R19 R16
      639 CONCAT                           R17 R18 R19
      640 GETUPVAL                         R18 12
      641 LOADB                            R20 0
      642 NAMECALL                         R18 R18 K88 ["GenerateGUID"]
      644 CALL                             R18 2 1
      645 GETUPVAL                         R19 2
      646 LOADK                            R21 K90 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      647 MOVE                             R23 R16
      648 MOVE                             R24 R17
      649 NAMECALL                         R21 R21 K9 ["format"]
      651 CALL                             R21 3 1
      652 MOVE                             R20 R21
      653 CALL                             R19 1 0
      654 GETUPVAL                         R19 13
      655 GETTABLEKS                       R20 R0 K8 ["parentPath"]
      657 CALL                             R19 1 2
      658 GETUPVAL                         R21 2
      659 LOADK                            R23 K91 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      660 NAMECALL                         R25 R19 K92 ["GetFullName"]
      662 CALL                             R25 1 1
      663 ORK                              R26 R20 K93 ["none"]
      664 NAMECALL                         R23 R23 K9 ["format"]
      666 CALL                             R23 3 1
      667 MOVE                             R22 R23
      668 CALL                             R21 1 0
      669 GETTABLEN                        R21 R13 1
      670 GETTABLEKS                       R21 R21 K75 ["ClassName"]
      672 GETTABLEKS                       R22 R1 K31 ["toolArgs"]
      674 GETTABLEKS                       R22 R22 K32 ["environment"]
      676 GETTABLEKS                       R23 R22 K94 ["startRecording"]
      678 MOVE                             R24 R18
      679 CALL                             R23 1 0
      680 NEWTABLE                         R23 0 0
      682 MOVE                             R24 R13
      683 LOADNIL                          R25
      684 LOADNIL                          R26
      685 FORGPREP                         R24
      686 SETTABLEKS                       R5 R28 K25 ["Name"]
      688 MOVE                             R31 R17
      689 NAMECALL                         R29 R28 K95 ["AddTag"]
      691 CALL                             R29 2 0
      692 LOADK                            R31 K96 ["PVInstance"]
      693 NAMECALL                         R29 R28 K76 ["IsA"]
      695 CALL                             R29 2 1
      696 JUMPIFNOT                        R29 ; [+6]
      697 GETUPVAL                         R29 14
      698 GETTABLEKS                       R29 R29 K97 ["setPositionOnGround"]
      700 MOVE                             R30 R28
      701 LOADB                            R31 1
      702 CALL                             R29 2 0
      703 SETTABLEKS                       R19 R28 K98 ["Parent"]
      705 GETUPVAL                         R29 2
      706 LOADK                            R31 K99 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      707 GETTABLEKS                       R33 R28 K25 ["Name"]
      709 GETTABLEKS                       R34 R28 K75 ["ClassName"]
      711 GETUPVAL                         R35 15
      712 MOVE                             R36 R28
      713 CALL                             R35 1 1
      714 NAMECALL                         R31 R31 K9 ["format"]
      716 CALL                             R31 4 1
      717 MOVE                             R30 R31
      718 CALL                             R29 1 0
      719 DUPTABLE                         R31 K103 [{"name", "className", "fullPath"}]
      720 GETTABLEKS                       R32 R28 K25 ["Name"]
      722 SETTABLEKS                       R32 R31 K100 ["name"]
      724 GETTABLEKS                       R32 R28 K75 ["ClassName"]
      726 SETTABLEKS                       R32 R31 K101 ["className"]
      728 GETUPVAL                         R32 15
      729 MOVE                             R33 R28
      730 CALL                             R32 1 1
      731 SETTABLEKS                       R32 R31 K102 ["fullPath"]
      733 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      735 MOVE                             R30 R23
      736 GETIMPORT                        R29 K58 [table.insert]
      738 CALL                             R29 2 0
      739 FORGLOOP                         R24 2 ; [-54]
      741 GETTABLEKS                       R24 R22 K104 ["endRecording"]
      743 MOVE                             R25 R18
      744 CALL                             R24 1 0
      745 GETUPVAL                         R24 2
      746 LOADK                            R25 K105 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      747 CALL                             R24 1 0
      748 GETUPVAL                         R24 12
      749 DUPTABLE                         R26 K113 [{"status", "insertGuid", "tag", "assetId", "assetName", "assetType", "isPackage", "insertedInstances", "parentWarning", "permissionWarning"}]
      750 LOADK                            R27 K114 ["success"]
      751 SETTABLEKS                       R27 R26 K106 ["status"]
      753 SETTABLEKS                       R16 R26 K107 ["insertGuid"]
      755 SETTABLEKS                       R17 R26 K108 ["tag"]
      757 SETTABLEKS                       R2 R26 K3 ["assetId"]
      759 SETTABLEKS                       R5 R26 K6 ["assetName"]
      761 SETTABLEKS                       R9 R26 K7 ["assetType"]
      763 SETTABLEKS                       R7 R26 K109 ["isPackage"]
      765 SETTABLEKS                       R23 R26 K110 ["insertedInstances"]
      767 SETTABLEKS                       R20 R26 K111 ["parentWarning"]
      769 SETTABLEKS                       R10 R26 K112 ["permissionWarning"]
      771 NAMECALL                         R24 R24 K115 ["JSONEncode"]
      773 CALL                             R24 2 1
      774 DUPTABLE                         R25 K118 [{"result", "responseInfo"}]
      775 SETTABLEKS                       R24 R25 K116 ["result"]
      777 DUPTABLE                         R26 K119 [{"tag", "assetName", "insertGuid", "className"}]
      778 SETTABLEKS                       R17 R26 K108 ["tag"]
      780 SETTABLEKS                       R5 R26 K6 ["assetName"]
      782 SETTABLEKS                       R16 R26 K107 ["insertGuid"]
      784 SETTABLEKS                       R21 R26 K101 ["className"]
      786 SETTABLEKS                       R26 R25 K117 ["responseInfo"]
      788 RETURN                           R25 1

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
