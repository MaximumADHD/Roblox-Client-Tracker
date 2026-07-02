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
        0 DUPTABLE                         R1 K3 [{[1], ["responseInfo"] = }]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K6 [{["status"] = "error", ["error"]}]
        3 SETTABLEKS                       R0 R4 K5 ["error"]
        5 NAMECALL                         R2 R2 K7 ["JSONEncode"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["result"]
       10 RETURN                           R1 1

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
        6 GETTABLEKS                       R3 R1 K2 ["initArgs"]
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
       81 DUPTABLE                         R7 K22 [{"AssetId", "Name", "AssetTypeId", "AssetSubTypes", "ShouldSandbox"}]
       82 GETTABLEKS                       R8 R6 K23 ["id"]
       84 SETTABLEKS                       R8 R7 K17 ["AssetId"]
       86 GETTABLEKS                       R8 R6 K24 ["name"]
       88 SETTABLEKS                       R8 R7 K18 ["Name"]
       90 GETTABLEKS                       R8 R6 K25 ["typeId"]
       92 SETTABLEKS                       R8 R7 K19 ["AssetTypeId"]
       94 GETTABLEKS                       R8 R6 K26 ["assetSubTypes"]
       96 SETTABLEKS                       R8 R7 K20 ["AssetSubTypes"]
       98 GETUPVAL                         R8 2
       99 CALL                             R8 0 1
      100 JUMPIFNOT                        R8 ; [+17]
      101 LOADB                            R8 0
      102 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      104 FASTCALL1                        TYPE R10 ; [+2]
      105 GETIMPORT                        R9 K29 [type]
      107 CALL                             R9 1 1
      108 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+9]
      110 GETTABLEKS                       R9 R6 K27 ["capabilities"]
      112 GETTABLEKS                       R9 R9 K31 ["shouldSandbox"]
      114 JUMPIFEQKB                       R9 TRUE ; [+2]
      116 LOADB                            R8 0 +1
      117 LOADB                            R8 1
      118 SETTABLEKS                       R8 R7 K21 ["ShouldSandbox"]
      120 GETUPVAL                         R8 0
      121 LOADK                            R10 K32 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      122 GETTABLEKS                       R12 R7 K17 ["AssetId"]
      124 GETTABLEKS                       R13 R7 K18 ["Name"]
      126 GETTABLEKS                       R14 R7 K19 ["AssetTypeId"]
      128 GETTABLEKS                       R16 R7 K20 ["AssetSubTypes"]
      130 JUMPIFNOT                        R16 ; [+7]
      131 GETUPVAL                         R15 3
      132 GETTABLEKS                       R17 R7 K20 ["AssetSubTypes"]
      134 NAMECALL                         R15 R15 K33 ["JSONEncode"]
      136 CALL                             R15 2 1
      137 JUMPIF                           R15 ; [+1]
      138 LOADK                            R15 K34 ["nil"]
      139 NAMECALL                         R10 R10 K3 ["format"]
      141 CALL                             R10 5 1
      142 MOVE                             R9 R10
      143 CALL                             R8 1 0
      144 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      146 FASTCALL1                        TYPE R10 ; [+2]
      147 GETIMPORT                        R9 K29 [type]
      149 CALL                             R9 1 1
      150 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+8]
      152 GETUPVAL                         R8 3
      153 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      155 NAMECALL                         R8 R8 K33 ["JSONEncode"]
      157 CALL                             R8 2 1
      158 JUMP                             ; [+11]
      159 LOADK                            R9 K35 ["<%*>"]
      160 GETTABLEKS                       R12 R6 K27 ["capabilities"]
      162 FASTCALL1                        TYPE R12 ; [+2]
      163 GETIMPORT                        R11 K29 [type]
      165 CALL                             R11 1 1
      166 NAMECALL                         R9 R9 K3 ["format"]
      168 CALL                             R9 2 1
      169 MOVE                             R8 R9
      170 GETUPVAL                         R9 0
      171 LOADK                            R11 K36 ["[AssetInsertTool] Metadata sandbox signal: flag=%*, asset.capabilities=%*, ShouldSandbox=%*"]
      172 GETUPVAL                         R14 2
      173 CALL                             R14 0 -1
      174 FASTCALL                         TOSTRING ; [+2]
      175 GETIMPORT                        R13 K9 [tostring]
      177 CALL                             R13 -1 1
      178 MOVE                             R14 R8
      179 GETTABLEKS                       R16 R7 K21 ["ShouldSandbox"]
      181 FASTCALL1                        TOSTRING R16 ; [+2]
      182 GETIMPORT                        R15 K9 [tostring]
      184 CALL                             R15 1 1
      185 NAMECALL                         R11 R11 K3 ["format"]
      187 CALL                             R11 4 1
      188 MOVE                             R10 R11
      189 CALL                             R9 1 0
      190 LOADB                            R9 1
      191 MOVE                             R10 R7
      192 RETURN                           R9 2

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
       52 LOADB                            R7 0
       53 GETUPVAL                         R8 4
       54 CALL                             R8 0 1
       55 JUMPIF                           R8 ; [+38]
       56 GETTABLEKS                       R8 R0 K8 ["assetType"]
       58 JUMPIFNOT                        R8 ; [+35]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R10 R0 K8 ["assetType"]
       62 GETTABLE                         R8 R9 R10
       63 JUMPIFNOT                        R8 ; [+30]
       64 GETUPVAL                         R8 5
       65 GETTABLEKS                       R9 R0 K8 ["assetType"]
       67 GETTABLE                         R4 R8 R9
       68 GETTABLEKS                       R8 R0 K7 ["assetName"]
       70 ORK                              R5 R8 K14 ["Asset"]
       71 GETTABLEKS                       R8 R0 K8 ["assetType"]
       73 JUMPIFNOTEQKS                    R8 K15 ["Package"] ; [+8]
       75 NEWTABLE                         R8 0 1
       77 LOADK                            R9 K15 ["Package"]
       78 SETLIST                          R8 R9 1 [1]
       80 MOVE                             R6 R8
       81 JUMP                             ; [+1]
       82 LOADNIL                          R6
       83 GETUPVAL                         R8 3
       84 LOADK                            R10 K16 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       85 GETTABLEKS                       R12 R0 K8 ["assetType"]
       87 MOVE                             R13 R4
       88 NAMECALL                         R10 R10 K10 ["format"]
       90 CALL                             R10 3 1
       91 MOVE                             R9 R10
       92 CALL                             R8 1 0
       93 JUMP                             ; [+90]
       94 GETTABLEKS                       R8 R0 K8 ["assetType"]
       96 JUMPIFNOT                        R8 ; [+9]
       97 GETUPVAL                         R8 3
       98 LOADK                            R10 K17 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
       99 GETTABLEKS                       R12 R0 K8 ["assetType"]
      101 NAMECALL                         R10 R10 K10 ["format"]
      103 CALL                             R10 2 1
      104 MOVE                             R9 R10
      105 CALL                             R8 1 0
      106 GETUPVAL                         R8 6
      107 MOVE                             R9 R2
      108 CALL                             R8 1 2
      109 JUMPIF                           R8 ; [+4]
      110 GETUPVAL                         R10 2
      111 MOVE                             R11 R9
      112 CALL                             R10 1 1
      113 RETURN                           R10 1
      114 GETTABLEKS                       R10 R9 K18 ["AssetId"]
      116 JUMPIFNOT                        R10 ; [+45]
      117 GETTABLEKS                       R11 R9 K18 ["AssetId"]
      119 FASTCALL1                        TOSTRING R11 ; [+2]
      120 GETIMPORT                        R10 K20 [tostring]
      122 CALL                             R10 1 1
      123 JUMPIFEQ                         R10 R2 ; [+29]
      125 GETUPVAL                         R11 3
      126 LOADK                            R13 K21 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      127 MOVE                             R15 R2
      128 MOVE                             R16 R10
      129 NAMECALL                         R13 R13 K10 ["format"]
      131 CALL                             R13 3 1
      132 MOVE                             R12 R13
      133 CALL                             R11 1 0
      134 MOVE                             R2 R10
      135 FASTCALL1                        TONUMBER R2 ; [+3]
      136 MOVE                             R12 R2
      137 GETIMPORT                        R11 K12 [tonumber]
      139 CALL                             R11 1 1
      140 MOVE                             R3 R11
      141 JUMPIF                           R3 ; [+28]
      142 GETUPVAL                         R11 2
      143 LOADK                            R13 K22 ["Resolved asset ID is not a valid number: "]
      144 FASTCALL1                        TOSTRING R2 ; [+3]
      145 MOVE                             R15 R2
      146 GETIMPORT                        R14 K20 [tostring]
      148 CALL                             R14 1 1
      149 CONCAT                           R12 R13 R14
      150 CALL                             R11 1 1
      151 RETURN                           R11 1
      152 JUMP                             ; [+17]
      153 GETUPVAL                         R11 3
      154 LOADK                            R13 K23 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      155 MOVE                             R15 R2
      156 NAMECALL                         R13 R13 K10 ["format"]
      158 CALL                             R13 2 1
      159 MOVE                             R12 R13
      160 CALL                             R11 1 0
      161 JUMP                             ; [+8]
      162 GETUPVAL                         R10 3
      163 LOADK                            R12 K24 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      164 MOVE                             R14 R2
      165 NAMECALL                         R12 R12 K10 ["format"]
      167 CALL                             R12 2 1
      168 MOVE                             R11 R12
      169 CALL                             R10 1 0
      170 GETTABLEKS                       R4 R9 K25 ["AssetTypeId"]
      172 GETTABLEKS                       R10 R0 K7 ["assetName"]
      174 JUMPIF                           R10 ; [+4]
      175 GETTABLEKS                       R10 R9 K26 ["Name"]
      177 JUMPIF                           R10 ; [+1]
      178 LOADK                            R10 K14 ["Asset"]
      179 MOVE                             R5 R10
      180 GETTABLEKS                       R6 R9 K27 ["AssetSubTypes"]
      182 GETTABLEKS                       R7 R9 K28 ["ShouldSandbox"]
      184 GETUPVAL                         R8 3
      185 LOADK                            R10 K29 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      186 MOVE                             R12 R2
      187 MOVE                             R13 R3
      188 MOVE                             R14 R4
      189 MOVE                             R15 R5
      190 JUMPIFNOT                        R6 ; [+2]
      191 LENGTH                           R16 R6
      192 JUMPIF                           R16 ; [+1]
      193 LOADN                            R16 0
      194 NAMECALL                         R10 R10 K10 ["format"]
      196 CALL                             R10 6 1
      197 MOVE                             R9 R10
      198 CALL                             R8 1 0
      199 GETUPVAL                         R8 7
      200 GETTABLEKS                       R8 R8 K30 ["isPackageAsset"]
      202 MOVE                             R9 R4
      203 MOVE                             R10 R6
      204 CALL                             R8 2 1
      205 GETUPVAL                         R10 8
      206 GETTABLE                         R9 R10 R4
      207 JUMPIF                           R9 ; [+9]
      208 GETUPVAL                         R10 2
      209 LOADK                            R12 K31 ["Unsupported asset type ID: %*"]
      210 MOVE                             R14 R4
      211 NAMECALL                         R12 R12 K10 ["format"]
      213 CALL                             R12 2 1
      214 MOVE                             R11 R12
      215 CALL                             R10 1 1
      216 RETURN                           R10 1
      217 GETTABLEKS                       R10 R9 K26 ["Name"]
      219 GETUPVAL                         R11 3
      220 LOADK                            R13 K32 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      221 MOVE                             R15 R10
      222 MOVE                             R16 R8
      223 NAMECALL                         R13 R13 K10 ["format"]
      225 CALL                             R13 3 1
      226 MOVE                             R12 R13
      227 CALL                             R11 1 0
      228 LOADNIL                          R11
      229 NEWTABLE                         R12 0 0
      231 GETTABLEKS                       R13 R1 K33 ["initArgs"]
      233 GETTABLEKS                       R13 R13 K34 ["environment"]
      235 GETTABLEKS                       R13 R13 K35 ["assetAccessController"]
      237 GETUPVAL                         R14 9
      238 CALL                             R14 0 1
      239 JUMPIF                           R14 ; [+30]
      240 JUMPIFNOT                        R13 ; [+29]
      241 GETIMPORT                        R14 K37 [game]
      243 GETTABLEKS                       R14 R14 K38 ["GameId"]
      245 JUMPIFEQKN                       R14 K39 [0] ; [+24]
      247 GETUPVAL                         R14 3
      248 LOADK                            R16 K40 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      249 MOVE                             R18 R3
      250 MOVE                             R19 R10
      251 NAMECALL                         R16 R16 K10 ["format"]
      253 CALL                             R16 3 1
      254 MOVE                             R15 R16
      255 CALL                             R14 1 0
      256 GETUPVAL                         R14 10
      257 NEWTABLE                         R15 0 1
      259 MOVE                             R16 R3
      260 SETLIST                          R15 R16 1 [1]
      262 NEWTABLE                         R16 0 1
      264 MOVE                             R17 R9
      265 SETLIST                          R16 R17 1 [1]
      267 MOVE                             R17 R13
      268 CALL                             R14 3 1
      269 MOVE                             R12 R14
      270 GETIMPORT                        R14 K42 [next]
      272 MOVE                             R15 R12
      273 CALL                             R14 1 1
      274 JUMPIFNOT                        R14 ; [+23]
      275 MOVE                             R14 R12
      276 LOADNIL                          R15
      277 LOADNIL                          R16
      278 FORGPREP                         R14
      279 LOADK                            R20 K43 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      280 MOVE                             R22 R17
      281 NAMECALL                         R20 R20 K10 ["format"]
      283 CALL                             R20 2 1
      284 MOVE                             R19 R20
      285 ORK                              R20 R11 K44 [""]
      286 MOVE                             R21 R19
      287 CONCAT                           R11 R20 R21
      288 FORGLOOP                         R14 2 ; [-10]
      290 GETUPVAL                         R14 3
      291 LOADK                            R16 K45 ["[AssetInsertTool] %*"]
      292 MOVE                             R18 R11
      293 NAMECALL                         R16 R16 K10 ["format"]
      295 CALL                             R16 2 1
      296 MOVE                             R15 R16
      297 CALL                             R14 1 0
      298 GETTABLE                         R14 R12 R3
      299 JUMPIFNOT                        R14 ; [+4]
      300 GETUPVAL                         R14 2
      301 ORK                              R15 R11 K46 ["Failed to grant required permissions for asset"]
      302 CALL                             R14 1 1
      303 RETURN                           R14 1
      304 NEWTABLE                         R14 0 0
      306 LOADNIL                          R15
      307 LOADNIL                          R16
      308 GETIMPORT                        R17 K50 [Enum.AssetType.Model]
      310 JUMPIFEQ                         R9 R17 ; [+9]
      312 GETIMPORT                        R17 K52 [Enum.AssetType.MeshPart]
      314 JUMPIFEQ                         R9 R17 ; [+5]
      316 GETIMPORT                        R17 K53 [Enum.AssetType.Package]
      318 JUMPIFNOTEQ                      R9 R17 ; [+13]
      320 LOADNIL                          R17
      321 GETUPVAL                         R18 11
      322 MOVE                             R19 R2
      323 MOVE                             R20 R8
      324 CALL                             R18 2 3
      325 MOVE                             R15 R18
      326 MOVE                             R17 R19
      327 MOVE                             R16 R20
      328 JUMPIFNOT                        R15 ; [+193]
      329 JUMPIFNOT                        R17 ; [+192]
      330 MOVE                             R14 R17
      331 JUMP                             ; [+190]
      332 GETIMPORT                        R17 K55 [Enum.AssetType.Mesh]
      334 JUMPIFNOTEQ                      R9 R17 ; [+35]
      336 LOADNIL                          R17
      337 MOVE                             R21 R3
      338 GETIMPORT                        R22 K57 [pcall]
      340 NEWCLOSURE                       R23 P0
      341 CAPTURE                          UPVAL U0
      342 CAPTURE                          VAL R21
      343 CALL                             R22 1 2
      344 JUMPIF                           R22 ; [+9]
      345 LOADB                            R18 0
      346 LOADNIL                          R19
      347 LOADK                            R24 K58 ["Failed to create mesh part: %*"]
      348 MOVE                             R26 R23
      349 NAMECALL                         R24 R24 K10 ["format"]
      351 CALL                             R24 2 1
      352 MOVE                             R20 R24
      353 JUMP                             ; [+3]
      354 LOADB                            R18 1
      355 MOVE                             R19 R23
      356 LOADNIL                          R20
      357 MOVE                             R15 R18
      358 MOVE                             R17 R19
      359 MOVE                             R16 R20
      360 JUMPIFNOT                        R15 ; [+161]
      361 JUMPIFNOT                        R17 ; [+160]
      362 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      364 MOVE                             R19 R14
      365 MOVE                             R20 R17
      366 GETIMPORT                        R18 K61 [table.insert]
      368 CALL                             R18 2 0
      369 JUMP                             ; [+152]
      370 GETIMPORT                        R17 K63 [Enum.AssetType.Decal]
      372 JUMPIFEQ                         R9 R17 ; [+5]
      374 GETIMPORT                        R17 K65 [Enum.AssetType.Image]
      376 JUMPIFNOTEQ                      R9 R17 ; [+42]
      378 LOADNIL                          R17
      379 MOVE                             R21 R2
      380 GETIMPORT                        R23 K65 [Enum.AssetType.Image]
      382 JUMPIFEQ                         R9 R23 ; [+2]
      384 LOADB                            R22 0 +1
      385 LOADB                            R22 1
      386 GETIMPORT                        R23 K57 [pcall]
      388 NEWCLOSURE                       R24 P1
      389 CAPTURE                          VAL R22
      390 CAPTURE                          UPVAL U0
      391 CAPTURE                          VAL R21
      392 CALL                             R23 1 2
      393 JUMPIF                           R23 ; [+9]
      394 LOADB                            R18 0
      395 LOADNIL                          R19
      396 LOADK                            R25 K66 ["Failed to create decal: %*"]
      397 MOVE                             R27 R24
      398 NAMECALL                         R25 R25 K10 ["format"]
      400 CALL                             R25 2 1
      401 MOVE                             R20 R25
      402 JUMP                             ; [+3]
      403 LOADB                            R18 1
      404 MOVE                             R19 R24
      405 LOADNIL                          R20
      406 MOVE                             R15 R18
      407 MOVE                             R17 R19
      408 MOVE                             R16 R20
      409 JUMPIFNOT                        R15 ; [+112]
      410 JUMPIFNOT                        R17 ; [+111]
      411 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      413 MOVE                             R19 R14
      414 MOVE                             R20 R17
      415 GETIMPORT                        R18 K61 [table.insert]
      417 CALL                             R18 2 0
      418 JUMP                             ; [+103]
      419 GETIMPORT                        R17 K68 [Enum.AssetType.Audio]
      421 JUMPIFNOTEQ                      R9 R17 ; [+13]
      423 LOADNIL                          R17
      424 GETUPVAL                         R18 12
      425 MOVE                             R19 R2
      426 MOVE                             R20 R5
      427 CALL                             R18 2 3
      428 MOVE                             R15 R18
      429 MOVE                             R17 R19
      430 MOVE                             R16 R20
      431 JUMPIFNOT                        R15 ; [+90]
      432 JUMPIFNOT                        R17 ; [+89]
      433 MOVE                             R14 R17
      434 JUMP                             ; [+87]
      435 GETIMPORT                        R17 K70 [Enum.AssetType.Video]
      437 JUMPIFNOTEQ                      R9 R17 ; [+35]
      439 LOADNIL                          R17
      440 MOVE                             R21 R2
      441 GETIMPORT                        R22 K57 [pcall]
      443 NEWCLOSURE                       R23 P2
      444 CAPTURE                          UPVAL U0
      445 CAPTURE                          VAL R21
      446 CALL                             R22 1 2
      447 JUMPIF                           R22 ; [+9]
      448 LOADB                            R18 0
      449 LOADNIL                          R19
      450 LOADK                            R24 K71 ["Failed to create video frame: %*"]
      451 MOVE                             R26 R23
      452 NAMECALL                         R24 R24 K10 ["format"]
      454 CALL                             R24 2 1
      455 MOVE                             R20 R24
      456 JUMP                             ; [+3]
      457 LOADB                            R18 1
      458 MOVE                             R19 R23
      459 LOADNIL                          R20
      460 MOVE                             R15 R18
      461 MOVE                             R17 R19
      462 MOVE                             R16 R20
      463 JUMPIFNOT                        R15 ; [+58]
      464 JUMPIFNOT                        R17 ; [+57]
      465 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      467 MOVE                             R19 R14
      468 MOVE                             R20 R17
      469 GETIMPORT                        R18 K61 [table.insert]
      471 CALL                             R18 2 0
      472 JUMP                             ; [+49]
      473 GETIMPORT                        R17 K73 [Enum.AssetType.Animation]
      475 JUMPIFNOTEQ                      R9 R17 ; [+37]
      477 LOADNIL                          R17
      478 MOVE                             R21 R3
      479 GETIMPORT                        R22 K57 [pcall]
      481 NEWCLOSURE                       R23 P3
      482 CAPTURE                          UPVAL U0
      483 CAPTURE                          VAL R21
      484 CALL                             R22 1 2
      485 JUMPIF                           R22 ; [+9]
      486 LOADB                            R18 0
      487 LOADNIL                          R19
      488 LOADK                            R24 K74 ["Failed to load animation asset: %*"]
      489 MOVE                             R26 R23
      490 NAMECALL                         R24 R24 K10 ["format"]
      492 CALL                             R24 2 1
      493 MOVE                             R20 R24
      494 JUMP                             ; [+11]
      495 JUMPIFNOT                        R23 ; [+3]
      496 LENGTH                           R24 R23
      497 JUMPIFNOTEQKN                    R24 K39 [0] ; [+5]
      499 LOADB                            R18 0
      500 LOADNIL                          R19
      501 LOADK                            R20 K75 ["GetObjects returned empty result for animation"]
      502 JUMP                             ; [+3]
      503 LOADB                            R18 1
      504 MOVE                             R19 R23
      505 LOADNIL                          R20
      506 MOVE                             R15 R18
      507 MOVE                             R17 R19
      508 MOVE                             R16 R20
      509 JUMPIFNOT                        R15 ; [+12]
      510 JUMPIFNOT                        R17 ; [+11]
      511 MOVE                             R14 R17
      512 JUMP                             ; [+9]
      513 GETUPVAL                         R17 2
      514 LOADK                            R19 K76 ["Unhandled asset type: %*"]
      515 MOVE                             R21 R10
      516 NAMECALL                         R19 R19 K10 ["format"]
      518 CALL                             R19 2 1
      519 MOVE                             R18 R19
      520 CALL                             R17 1 1
      521 RETURN                           R17 1
      522 JUMPIFNOT                        R15 ; [+3]
      523 LENGTH                           R17 R14
      524 JUMPIFNOTEQKN                    R17 K39 [0] ; [+5]
      526 GETUPVAL                         R17 2
      527 ORK                              R18 R16 K77 ["Failed to load asset instances"]
      528 CALL                             R17 1 1
      529 RETURN                           R17 1
      530 GETUPVAL                         R17 3
      531 LOADK                            R19 K78 ["[AssetInsertTool] Sanitizing %* instances..."]
      532 LENGTH                           R21 R14
      533 NAMECALL                         R19 R19 K10 ["format"]
      535 CALL                             R19 2 1
      536 MOVE                             R18 R19
      537 CALL                             R17 1 0
      538 LENGTH                           R19 R14
      539 LOADN                            R17 1
      540 LOADN                            R18 -1
      541 FORNPREP                         R17
      542 GETTABLE                         R20 R14 R19
      543 LOADB                            R21 0
      544 GETUPVAL                         R22 3
      545 LOADK                            R24 K79 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      546 MOVE                             R26 R19
      547 GETTABLEKS                       R27 R20 K26 ["Name"]
      549 GETTABLEKS                       R28 R20 K80 ["ClassName"]
      551 LOADK                            R31 K49 ["Model"]
      552 NAMECALL                         R29 R20 K81 ["IsA"]
      554 CALL                             R29 2 1
      555 LOADK                            R32 K51 ["MeshPart"]
      556 NAMECALL                         R30 R20 K81 ["IsA"]
      558 CALL                             R30 2 1
      559 NAMECALL                         R24 R24 K10 ["format"]
      561 CALL                             R24 6 1
      562 MOVE                             R23 R24
      563 CALL                             R22 1 0
      564 GETUPVAL                         R22 13
      565 MOVE                             R23 R20
      566 CALL                             R22 1 2
      567 JUMPIF                           R22 ; [+12]
      568 GETUPVAL                         R24 3
      569 LOADK                            R26 K82 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      570 GETTABLEKS                       R28 R20 K80 ["ClassName"]
      572 MOVE                             R29 R23
      573 NAMECALL                         R26 R26 K10 ["format"]
      575 CALL                             R26 3 1
      576 MOVE                             R25 R26
      577 CALL                             R24 1 0
      578 LOADB                            R21 1
      579 JUMP                             ; [+27]
      580 LOADK                            R26 K51 ["MeshPart"]
      581 NAMECALL                         R24 R20 K81 ["IsA"]
      583 CALL                             R24 2 1
      584 JUMPIFNOT                        R24 ; [+22]
      585 NAMECALL                         R27 R20 K83 ["GetChildren"]
      587 CALL                             R27 1 1
      588 LENGTH                           R26 R27
      589 LOADN                            R27 0
      590 JUMPIFNOTLT                      R27 R26 ; [+4]
      592 NAMECALL                         R26 R20 K84 ["ClearAllChildren"]
      594 CALL                             R26 1 0
      595 LOADB                            R24 1
      596 LOADNIL                          R25
      597 JUMPIF                           R24 ; [+9]
      598 GETUPVAL                         R26 3
      599 LOADK                            R28 K85 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      600 MOVE                             R30 R25
      601 NAMECALL                         R28 R28 K10 ["format"]
      603 CALL                             R28 2 1
      604 MOVE                             R27 R28
      605 CALL                             R26 1 0
      606 LOADB                            R21 1
      607 JUMPIFNOT                        R21 ; [+15]
      608 GETUPVAL                         R24 3
      609 LOADK                            R26 K86 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      610 MOVE                             R28 R19
      611 GETTABLEKS                       R29 R20 K26 ["Name"]
      613 NAMECALL                         R26 R26 K10 ["format"]
      615 CALL                             R26 3 1
      616 MOVE                             R25 R26
      617 CALL                             R24 1 0
      618 GETIMPORT                        R24 K88 [table.remove]
      620 MOVE                             R25 R14
      621 MOVE                             R26 R19
      622 CALL                             R24 2 0
      623 FORNLOOP                         R17
      624 GETUPVAL                         R17 3
      625 LOADK                            R19 K89 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      626 LENGTH                           R21 R14
      627 NAMECALL                         R19 R19 K10 ["format"]
      629 CALL                             R19 2 1
      630 MOVE                             R18 R19
      631 CALL                             R17 1 0
      632 LENGTH                           R17 R14
      633 JUMPIFNOTEQKN                    R17 K39 [0] ; [+5]
      635 GETUPVAL                         R17 2
      636 LOADK                            R18 K90 ["All instances failed sanitization"]
      637 CALL                             R17 1 1
      638 RETURN                           R17 1
      639 GETUPVAL                         R17 3
      640 LOADK                            R19 K91 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      641 LENGTH                           R21 R14
      642 NAMECALL                         R19 R19 K10 ["format"]
      644 CALL                             R19 2 1
      645 MOVE                             R18 R19
      646 CALL                             R17 1 0
      647 GETUPVAL                         R17 3
      648 LOADK                            R19 K92 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      649 MOVE                             R21 R3
      650 LENGTH                           R22 R14
      651 NAMECALL                         R19 R19 K10 ["format"]
      653 CALL                             R19 3 1
      654 MOVE                             R18 R19
      655 CALL                             R17 1 0
      656 MOVE                             R17 R14
      657 LOADNIL                          R18
      658 LOADNIL                          R19
      659 FORGPREP                         R17
      660 GETUPVAL                         R22 14
      661 MOVE                             R23 R3
      662 MOVE                             R24 R21
      663 CALL                             R22 2 0
      664 FORGLOOP                         R17 2 ; [-5]
      666 GETUPVAL                         R17 15
      667 LOADB                            R19 0
      668 NAMECALL                         R17 R17 K93 ["GenerateGUID"]
      670 CALL                             R17 2 1
      671 GETUPVAL                         R19 16
      672 CALL                             R19 0 1
      673 JUMPIFNOT                        R19 ; [+7]
      674 GETUPVAL                         R18 17
      675 GETTABLEKS                       R18 R18 K94 ["getUniqueTag"]
      677 LOADK                            R19 K95 ["Insert"]
      678 MOVE                             R20 R17
      679 CALL                             R18 2 1
      680 JUMP                             ; [+3]
      681 LOADK                            R19 K96 ["Assistant:"]
      682 MOVE                             R20 R17
      683 CONCAT                           R18 R19 R20
      684 GETUPVAL                         R19 15
      685 LOADB                            R21 0
      686 NAMECALL                         R19 R19 K93 ["GenerateGUID"]
      688 CALL                             R19 2 1
      689 GETUPVAL                         R20 3
      690 LOADK                            R22 K97 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      691 MOVE                             R24 R17
      692 MOVE                             R25 R18
      693 NAMECALL                         R22 R22 K10 ["format"]
      695 CALL                             R22 3 1
      696 MOVE                             R21 R22
      697 CALL                             R20 1 0
      698 GETUPVAL                         R20 18
      699 GETTABLEKS                       R21 R0 K9 ["parentPath"]
      701 CALL                             R20 1 2
      702 GETUPVAL                         R22 3
      703 LOADK                            R24 K98 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      704 NAMECALL                         R26 R20 K99 ["GetFullName"]
      706 CALL                             R26 1 1
      707 ORK                              R27 R21 K100 ["none"]
      708 NAMECALL                         R24 R24 K10 ["format"]
      710 CALL                             R24 3 1
      711 MOVE                             R23 R24
      712 CALL                             R22 1 0
      713 GETTABLEN                        R22 R14 1
      714 GETTABLEKS                       R22 R22 K80 ["ClassName"]
      716 GETTABLEKS                       R23 R1 K33 ["initArgs"]
      718 GETTABLEKS                       R23 R23 K34 ["environment"]
      720 GETTABLEKS                       R24 R23 K101 ["startRecording"]
      722 MOVE                             R25 R19
      723 CALL                             R24 1 0
      724 NEWTABLE                         R24 0 0
      726 MOVE                             R25 R14
      727 LOADNIL                          R26
      728 LOADNIL                          R27
      729 FORGPREP                         R25
      730 SETTABLEKS                       R5 R29 K26 ["Name"]
      732 MOVE                             R32 R18
      733 NAMECALL                         R30 R29 K102 ["AddTag"]
      735 CALL                             R30 2 0
      736 LOADK                            R32 K103 ["PVInstance"]
      737 NAMECALL                         R30 R29 K81 ["IsA"]
      739 CALL                             R30 2 1
      740 JUMPIFNOT                        R30 ; [+6]
      741 GETUPVAL                         R30 19
      742 GETTABLEKS                       R30 R30 K104 ["setPositionOnGround"]
      744 MOVE                             R31 R29
      745 LOADB                            R32 1
      746 CALL                             R30 2 0
      747 SETTABLEKS                       R20 R29 K105 ["Parent"]
      749 GETUPVAL                         R30 3
      750 LOADK                            R32 K106 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      751 GETTABLEKS                       R34 R29 K26 ["Name"]
      753 GETTABLEKS                       R35 R29 K80 ["ClassName"]
      755 GETUPVAL                         R36 20
      756 MOVE                             R37 R29
      757 CALL                             R36 1 1
      758 NAMECALL                         R32 R32 K10 ["format"]
      760 CALL                             R32 4 1
      761 MOVE                             R31 R32
      762 CALL                             R30 1 0
      763 DUPTABLE                         R32 K110 [{"name", "className", "fullPath"}]
      764 GETTABLEKS                       R33 R29 K26 ["Name"]
      766 SETTABLEKS                       R33 R32 K107 ["name"]
      768 GETTABLEKS                       R33 R29 K80 ["ClassName"]
      770 SETTABLEKS                       R33 R32 K108 ["className"]
      772 GETUPVAL                         R33 20
      773 MOVE                             R34 R29
      774 CALL                             R33 1 1
      775 SETTABLEKS                       R33 R32 K109 ["fullPath"]
      777 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      779 MOVE                             R31 R24
      780 GETIMPORT                        R30 K61 [table.insert]
      782 CALL                             R30 2 0
      783 FORGLOOP                         R25 2 ; [-54]
      785 GETTABLEKS                       R25 R23 K111 ["endRecording"]
      787 MOVE                             R26 R19
      788 CALL                             R25 1 0
      789 LOADB                            R25 0
      790 GETUPVAL                         R26 4
      791 CALL                             R26 0 1
      792 GETUPVAL                         R29 21
      793 GETTABLE                         R28 R29 R4
      794 JUMPIFEQKB                       R28 TRUE ; [+2]
      796 LOADB                            R27 0 +1
      797 LOADB                            R27 1
      798 GETUPVAL                         R28 3
      799 LOADK                            R30 K112 ["[AssetInsertTool] Sandbox gate: flag=%*, typeId=%* sandboxable=%*, shouldSandbox(metadata)=%*, capabilitiesHandler=%*, instances=%*"]
      800 FASTCALL1                        TOSTRING R26 ; [+3]
      801 MOVE                             R33 R26
      802 GETIMPORT                        R32 K20 [tostring]
      804 CALL                             R32 1 1
      805 MOVE                             R33 R4
      806 FASTCALL1                        TOSTRING R27 ; [+3]
      807 MOVE                             R35 R27
      808 GETIMPORT                        R34 K20 [tostring]
      810 CALL                             R34 1 1
      811 FASTCALL1                        TOSTRING R7 ; [+3]
      812 MOVE                             R36 R7
      813 GETIMPORT                        R35 K20 [tostring]
      815 CALL                             R35 1 1
      816 GETTABLEKS                       R38 R23 K113 ["capabilitiesHandler"]
      818 JUMPIFNOTEQKNIL                  R38 ; [+2]
      820 LOADB                            R37 0 +1
      821 LOADB                            R37 1
      822 FASTCALL1                        TOSTRING R37 ; [+2]
      823 GETIMPORT                        R36 K20 [tostring]
      825 CALL                             R36 1 1
      826 LENGTH                           R37 R14
      827 NAMECALL                         R30 R30 K10 ["format"]
      829 CALL                             R30 7 1
      830 MOVE                             R29 R30
      831 CALL                             R28 1 0
      832 JUMPIFNOT                        R26 ; [+24]
      833 JUMPIFNOT                        R27 ; [+23]
      834 JUMPIFNOT                        R7 ; [+22]
      835 GETUPVAL                         R28 22
      836 GETTABLEKS                       R28 R28 K114 ["applySandboxIfNeeded"]
      838 MOVE                             R29 R14
      839 GETTABLEKS                       R30 R23 K113 ["capabilitiesHandler"]
      841 GETUPVAL                         R31 3
      842 CALL                             R28 3 1
      843 MOVE                             R25 R28
      844 GETUPVAL                         R28 3
      845 LOADK                            R30 K115 ["[AssetInsertTool] Sandbox applied=%*"]
      846 FASTCALL1                        TOSTRING R25 ; [+3]
      847 MOVE                             R33 R25
      848 GETIMPORT                        R32 K20 [tostring]
      850 CALL                             R32 1 1
      851 NAMECALL                         R30 R30 K10 ["format"]
      853 CALL                             R30 2 1
      854 MOVE                             R29 R30
      855 CALL                             R28 1 0
      856 JUMP                             ; [+3]
      857 GETUPVAL                         R28 3
      858 LOADK                            R29 K116 ["[AssetInsertTool] Sandbox skipped — one or more gate conditions false (see flag/typeId/shouldSandbox above)"]
      859 CALL                             R28 1 0
      860 GETUPVAL                         R28 3
      861 LOADK                            R29 K117 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      862 CALL                             R28 1 0
      863 JUMPIFNOT                        R25 ; [+2]
      864 LOADK                            R28 K118 ["Inserted and set Sandboxed property to true on all scripts with all SecurityCapabilities included except for dangerous ones."]
      865 JUMP                             ; [+1]
      866 LOADNIL                          R28
      867 GETUPVAL                         R29 15
      868 DUPTABLE                         R31 K129 [{["status"] = "success", ["insertGuid"], ["tag"], ["assetId"], ["assetName"], ["assetType"], ["isPackage"], ["insertedInstances"], ["parentWarning"], ["permissionWarning"], ["sandboxed"], ["sandboxNote"]}]
      869 SETTABLEKS                       R17 R31 K121 ["insertGuid"]
      871 SETTABLEKS                       R18 R31 K122 ["tag"]
      873 SETTABLEKS                       R2 R31 K4 ["assetId"]
      875 SETTABLEKS                       R5 R31 K7 ["assetName"]
      877 SETTABLEKS                       R10 R31 K8 ["assetType"]
      879 SETTABLEKS                       R8 R31 K123 ["isPackage"]
      881 SETTABLEKS                       R24 R31 K124 ["insertedInstances"]
      883 SETTABLEKS                       R21 R31 K125 ["parentWarning"]
      885 SETTABLEKS                       R11 R31 K126 ["permissionWarning"]
      887 SETTABLEKS                       R25 R31 K127 ["sandboxed"]
      889 SETTABLEKS                       R28 R31 K128 ["sandboxNote"]
      891 NAMECALL                         R29 R29 K130 ["JSONEncode"]
      893 CALL                             R29 2 1
      894 DUPTABLE                         R30 K133 [{"result", "responseInfo"}]
      895 SETTABLEKS                       R29 R30 K131 ["result"]
      897 DUPTABLE                         R31 K134 [{"tag", "assetName", "insertGuid", "className"}]
      898 SETTABLEKS                       R18 R31 K122 ["tag"]
      900 SETTABLEKS                       R5 R31 K7 ["assetName"]
      902 SETTABLEKS                       R17 R31 K121 ["insertGuid"]
      904 SETTABLEKS                       R22 R31 K108 ["className"]
      906 SETTABLEKS                       R31 R30 K132 ["responseInfo"]
      908 RETURN                           R30 1

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
       99 GETIMPORT                        R16 K1 [script]
      101 GETTABLEKS                       R16 R16 K25 ["Parent"]
      103 GETTABLEKS                       R16 R16 K27 ["assignSourceAssetId"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K13 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K25 ["Parent"]
      112 GETTABLEKS                       R17 R17 K28 ["grantUniversePermissions"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K13 [require]
      117 GETIMPORT                        R18 K1 [script]
      119 GETTABLEKS                       R18 R18 K25 ["Parent"]
      121 GETTABLEKS                       R18 R18 K29 ["sandboxAsset"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K13 [require]
      126 GETTABLEKS                       R19 R0 K30 ["Flags"]
      128 GETTABLEKS                       R19 R19 K31 ["FFlagAssistantInsertAssetSandboxScripts"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K13 [require]
      133 GETTABLEKS                       R20 R0 K30 ["Flags"]
      135 GETTABLEKS                       R20 R20 K32 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K13 [require]
      140 GETTABLEKS                       R21 R0 K30 ["Flags"]
      142 GETTABLEKS                       R21 R21 K33 ["FFlagAssistantUseNewTags"]
      144 CALL                             R20 1 1
      145 GETTABLEKS                       R21 R13 K34 ["debugPrint"]
      147 DUPTABLE                         R22 K47 [{"getObjects", "getItemDetails", "loadPackageAssetAsync", "createMeshPartAsync", "getAudioApiByDefault", "insertAudioAsset", "findService", "getDataModelType", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      148 DUPCLOSURE                       R23 K48 [PROTO_0]
      149 SETTABLEKS                       R23 R22 K35 ["getObjects"]
      151 DUPCLOSURE                       R23 K49 [PROTO_1]
      152 CAPTURE                          VAL R12
      153 SETTABLEKS                       R23 R22 K36 ["getItemDetails"]
      155 DUPCLOSURE                       R23 K50 [PROTO_2]
      156 CAPTURE                          VAL R4
      157 SETTABLEKS                       R23 R22 K37 ["loadPackageAssetAsync"]
      159 DUPCLOSURE                       R23 K51 [PROTO_3]
      160 CAPTURE                          VAL R1
      161 SETTABLEKS                       R23 R22 K38 ["createMeshPartAsync"]
      163 DUPCLOSURE                       R23 K52 [PROTO_4]
      164 CAPTURE                          VAL R5
      165 SETTABLEKS                       R23 R22 K39 ["getAudioApiByDefault"]
      167 DUPCLOSURE                       R23 K53 [PROTO_5]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R23 R22 K40 ["insertAudioAsset"]
      171 DUPCLOSURE                       R23 K54 [PROTO_6]
      172 SETTABLEKS                       R23 R22 K41 ["findService"]
      174 DUPCLOSURE                       R23 K55 [PROTO_7]
      175 CAPTURE                          VAL R6
      176 SETTABLEKS                       R23 R22 K42 ["getDataModelType"]
      178 DUPCLOSURE                       R23 K56 [PROTO_8]
      179 SETTABLEKS                       R23 R22 K43 ["createDecal"]
      181 DUPCLOSURE                       R23 K57 [PROTO_9]
      182 SETTABLEKS                       R23 R22 K44 ["createDecalFromImage"]
      184 DUPCLOSURE                       R23 K58 [PROTO_10]
      185 SETTABLEKS                       R23 R22 K45 ["createSound"]
      187 DUPCLOSURE                       R23 K59 [PROTO_11]
      188 SETTABLEKS                       R23 R22 K46 ["createVideoFrame"]
      190 DUPCLOSURE                       R23 K60 [PROTO_12]
      191 CAPTURE                          VAL R3
      192 GETTABLEKS                       R24 R11 K61 ["ASSET_TYPE_ID_MAP"]
      194 GETTABLEKS                       R25 R11 K62 ["ASSET_TYPE_NAME_TO_ID"]
      196 NEWTABLE                         R26 4 0
      198 GETIMPORT                        R27 K66 [Enum.AssetType.Model]
      200 GETTABLEKS                       R27 R27 K67 ["Value"]
      202 LOADB                            R28 1
      203 SETTABLE                         R28 R26 R27
      204 GETIMPORT                        R27 K69 [Enum.AssetType.MeshPart]
      206 GETTABLEKS                       R27 R27 K67 ["Value"]
      208 LOADB                            R28 1
      209 SETTABLE                         R28 R26 R27
      210 GETIMPORT                        R27 K71 [Enum.AssetType.Package]
      212 GETTABLEKS                       R27 R27 K67 ["Value"]
      214 LOADB                            R28 1
      215 SETTABLE                         R28 R26 R27
      216 DUPCLOSURE                       R27 K72 [PROTO_13]
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R7
      219 DUPCLOSURE                       R28 K73 [PROTO_14]
      220 CAPTURE                          VAL R2
      221 DUPCLOSURE                       R29 K74 [PROTO_16]
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R9
      225 DUPCLOSURE                       R30 K75 [PROTO_18]
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R3
      230 DUPCLOSURE                       R31 K76 [PROTO_19]
      231 DUPCLOSURE                       R32 K77 [PROTO_20]
      232 DUPCLOSURE                       R33 K78 [PROTO_21]
      233 DUPCLOSURE                       R34 K79 [PROTO_23]
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R21
      236 DUPCLOSURE                       R35 K80 [PROTO_26]
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R8
      240 DUPCLOSURE                       R36 K81 [PROTO_28]
      241 CAPTURE                          VAL R22
      242 DUPCLOSURE                       R37 K82 [PROTO_30]
      243 CAPTURE                          VAL R22
      244 DUPCLOSURE                       R38 K83 [PROTO_34]
      245 CAPTURE                          VAL R22
      246 DUPCLOSURE                       R39 K84 [PROTO_36]
      247 CAPTURE                          VAL R22
      248 DUPCLOSURE                       R40 K85 [PROTO_38]
      249 CAPTURE                          VAL R22
      250 DUPCLOSURE                       R41 K86 [PROTO_39]
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R23
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R18
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R30
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R24
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R16
      262 CAPTURE                          VAL R35
      263 CAPTURE                          VAL R38
      264 CAPTURE                          VAL R34
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R31
      270 CAPTURE                          VAL R8
      271 CAPTURE                          VAL R32
      272 CAPTURE                          VAL R26
      273 CAPTURE                          VAL R17
      274 DUPTABLE                         R42 K90 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
      275 SETTABLEKS                       R28 R42 K87 ["selectInsertedAssets"]
      277 SETTABLEKS                       R29 R42 K88 ["listenToLinkChanges"]
      279 SETTABLEKS                       R41 R42 K89 ["insertAssetAsync"]
      281 DUPTABLE                         R43 K93 [{"bridge", "_deps"}]
      282 SETTABLEKS                       R42 R43 K91 ["bridge"]
      284 SETTABLEKS                       R22 R43 K92 ["_deps"]
      286 RETURN                           R43 1
