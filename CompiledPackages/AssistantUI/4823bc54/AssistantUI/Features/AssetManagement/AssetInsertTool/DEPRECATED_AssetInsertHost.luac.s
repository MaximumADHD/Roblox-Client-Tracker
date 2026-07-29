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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Insert"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R2 K3 ["Assistant:"]
       12 MOVE                             R3 R0
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

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
       99 GETTABLEKS                       R8 R8 K27 ["FFlagAssistantInsertAssetSandboxScripts"]
      101 JUMPIFNOT                        R8 ; [+17]
      102 LOADB                            R8 0
      103 GETTABLEKS                       R10 R6 K28 ["capabilities"]
      105 FASTCALL1                        TYPE R10 ; [+2]
      106 GETIMPORT                        R9 K30 [type]
      108 CALL                             R9 1 1
      109 JUMPIFNOTEQKS                    R9 K31 ["table"] ; [+9]
      111 GETTABLEKS                       R9 R6 K28 ["capabilities"]
      113 GETTABLEKS                       R9 R9 K32 ["shouldSandbox"]
      115 JUMPIFEQKB                       R9 TRUE ; [+2]
      117 LOADB                            R8 0 +1
      118 LOADB                            R8 1
      119 SETTABLEKS                       R8 R7 K21 ["ShouldSandbox"]
      121 GETUPVAL                         R8 0
      122 LOADK                            R10 K33 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      123 GETTABLEKS                       R12 R7 K17 ["AssetId"]
      125 GETTABLEKS                       R13 R7 K18 ["Name"]
      127 GETTABLEKS                       R14 R7 K19 ["AssetTypeId"]
      129 GETTABLEKS                       R16 R7 K20 ["AssetSubTypes"]
      131 JUMPIFNOT                        R16 ; [+7]
      132 GETUPVAL                         R15 3
      133 GETTABLEKS                       R17 R7 K20 ["AssetSubTypes"]
      135 NAMECALL                         R15 R15 K34 ["JSONEncode"]
      137 CALL                             R15 2 1
      138 JUMPIF                           R15 ; [+1]
      139 LOADK                            R15 K35 ["nil"]
      140 NAMECALL                         R10 R10 K3 ["format"]
      142 CALL                             R10 5 1
      143 MOVE                             R9 R10
      144 CALL                             R8 1 0
      145 GETTABLEKS                       R10 R6 K28 ["capabilities"]
      147 FASTCALL1                        TYPE R10 ; [+2]
      148 GETIMPORT                        R9 K30 [type]
      150 CALL                             R9 1 1
      151 JUMPIFNOTEQKS                    R9 K31 ["table"] ; [+8]
      153 GETUPVAL                         R8 3
      154 GETTABLEKS                       R10 R6 K28 ["capabilities"]
      156 NAMECALL                         R8 R8 K34 ["JSONEncode"]
      158 CALL                             R8 2 1
      159 JUMP                             ; [+11]
      160 LOADK                            R9 K36 ["<%*>"]
      161 GETTABLEKS                       R12 R6 K28 ["capabilities"]
      163 FASTCALL1                        TYPE R12 ; [+2]
      164 GETIMPORT                        R11 K30 [type]
      166 CALL                             R11 1 1
      167 NAMECALL                         R9 R9 K3 ["format"]
      169 CALL                             R9 2 1
      170 MOVE                             R8 R9
      171 GETUPVAL                         R9 0
      172 LOADK                            R11 K37 ["[AssetInsertTool] Metadata sandbox signal: flag=%*, asset.capabilities=%*, ShouldSandbox=%*"]
      173 GETUPVAL                         R14 2
      174 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantInsertAssetSandboxScripts"]
      176 FASTCALL1                        TOSTRING R14 ; [+2]
      177 GETIMPORT                        R13 K9 [tostring]
      179 CALL                             R13 1 1
      180 MOVE                             R14 R8
      181 GETTABLEKS                       R16 R7 K21 ["ShouldSandbox"]
      183 FASTCALL1                        TOSTRING R16 ; [+2]
      184 GETIMPORT                        R15 K9 [tostring]
      186 CALL                             R15 1 1
      187 NAMECALL                         R11 R11 K3 ["format"]
      189 CALL                             R11 4 1
      190 MOVE                             R10 R11
      191 CALL                             R9 1 0
      192 LOADB                            R9 1
      193 MOVE                             R10 R7
      194 RETURN                           R9 2

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
       54 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantInsertAssetSandboxScripts"]
       56 JUMPIF                           R8 ; [+38]
       57 GETTABLEKS                       R8 R0 K8 ["assetType"]
       59 JUMPIFNOT                        R8 ; [+35]
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R10 R0 K8 ["assetType"]
       63 GETTABLE                         R8 R9 R10
       64 JUMPIFNOT                        R8 ; [+30]
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R9 R0 K8 ["assetType"]
       68 GETTABLE                         R4 R8 R9
       69 GETTABLEKS                       R8 R0 K7 ["assetName"]
       71 ORK                              R5 R8 K15 ["Asset"]
       72 GETTABLEKS                       R8 R0 K8 ["assetType"]
       74 JUMPIFNOTEQKS                    R8 K16 ["Package"] ; [+8]
       76 NEWTABLE                         R8 0 1
       78 LOADK                            R9 K16 ["Package"]
       79 SETLIST                          R8 R9 1 [1]
       81 MOVE                             R6 R8
       82 JUMP                             ; [+1]
       83 LOADNIL                          R6
       84 GETUPVAL                         R8 3
       85 LOADK                            R10 K17 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       86 GETTABLEKS                       R12 R0 K8 ["assetType"]
       88 MOVE                             R13 R4
       89 NAMECALL                         R10 R10 K10 ["format"]
       91 CALL                             R10 3 1
       92 MOVE                             R9 R10
       93 CALL                             R8 1 0
       94 JUMP                             ; [+90]
       95 GETTABLEKS                       R8 R0 K8 ["assetType"]
       97 JUMPIFNOT                        R8 ; [+9]
       98 GETUPVAL                         R8 3
       99 LOADK                            R10 K18 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
      100 GETTABLEKS                       R12 R0 K8 ["assetType"]
      102 NAMECALL                         R10 R10 K10 ["format"]
      104 CALL                             R10 2 1
      105 MOVE                             R9 R10
      106 CALL                             R8 1 0
      107 GETUPVAL                         R8 6
      108 MOVE                             R9 R2
      109 CALL                             R8 1 2
      110 JUMPIF                           R8 ; [+4]
      111 GETUPVAL                         R10 2
      112 MOVE                             R11 R9
      113 CALL                             R10 1 1
      114 RETURN                           R10 1
      115 GETTABLEKS                       R10 R9 K19 ["AssetId"]
      117 JUMPIFNOT                        R10 ; [+45]
      118 GETTABLEKS                       R11 R9 K19 ["AssetId"]
      120 FASTCALL1                        TOSTRING R11 ; [+2]
      121 GETIMPORT                        R10 K21 [tostring]
      123 CALL                             R10 1 1
      124 JUMPIFEQ                         R10 R2 ; [+29]
      126 GETUPVAL                         R11 3
      127 LOADK                            R13 K22 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      128 MOVE                             R15 R2
      129 MOVE                             R16 R10
      130 NAMECALL                         R13 R13 K10 ["format"]
      132 CALL                             R13 3 1
      133 MOVE                             R12 R13
      134 CALL                             R11 1 0
      135 MOVE                             R2 R10
      136 FASTCALL1                        TONUMBER R2 ; [+3]
      137 MOVE                             R12 R2
      138 GETIMPORT                        R11 K12 [tonumber]
      140 CALL                             R11 1 1
      141 MOVE                             R3 R11
      142 JUMPIF                           R3 ; [+28]
      143 GETUPVAL                         R11 2
      144 LOADK                            R13 K23 ["Resolved asset ID is not a valid number: "]
      145 FASTCALL1                        TOSTRING R2 ; [+3]
      146 MOVE                             R15 R2
      147 GETIMPORT                        R14 K21 [tostring]
      149 CALL                             R14 1 1
      150 CONCAT                           R12 R13 R14
      151 CALL                             R11 1 1
      152 RETURN                           R11 1
      153 JUMP                             ; [+17]
      154 GETUPVAL                         R11 3
      155 LOADK                            R13 K24 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      156 MOVE                             R15 R2
      157 NAMECALL                         R13 R13 K10 ["format"]
      159 CALL                             R13 2 1
      160 MOVE                             R12 R13
      161 CALL                             R11 1 0
      162 JUMP                             ; [+8]
      163 GETUPVAL                         R10 3
      164 LOADK                            R12 K25 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      165 MOVE                             R14 R2
      166 NAMECALL                         R12 R12 K10 ["format"]
      168 CALL                             R12 2 1
      169 MOVE                             R11 R12
      170 CALL                             R10 1 0
      171 GETTABLEKS                       R4 R9 K26 ["AssetTypeId"]
      173 GETTABLEKS                       R10 R0 K7 ["assetName"]
      175 JUMPIF                           R10 ; [+4]
      176 GETTABLEKS                       R10 R9 K27 ["Name"]
      178 JUMPIF                           R10 ; [+1]
      179 LOADK                            R10 K15 ["Asset"]
      180 MOVE                             R5 R10
      181 GETTABLEKS                       R6 R9 K28 ["AssetSubTypes"]
      183 GETTABLEKS                       R7 R9 K29 ["ShouldSandbox"]
      185 GETUPVAL                         R8 3
      186 LOADK                            R10 K30 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      187 MOVE                             R12 R2
      188 MOVE                             R13 R3
      189 MOVE                             R14 R4
      190 MOVE                             R15 R5
      191 JUMPIFNOT                        R6 ; [+2]
      192 LENGTH                           R16 R6
      193 JUMPIF                           R16 ; [+1]
      194 LOADN                            R16 0
      195 NAMECALL                         R10 R10 K10 ["format"]
      197 CALL                             R10 6 1
      198 MOVE                             R9 R10
      199 CALL                             R8 1 0
      200 GETUPVAL                         R8 7
      201 GETTABLEKS                       R8 R8 K31 ["isPackageAsset"]
      203 MOVE                             R9 R4
      204 MOVE                             R10 R6
      205 CALL                             R8 2 1
      206 GETUPVAL                         R10 8
      207 GETTABLE                         R9 R10 R4
      208 JUMPIF                           R9 ; [+9]
      209 GETUPVAL                         R10 2
      210 LOADK                            R12 K32 ["Unsupported asset type ID: %*"]
      211 MOVE                             R14 R4
      212 NAMECALL                         R12 R12 K10 ["format"]
      214 CALL                             R12 2 1
      215 MOVE                             R11 R12
      216 CALL                             R10 1 1
      217 RETURN                           R10 1
      218 GETTABLEKS                       R10 R9 K27 ["Name"]
      220 GETUPVAL                         R11 3
      221 LOADK                            R13 K33 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      222 MOVE                             R15 R10
      223 MOVE                             R16 R8
      224 NAMECALL                         R13 R13 K10 ["format"]
      226 CALL                             R13 3 1
      227 MOVE                             R12 R13
      228 CALL                             R11 1 0
      229 LOADNIL                          R11
      230 NEWTABLE                         R12 0 0
      232 GETTABLEKS                       R13 R1 K34 ["initArgs"]
      234 GETTABLEKS                       R13 R13 K35 ["environment"]
      236 GETTABLEKS                       R13 R13 K36 ["assetAccessController"]
      238 GETUPVAL                         R14 4
      239 GETTABLEKS                       R14 R14 K37 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      241 JUMPIF                           R14 ; [+30]
      242 JUMPIFNOT                        R13 ; [+29]
      243 GETIMPORT                        R14 K39 [game]
      245 GETTABLEKS                       R14 R14 K40 ["GameId"]
      247 JUMPIFEQKN                       R14 K41 [0] ; [+24]
      249 GETUPVAL                         R14 3
      250 LOADK                            R16 K42 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      251 MOVE                             R18 R3
      252 MOVE                             R19 R10
      253 NAMECALL                         R16 R16 K10 ["format"]
      255 CALL                             R16 3 1
      256 MOVE                             R15 R16
      257 CALL                             R14 1 0
      258 GETUPVAL                         R14 9
      259 NEWTABLE                         R15 0 1
      261 MOVE                             R16 R3
      262 SETLIST                          R15 R16 1 [1]
      264 NEWTABLE                         R16 0 1
      266 MOVE                             R17 R9
      267 SETLIST                          R16 R17 1 [1]
      269 MOVE                             R17 R13
      270 CALL                             R14 3 1
      271 MOVE                             R12 R14
      272 GETIMPORT                        R14 K44 [next]
      274 MOVE                             R15 R12
      275 CALL                             R14 1 1
      276 JUMPIFNOT                        R14 ; [+23]
      277 MOVE                             R14 R12
      278 LOADNIL                          R15
      279 LOADNIL                          R16
      280 FORGPREP                         R14
      281 LOADK                            R20 K45 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      282 MOVE                             R22 R17
      283 NAMECALL                         R20 R20 K10 ["format"]
      285 CALL                             R20 2 1
      286 MOVE                             R19 R20
      287 ORK                              R20 R11 K46 [""]
      288 MOVE                             R21 R19
      289 CONCAT                           R11 R20 R21
      290 FORGLOOP                         R14 2 ; [-10]
      292 GETUPVAL                         R14 3
      293 LOADK                            R16 K47 ["[AssetInsertTool] %*"]
      294 MOVE                             R18 R11
      295 NAMECALL                         R16 R16 K10 ["format"]
      297 CALL                             R16 2 1
      298 MOVE                             R15 R16
      299 CALL                             R14 1 0
      300 GETTABLE                         R14 R12 R3
      301 JUMPIFNOT                        R14 ; [+4]
      302 GETUPVAL                         R14 2
      303 ORK                              R15 R11 K48 ["Failed to grant required permissions for asset"]
      304 CALL                             R14 1 1
      305 RETURN                           R14 1
      306 NEWTABLE                         R14 0 0
      308 LOADNIL                          R15
      309 LOADNIL                          R16
      310 GETIMPORT                        R17 K52 [Enum.AssetType.Model]
      312 JUMPIFEQ                         R9 R17 ; [+9]
      314 GETIMPORT                        R17 K54 [Enum.AssetType.MeshPart]
      316 JUMPIFEQ                         R9 R17 ; [+5]
      318 GETIMPORT                        R17 K55 [Enum.AssetType.Package]
      320 JUMPIFNOTEQ                      R9 R17 ; [+13]
      322 LOADNIL                          R17
      323 GETUPVAL                         R18 10
      324 MOVE                             R19 R2
      325 MOVE                             R20 R8
      326 CALL                             R18 2 3
      327 MOVE                             R15 R18
      328 MOVE                             R17 R19
      329 MOVE                             R16 R20
      330 JUMPIFNOT                        R15 ; [+193]
      331 JUMPIFNOT                        R17 ; [+192]
      332 MOVE                             R14 R17
      333 JUMP                             ; [+190]
      334 GETIMPORT                        R17 K57 [Enum.AssetType.Mesh]
      336 JUMPIFNOTEQ                      R9 R17 ; [+35]
      338 LOADNIL                          R17
      339 MOVE                             R21 R3
      340 GETIMPORT                        R22 K59 [pcall]
      342 NEWCLOSURE                       R23 P0
      343 CAPTURE                          UPVAL U0
      344 CAPTURE                          VAL R21
      345 CALL                             R22 1 2
      346 JUMPIF                           R22 ; [+9]
      347 LOADB                            R18 0
      348 LOADNIL                          R19
      349 LOADK                            R24 K60 ["Failed to create mesh part: %*"]
      350 MOVE                             R26 R23
      351 NAMECALL                         R24 R24 K10 ["format"]
      353 CALL                             R24 2 1
      354 MOVE                             R20 R24
      355 JUMP                             ; [+3]
      356 LOADB                            R18 1
      357 MOVE                             R19 R23
      358 LOADNIL                          R20
      359 MOVE                             R15 R18
      360 MOVE                             R17 R19
      361 MOVE                             R16 R20
      362 JUMPIFNOT                        R15 ; [+161]
      363 JUMPIFNOT                        R17 ; [+160]
      364 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      366 MOVE                             R19 R14
      367 MOVE                             R20 R17
      368 GETIMPORT                        R18 K63 [table.insert]
      370 CALL                             R18 2 0
      371 JUMP                             ; [+152]
      372 GETIMPORT                        R17 K65 [Enum.AssetType.Decal]
      374 JUMPIFEQ                         R9 R17 ; [+5]
      376 GETIMPORT                        R17 K67 [Enum.AssetType.Image]
      378 JUMPIFNOTEQ                      R9 R17 ; [+42]
      380 LOADNIL                          R17
      381 MOVE                             R21 R2
      382 GETIMPORT                        R23 K67 [Enum.AssetType.Image]
      384 JUMPIFEQ                         R9 R23 ; [+2]
      386 LOADB                            R22 0 +1
      387 LOADB                            R22 1
      388 GETIMPORT                        R23 K59 [pcall]
      390 NEWCLOSURE                       R24 P1
      391 CAPTURE                          VAL R22
      392 CAPTURE                          UPVAL U0
      393 CAPTURE                          VAL R21
      394 CALL                             R23 1 2
      395 JUMPIF                           R23 ; [+9]
      396 LOADB                            R18 0
      397 LOADNIL                          R19
      398 LOADK                            R25 K68 ["Failed to create decal: %*"]
      399 MOVE                             R27 R24
      400 NAMECALL                         R25 R25 K10 ["format"]
      402 CALL                             R25 2 1
      403 MOVE                             R20 R25
      404 JUMP                             ; [+3]
      405 LOADB                            R18 1
      406 MOVE                             R19 R24
      407 LOADNIL                          R20
      408 MOVE                             R15 R18
      409 MOVE                             R17 R19
      410 MOVE                             R16 R20
      411 JUMPIFNOT                        R15 ; [+112]
      412 JUMPIFNOT                        R17 ; [+111]
      413 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      415 MOVE                             R19 R14
      416 MOVE                             R20 R17
      417 GETIMPORT                        R18 K63 [table.insert]
      419 CALL                             R18 2 0
      420 JUMP                             ; [+103]
      421 GETIMPORT                        R17 K70 [Enum.AssetType.Audio]
      423 JUMPIFNOTEQ                      R9 R17 ; [+13]
      425 LOADNIL                          R17
      426 GETUPVAL                         R18 11
      427 MOVE                             R19 R2
      428 MOVE                             R20 R5
      429 CALL                             R18 2 3
      430 MOVE                             R15 R18
      431 MOVE                             R17 R19
      432 MOVE                             R16 R20
      433 JUMPIFNOT                        R15 ; [+90]
      434 JUMPIFNOT                        R17 ; [+89]
      435 MOVE                             R14 R17
      436 JUMP                             ; [+87]
      437 GETIMPORT                        R17 K72 [Enum.AssetType.Video]
      439 JUMPIFNOTEQ                      R9 R17 ; [+35]
      441 LOADNIL                          R17
      442 MOVE                             R21 R2
      443 GETIMPORT                        R22 K59 [pcall]
      445 NEWCLOSURE                       R23 P2
      446 CAPTURE                          UPVAL U0
      447 CAPTURE                          VAL R21
      448 CALL                             R22 1 2
      449 JUMPIF                           R22 ; [+9]
      450 LOADB                            R18 0
      451 LOADNIL                          R19
      452 LOADK                            R24 K73 ["Failed to create video frame: %*"]
      453 MOVE                             R26 R23
      454 NAMECALL                         R24 R24 K10 ["format"]
      456 CALL                             R24 2 1
      457 MOVE                             R20 R24
      458 JUMP                             ; [+3]
      459 LOADB                            R18 1
      460 MOVE                             R19 R23
      461 LOADNIL                          R20
      462 MOVE                             R15 R18
      463 MOVE                             R17 R19
      464 MOVE                             R16 R20
      465 JUMPIFNOT                        R15 ; [+58]
      466 JUMPIFNOT                        R17 ; [+57]
      467 FASTCALL2                        TABLE_INSERT R14 R17 ; [+5]
      469 MOVE                             R19 R14
      470 MOVE                             R20 R17
      471 GETIMPORT                        R18 K63 [table.insert]
      473 CALL                             R18 2 0
      474 JUMP                             ; [+49]
      475 GETIMPORT                        R17 K75 [Enum.AssetType.Animation]
      477 JUMPIFNOTEQ                      R9 R17 ; [+37]
      479 LOADNIL                          R17
      480 MOVE                             R21 R3
      481 GETIMPORT                        R22 K59 [pcall]
      483 NEWCLOSURE                       R23 P3
      484 CAPTURE                          UPVAL U0
      485 CAPTURE                          VAL R21
      486 CALL                             R22 1 2
      487 JUMPIF                           R22 ; [+9]
      488 LOADB                            R18 0
      489 LOADNIL                          R19
      490 LOADK                            R24 K76 ["Failed to load animation asset: %*"]
      491 MOVE                             R26 R23
      492 NAMECALL                         R24 R24 K10 ["format"]
      494 CALL                             R24 2 1
      495 MOVE                             R20 R24
      496 JUMP                             ; [+11]
      497 JUMPIFNOT                        R23 ; [+3]
      498 LENGTH                           R24 R23
      499 JUMPIFNOTEQKN                    R24 K41 [0] ; [+5]
      501 LOADB                            R18 0
      502 LOADNIL                          R19
      503 LOADK                            R20 K77 ["GetObjects returned empty result for animation"]
      504 JUMP                             ; [+3]
      505 LOADB                            R18 1
      506 MOVE                             R19 R23
      507 LOADNIL                          R20
      508 MOVE                             R15 R18
      509 MOVE                             R17 R19
      510 MOVE                             R16 R20
      511 JUMPIFNOT                        R15 ; [+12]
      512 JUMPIFNOT                        R17 ; [+11]
      513 MOVE                             R14 R17
      514 JUMP                             ; [+9]
      515 GETUPVAL                         R17 2
      516 LOADK                            R19 K78 ["Unhandled asset type: %*"]
      517 MOVE                             R21 R10
      518 NAMECALL                         R19 R19 K10 ["format"]
      520 CALL                             R19 2 1
      521 MOVE                             R18 R19
      522 CALL                             R17 1 1
      523 RETURN                           R17 1
      524 JUMPIFNOT                        R15 ; [+3]
      525 LENGTH                           R17 R14
      526 JUMPIFNOTEQKN                    R17 K41 [0] ; [+5]
      528 GETUPVAL                         R17 2
      529 ORK                              R18 R16 K79 ["Failed to load asset instances"]
      530 CALL                             R17 1 1
      531 RETURN                           R17 1
      532 GETUPVAL                         R17 3
      533 LOADK                            R19 K80 ["[AssetInsertTool] Sanitizing %* instances..."]
      534 LENGTH                           R21 R14
      535 NAMECALL                         R19 R19 K10 ["format"]
      537 CALL                             R19 2 1
      538 MOVE                             R18 R19
      539 CALL                             R17 1 0
      540 LENGTH                           R19 R14
      541 LOADN                            R17 1
      542 LOADN                            R18 -1
      543 FORNPREP                         R17
      544 GETTABLE                         R20 R14 R19
      545 LOADB                            R21 0
      546 GETUPVAL                         R22 3
      547 LOADK                            R24 K81 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      548 MOVE                             R26 R19
      549 GETTABLEKS                       R27 R20 K27 ["Name"]
      551 GETTABLEKS                       R28 R20 K82 ["ClassName"]
      553 LOADK                            R31 K51 ["Model"]
      554 NAMECALL                         R29 R20 K83 ["IsA"]
      556 CALL                             R29 2 1
      557 LOADK                            R32 K53 ["MeshPart"]
      558 NAMECALL                         R30 R20 K83 ["IsA"]
      560 CALL                             R30 2 1
      561 NAMECALL                         R24 R24 K10 ["format"]
      563 CALL                             R24 6 1
      564 MOVE                             R23 R24
      565 CALL                             R22 1 0
      566 GETUPVAL                         R22 12
      567 MOVE                             R23 R20
      568 CALL                             R22 1 2
      569 JUMPIF                           R22 ; [+12]
      570 GETUPVAL                         R24 3
      571 LOADK                            R26 K84 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      572 GETTABLEKS                       R28 R20 K82 ["ClassName"]
      574 MOVE                             R29 R23
      575 NAMECALL                         R26 R26 K10 ["format"]
      577 CALL                             R26 3 1
      578 MOVE                             R25 R26
      579 CALL                             R24 1 0
      580 LOADB                            R21 1
      581 JUMP                             ; [+27]
      582 LOADK                            R26 K53 ["MeshPart"]
      583 NAMECALL                         R24 R20 K83 ["IsA"]
      585 CALL                             R24 2 1
      586 JUMPIFNOT                        R24 ; [+22]
      587 NAMECALL                         R27 R20 K85 ["GetChildren"]
      589 CALL                             R27 1 1
      590 LENGTH                           R26 R27
      591 LOADN                            R27 0
      592 JUMPIFNOTLT                      R27 R26 ; [+4]
      594 NAMECALL                         R26 R20 K86 ["ClearAllChildren"]
      596 CALL                             R26 1 0
      597 LOADB                            R24 1
      598 LOADNIL                          R25
      599 JUMPIF                           R24 ; [+9]
      600 GETUPVAL                         R26 3
      601 LOADK                            R28 K87 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      602 MOVE                             R30 R25
      603 NAMECALL                         R28 R28 K10 ["format"]
      605 CALL                             R28 2 1
      606 MOVE                             R27 R28
      607 CALL                             R26 1 0
      608 LOADB                            R21 1
      609 JUMPIFNOT                        R21 ; [+15]
      610 GETUPVAL                         R24 3
      611 LOADK                            R26 K88 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      612 MOVE                             R28 R19
      613 GETTABLEKS                       R29 R20 K27 ["Name"]
      615 NAMECALL                         R26 R26 K10 ["format"]
      617 CALL                             R26 3 1
      618 MOVE                             R25 R26
      619 CALL                             R24 1 0
      620 GETIMPORT                        R24 K90 [table.remove]
      622 MOVE                             R25 R14
      623 MOVE                             R26 R19
      624 CALL                             R24 2 0
      625 FORNLOOP                         R17
      626 GETUPVAL                         R17 3
      627 LOADK                            R19 K91 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      628 LENGTH                           R21 R14
      629 NAMECALL                         R19 R19 K10 ["format"]
      631 CALL                             R19 2 1
      632 MOVE                             R18 R19
      633 CALL                             R17 1 0
      634 LENGTH                           R17 R14
      635 JUMPIFNOTEQKN                    R17 K41 [0] ; [+5]
      637 GETUPVAL                         R17 2
      638 LOADK                            R18 K92 ["All instances failed sanitization"]
      639 CALL                             R17 1 1
      640 RETURN                           R17 1
      641 GETUPVAL                         R17 3
      642 LOADK                            R19 K93 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      643 LENGTH                           R21 R14
      644 NAMECALL                         R19 R19 K10 ["format"]
      646 CALL                             R19 2 1
      647 MOVE                             R18 R19
      648 CALL                             R17 1 0
      649 GETUPVAL                         R17 3
      650 LOADK                            R19 K94 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      651 MOVE                             R21 R3
      652 LENGTH                           R22 R14
      653 NAMECALL                         R19 R19 K10 ["format"]
      655 CALL                             R19 3 1
      656 MOVE                             R18 R19
      657 CALL                             R17 1 0
      658 MOVE                             R17 R14
      659 LOADNIL                          R18
      660 LOADNIL                          R19
      661 FORGPREP                         R17
      662 GETUPVAL                         R22 13
      663 MOVE                             R23 R3
      664 MOVE                             R24 R21
      665 CALL                             R22 2 0
      666 FORGLOOP                         R17 2 ; [-5]
      668 GETUPVAL                         R17 14
      669 LOADB                            R19 0
      670 NAMECALL                         R17 R17 K95 ["GenerateGUID"]
      672 CALL                             R17 2 1
      673 GETUPVAL                         R19 4
      674 GETTABLEKS                       R19 R19 K96 ["FFlagAssistantUseNewTags"]
      676 JUMPIFNOT                        R19 ; [+7]
      677 GETUPVAL                         R18 15
      678 GETTABLEKS                       R18 R18 K97 ["getUniqueTag"]
      680 LOADK                            R19 K98 ["Insert"]
      681 MOVE                             R20 R17
      682 CALL                             R18 2 1
      683 JUMP                             ; [+3]
      684 LOADK                            R19 K99 ["Assistant:"]
      685 MOVE                             R20 R17
      686 CONCAT                           R18 R19 R20
      687 GETUPVAL                         R19 14
      688 LOADB                            R21 0
      689 NAMECALL                         R19 R19 K95 ["GenerateGUID"]
      691 CALL                             R19 2 1
      692 GETUPVAL                         R20 3
      693 LOADK                            R22 K100 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      694 MOVE                             R24 R17
      695 MOVE                             R25 R18
      696 NAMECALL                         R22 R22 K10 ["format"]
      698 CALL                             R22 3 1
      699 MOVE                             R21 R22
      700 CALL                             R20 1 0
      701 GETUPVAL                         R20 16
      702 GETTABLEKS                       R21 R0 K9 ["parentPath"]
      704 CALL                             R20 1 2
      705 GETUPVAL                         R22 3
      706 LOADK                            R24 K101 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      707 NAMECALL                         R26 R20 K102 ["GetFullName"]
      709 CALL                             R26 1 1
      710 ORK                              R27 R21 K103 ["none"]
      711 NAMECALL                         R24 R24 K10 ["format"]
      713 CALL                             R24 3 1
      714 MOVE                             R23 R24
      715 CALL                             R22 1 0
      716 GETTABLEN                        R22 R14 1
      717 GETTABLEKS                       R22 R22 K82 ["ClassName"]
      719 GETTABLEKS                       R23 R1 K34 ["initArgs"]
      721 GETTABLEKS                       R23 R23 K35 ["environment"]
      723 GETTABLEKS                       R24 R23 K104 ["startRecording"]
      725 MOVE                             R25 R19
      726 CALL                             R24 1 0
      727 NEWTABLE                         R24 0 0
      729 MOVE                             R25 R14
      730 LOADNIL                          R26
      731 LOADNIL                          R27
      732 FORGPREP                         R25
      733 SETTABLEKS                       R5 R29 K27 ["Name"]
      735 MOVE                             R32 R18
      736 NAMECALL                         R30 R29 K105 ["AddTag"]
      738 CALL                             R30 2 0
      739 LOADK                            R32 K106 ["PVInstance"]
      740 NAMECALL                         R30 R29 K83 ["IsA"]
      742 CALL                             R30 2 1
      743 JUMPIFNOT                        R30 ; [+6]
      744 GETUPVAL                         R30 17
      745 GETTABLEKS                       R30 R30 K107 ["setPositionOnGround"]
      747 MOVE                             R31 R29
      748 LOADB                            R32 1
      749 CALL                             R30 2 0
      750 SETTABLEKS                       R20 R29 K108 ["Parent"]
      752 GETUPVAL                         R30 3
      753 LOADK                            R32 K109 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      754 GETTABLEKS                       R34 R29 K27 ["Name"]
      756 GETTABLEKS                       R35 R29 K82 ["ClassName"]
      758 GETUPVAL                         R36 18
      759 MOVE                             R37 R29
      760 CALL                             R36 1 1
      761 NAMECALL                         R32 R32 K10 ["format"]
      763 CALL                             R32 4 1
      764 MOVE                             R31 R32
      765 CALL                             R30 1 0
      766 DUPTABLE                         R32 K113 [{"name", "className", "fullPath"}]
      767 GETTABLEKS                       R33 R29 K27 ["Name"]
      769 SETTABLEKS                       R33 R32 K110 ["name"]
      771 GETTABLEKS                       R33 R29 K82 ["ClassName"]
      773 SETTABLEKS                       R33 R32 K111 ["className"]
      775 GETUPVAL                         R33 18
      776 MOVE                             R34 R29
      777 CALL                             R33 1 1
      778 SETTABLEKS                       R33 R32 K112 ["fullPath"]
      780 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      782 MOVE                             R31 R24
      783 GETIMPORT                        R30 K63 [table.insert]
      785 CALL                             R30 2 0
      786 FORGLOOP                         R25 2 ; [-54]
      788 GETTABLEKS                       R25 R23 K114 ["endRecording"]
      790 MOVE                             R26 R19
      791 CALL                             R25 1 0
      792 LOADB                            R25 0
      793 GETUPVAL                         R26 4
      794 GETTABLEKS                       R26 R26 K14 ["FFlagAssistantInsertAssetSandboxScripts"]
      796 GETUPVAL                         R29 19
      797 GETTABLE                         R28 R29 R4
      798 JUMPIFEQKB                       R28 TRUE ; [+2]
      800 LOADB                            R27 0 +1
      801 LOADB                            R27 1
      802 GETUPVAL                         R28 3
      803 LOADK                            R30 K115 ["[AssetInsertTool] Sandbox gate: flag=%*, typeId=%* sandboxable=%*, shouldSandbox(metadata)=%*, capabilitiesHandler=%*, instances=%*"]
      804 FASTCALL1                        TOSTRING R26 ; [+3]
      805 MOVE                             R33 R26
      806 GETIMPORT                        R32 K21 [tostring]
      808 CALL                             R32 1 1
      809 MOVE                             R33 R4
      810 FASTCALL1                        TOSTRING R27 ; [+3]
      811 MOVE                             R35 R27
      812 GETIMPORT                        R34 K21 [tostring]
      814 CALL                             R34 1 1
      815 FASTCALL1                        TOSTRING R7 ; [+3]
      816 MOVE                             R36 R7
      817 GETIMPORT                        R35 K21 [tostring]
      819 CALL                             R35 1 1
      820 GETTABLEKS                       R38 R23 K116 ["capabilitiesHandler"]
      822 JUMPIFNOTEQKNIL                  R38 ; [+2]
      824 LOADB                            R37 0 +1
      825 LOADB                            R37 1
      826 FASTCALL1                        TOSTRING R37 ; [+2]
      827 GETIMPORT                        R36 K21 [tostring]
      829 CALL                             R36 1 1
      830 LENGTH                           R37 R14
      831 NAMECALL                         R30 R30 K10 ["format"]
      833 CALL                             R30 7 1
      834 MOVE                             R29 R30
      835 CALL                             R28 1 0
      836 JUMPIFNOT                        R26 ; [+24]
      837 JUMPIFNOT                        R27 ; [+23]
      838 JUMPIFNOT                        R7 ; [+22]
      839 GETUPVAL                         R28 20
      840 GETTABLEKS                       R28 R28 K117 ["applySandboxIfNeeded"]
      842 MOVE                             R29 R14
      843 GETTABLEKS                       R30 R23 K116 ["capabilitiesHandler"]
      845 GETUPVAL                         R31 3
      846 CALL                             R28 3 1
      847 MOVE                             R25 R28
      848 GETUPVAL                         R28 3
      849 LOADK                            R30 K118 ["[AssetInsertTool] Sandbox applied=%*"]
      850 FASTCALL1                        TOSTRING R25 ; [+3]
      851 MOVE                             R33 R25
      852 GETIMPORT                        R32 K21 [tostring]
      854 CALL                             R32 1 1
      855 NAMECALL                         R30 R30 K10 ["format"]
      857 CALL                             R30 2 1
      858 MOVE                             R29 R30
      859 CALL                             R28 1 0
      860 JUMP                             ; [+3]
      861 GETUPVAL                         R28 3
      862 LOADK                            R29 K119 ["[AssetInsertTool] Sandbox skipped — one or more gate conditions false (see flag/typeId/shouldSandbox above)"]
      863 CALL                             R28 1 0
      864 GETUPVAL                         R28 3
      865 LOADK                            R29 K120 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      866 CALL                             R28 1 0
      867 JUMPIFNOT                        R25 ; [+2]
      868 LOADK                            R28 K121 ["Inserted and set Sandboxed property to true on all scripts with all SecurityCapabilities included except for dangerous ones."]
      869 JUMP                             ; [+1]
      870 LOADNIL                          R28
      871 GETUPVAL                         R29 14
      872 DUPTABLE                         R31 K132 [{["status"] = "success", ["insertGuid"], ["tag"], ["assetId"], ["assetName"], ["assetType"], ["isPackage"], ["insertedInstances"], ["parentWarning"], ["permissionWarning"], ["sandboxed"], ["sandboxNote"]}]
      873 SETTABLEKS                       R17 R31 K124 ["insertGuid"]
      875 SETTABLEKS                       R18 R31 K125 ["tag"]
      877 SETTABLEKS                       R2 R31 K4 ["assetId"]
      879 SETTABLEKS                       R5 R31 K7 ["assetName"]
      881 SETTABLEKS                       R10 R31 K8 ["assetType"]
      883 SETTABLEKS                       R8 R31 K126 ["isPackage"]
      885 SETTABLEKS                       R24 R31 K127 ["insertedInstances"]
      887 SETTABLEKS                       R21 R31 K128 ["parentWarning"]
      889 SETTABLEKS                       R11 R31 K129 ["permissionWarning"]
      891 SETTABLEKS                       R25 R31 K130 ["sandboxed"]
      893 SETTABLEKS                       R28 R31 K131 ["sandboxNote"]
      895 NAMECALL                         R29 R29 K133 ["JSONEncode"]
      897 CALL                             R29 2 1
      898 DUPTABLE                         R30 K136 [{"result", "responseInfo"}]
      899 SETTABLEKS                       R29 R30 K134 ["result"]
      901 DUPTABLE                         R31 K137 [{"tag", "assetName", "insertGuid", "className"}]
      902 SETTABLEKS                       R18 R31 K125 ["tag"]
      904 SETTABLEKS                       R5 R31 K7 ["assetName"]
      906 SETTABLEKS                       R17 R31 K124 ["insertGuid"]
      908 SETTABLEKS                       R22 R31 K111 ["className"]
      910 SETTABLEKS                       R31 R30 K135 ["responseInfo"]
      912 RETURN                           R30 1

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
       46 GETTABLEKS                       R8 R0 K16 ["Flags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K13 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["Tagging"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K13 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["ToolUtils"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K13 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Resources"]
       67 GETTABLEKS                       R11 R11 K20 ["Localization"]
       69 GETTABLEKS                       R11 R11 K21 ["Translator"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K1 [script]
       74 LOADK                            R13 K22 ["AssetManagement"]
       75 NAMECALL                         R11 R11 K3 ["FindFirstAncestor"]
       77 CALL                             R11 2 1
       78 GETIMPORT                        R12 K13 [require]
       80 GETTABLEKS                       R13 R11 K23 ["AssetManagementConstants"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K13 [require]
       85 GETTABLEKS                       R14 R11 K24 ["AssetManagementUrls"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K13 [require]
       90 GETTABLEKS                       R15 R11 K25 ["AssetManagementUtils"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K13 [require]
       95 GETIMPORT                        R16 K1 [script]
       97 GETTABLEKS                       R16 R16 K26 ["Parent"]
       99 GETTABLEKS                       R16 R16 K27 ["AssetInsertToolBridgeTypes"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K13 [require]
      104 GETIMPORT                        R17 K1 [script]
      106 GETTABLEKS                       R17 R17 K26 ["Parent"]
      108 GETTABLEKS                       R17 R17 K28 ["assignSourceAssetId"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K13 [require]
      113 GETTABLEKS                       R18 R0 K14 ["Util"]
      115 GETTABLEKS                       R18 R18 K22 ["AssetManagement"]
      117 GETTABLEKS                       R18 R18 K29 ["grantUniversePermissions"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K13 [require]
      122 GETTABLEKS                       R19 R0 K14 ["Util"]
      124 GETTABLEKS                       R19 R19 K22 ["AssetManagement"]
      126 GETTABLEKS                       R19 R19 K30 ["sandboxAsset"]
      128 CALL                             R18 1 1
      129 GETTABLEKS                       R19 R14 K31 ["debugPrint"]
      131 DUPTABLE                         R20 K44 [{"getObjects", "getItemDetails", "loadPackageAssetAsync", "createMeshPartAsync", "getAudioApiByDefault", "insertAudioAsset", "findService", "getDataModelType", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      132 DUPCLOSURE                       R21 K45 [PROTO_0]
      133 SETTABLEKS                       R21 R20 K32 ["getObjects"]
      135 DUPCLOSURE                       R21 K46 [PROTO_1]
      136 CAPTURE                          VAL R13
      137 SETTABLEKS                       R21 R20 K33 ["getItemDetails"]
      139 DUPCLOSURE                       R21 K47 [PROTO_2]
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R21 R20 K34 ["loadPackageAssetAsync"]
      143 DUPCLOSURE                       R21 K48 [PROTO_3]
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R21 R20 K35 ["createMeshPartAsync"]
      147 DUPCLOSURE                       R21 K49 [PROTO_4]
      148 CAPTURE                          VAL R5
      149 SETTABLEKS                       R21 R20 K36 ["getAudioApiByDefault"]
      151 DUPCLOSURE                       R21 K50 [PROTO_5]
      152 CAPTURE                          VAL R5
      153 SETTABLEKS                       R21 R20 K37 ["insertAudioAsset"]
      155 DUPCLOSURE                       R21 K51 [PROTO_6]
      156 SETTABLEKS                       R21 R20 K38 ["findService"]
      158 DUPCLOSURE                       R21 K52 [PROTO_7]
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R21 R20 K39 ["getDataModelType"]
      162 DUPCLOSURE                       R21 K53 [PROTO_8]
      163 SETTABLEKS                       R21 R20 K40 ["createDecal"]
      165 DUPCLOSURE                       R21 K54 [PROTO_9]
      166 SETTABLEKS                       R21 R20 K41 ["createDecalFromImage"]
      168 DUPCLOSURE                       R21 K55 [PROTO_10]
      169 SETTABLEKS                       R21 R20 K42 ["createSound"]
      171 DUPCLOSURE                       R21 K56 [PROTO_11]
      172 SETTABLEKS                       R21 R20 K43 ["createVideoFrame"]
      174 DUPCLOSURE                       R21 K57 [PROTO_12]
      175 CAPTURE                          VAL R3
      176 GETTABLEKS                       R22 R12 K58 ["ASSET_TYPE_ID_MAP"]
      178 GETTABLEKS                       R23 R12 K59 ["ASSET_TYPE_NAME_TO_ID"]
      180 NEWTABLE                         R24 4 0
      182 GETIMPORT                        R25 K63 [Enum.AssetType.Model]
      184 GETTABLEKS                       R25 R25 K64 ["Value"]
      186 LOADB                            R26 1
      187 SETTABLE                         R26 R24 R25
      188 GETIMPORT                        R25 K66 [Enum.AssetType.MeshPart]
      190 GETTABLEKS                       R25 R25 K64 ["Value"]
      192 LOADB                            R26 1
      193 SETTABLE                         R26 R24 R25
      194 GETIMPORT                        R25 K68 [Enum.AssetType.Package]
      196 GETTABLEKS                       R25 R25 K64 ["Value"]
      198 LOADB                            R26 1
      199 SETTABLE                         R26 R24 R25
      200 DUPCLOSURE                       R25 K69 [PROTO_13]
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R8
      203 DUPCLOSURE                       R26 K70 [PROTO_14]
      204 CAPTURE                          VAL R2
      205 DUPCLOSURE                       R27 K71 [PROTO_16]
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R10
      209 DUPCLOSURE                       R28 K72 [PROTO_18]
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R3
      214 DUPCLOSURE                       R29 K73 [PROTO_19]
      215 DUPCLOSURE                       R30 K74 [PROTO_20]
      216 DUPCLOSURE                       R31 K75 [PROTO_21]
      217 DUPCLOSURE                       R32 K76 [PROTO_23]
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R19
      220 DUPCLOSURE                       R33 K77 [PROTO_26]
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R9
      224 DUPCLOSURE                       R34 K78 [PROTO_28]
      225 CAPTURE                          VAL R20
      226 DUPCLOSURE                       R35 K79 [PROTO_30]
      227 CAPTURE                          VAL R20
      228 DUPCLOSURE                       R36 K80 [PROTO_34]
      229 CAPTURE                          VAL R20
      230 DUPCLOSURE                       R37 K81 [PROTO_36]
      231 CAPTURE                          VAL R20
      232 DUPCLOSURE                       R38 K82 [PROTO_38]
      233 CAPTURE                          VAL R20
      234 DUPCLOSURE                       R39 K83 [PROTO_39]
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R28
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R36
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R18
      256 DUPTABLE                         R40 K87 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
      257 SETTABLEKS                       R26 R40 K84 ["selectInsertedAssets"]
      259 SETTABLEKS                       R27 R40 K85 ["listenToLinkChanges"]
      261 SETTABLEKS                       R39 R40 K86 ["insertAssetAsync"]
      263 DUPTABLE                         R41 K90 [{"bridge", "_deps"}]
      264 SETTABLEKS                       R40 R41 K88 ["bridge"]
      266 SETTABLEKS                       R20 R41 K89 ["_deps"]
      268 RETURN                           R41 1
