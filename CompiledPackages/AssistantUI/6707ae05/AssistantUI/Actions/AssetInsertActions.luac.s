PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1], ["responseInfo"] = }]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K6 [{["status"] = "error", ["error"]}]
        3 SETTABLEKS                       R0 R4 K5 ["error"]
        5 NAMECALL                         R2 R2 K7 ["JSONEncode"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["result"]
       10 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K2 ["assetId must be a number"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["getItemDetailsAsync"]
       15 NEWTABLE                         R2 0 1
       17 MOVE                             R3 R0
       18 SETLIST                          R2 R3 1 [1]
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+7]
        6 LOADB                            R2 0
        7 LOADK                            R3 K2 ["Invalid asset ID: %*"]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 RETURN                           R2 2
       13 GETUPVAL                         R2 0
       14 LOADK                            R3 K4 ["[AssetInsertTool] Fetching metadata for assetId=%*"]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R3 K3 ["format"]
       18 CALL                             R3 2 1
       19 CALL                             R2 1 0
       20 GETIMPORT                        R2 K6 [pcall]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CALL                             R2 1 2
       26 JUMPIF                           R2 ; [+22]
       27 GETUPVAL                         R4 0
       28 LOADK                            R5 K7 ["[AssetInsertTool] Metadata fetch failed: %*"]
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R8 R3
       31 GETIMPORT                        R7 K9 [tostring]
       33 CALL                             R7 1 1
       34 NAMECALL                         R5 R5 K3 ["format"]
       36 CALL                             R5 2 1
       37 CALL                             R4 1 0
       38 LOADB                            R4 0
       39 LOADK                            R5 K10 ["Failed to fetch asset metadata: %*"]
       40 FASTCALL1                        TOSTRING R3 ; [+3]
       41 MOVE                             R8 R3
       42 GETIMPORT                        R7 K9 [tostring]
       44 CALL                             R7 1 1
       45 NAMECALL                         R5 R5 K3 ["format"]
       47 CALL                             R5 2 1
       48 RETURN                           R4 2
       49 GETTABLEKS                       R4 R3 K11 ["data"]
       51 JUMPIFNOT                        R4 ; [+3]
       52 LENGTH                           R5 R4
       53 JUMPIFNOTEQKN                    R5 K12 [0] ; [+8]
       55 LOADB                            R5 0
       56 LOADK                            R6 K13 ["No asset found for ID: %*"]
       57 MOVE                             R8 R1
       58 NAMECALL                         R6 R6 K3 ["format"]
       60 CALL                             R6 2 1
       61 RETURN                           R5 2
       62 GETTABLEN                        R5 R4 1
       63 GETTABLEKS                       R6 R5 K14 ["asset"]
       65 JUMPIF                           R6 ; [+7]
       66 LOADB                            R7 0
       67 LOADK                            R8 K15 ["Asset data missing in response for ID: %*"]
       68 MOVE                             R10 R1
       69 NAMECALL                         R8 R8 K3 ["format"]
       71 CALL                             R8 2 1
       72 RETURN                           R7 2
       73 DUPTABLE                         R7 K21 [{"AssetId", "Name", "AssetTypeId", "AssetSubTypes", "ShouldSandbox"}]
       74 GETTABLEKS                       R8 R6 K22 ["id"]
       76 SETTABLEKS                       R8 R7 K16 ["AssetId"]
       78 GETTABLEKS                       R8 R6 K23 ["name"]
       80 SETTABLEKS                       R8 R7 K17 ["Name"]
       82 GETTABLEKS                       R8 R6 K24 ["typeId"]
       84 SETTABLEKS                       R8 R7 K18 ["AssetTypeId"]
       86 GETTABLEKS                       R8 R6 K25 ["assetSubTypes"]
       88 SETTABLEKS                       R8 R7 K19 ["AssetSubTypes"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
       93 JUMPIFNOT                        R8 ; [+17]
       94 LOADB                            R8 0
       95 GETTABLEKS                       R10 R6 K27 ["capabilities"]
       97 FASTCALL1                        TYPE R10 ; [+2]
       98 GETIMPORT                        R9 K29 [type]
      100 CALL                             R9 1 1
      101 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+9]
      103 GETTABLEKS                       R9 R6 K27 ["capabilities"]
      105 GETTABLEKS                       R9 R9 K31 ["shouldSandbox"]
      107 JUMPIFEQKB                       R9 TRUE ; [+2]
      109 LOADB                            R8 0 +1
      110 LOADB                            R8 1
      111 SETTABLEKS                       R8 R7 K20 ["ShouldSandbox"]
      113 GETUPVAL                         R8 0
      114 LOADK                            R9 K32 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      115 GETTABLEKS                       R11 R7 K16 ["AssetId"]
      117 GETTABLEKS                       R12 R7 K17 ["Name"]
      119 GETTABLEKS                       R13 R7 K18 ["AssetTypeId"]
      121 GETTABLEKS                       R15 R7 K19 ["AssetSubTypes"]
      123 JUMPIFNOT                        R15 ; [+7]
      124 GETUPVAL                         R14 2
      125 GETTABLEKS                       R16 R7 K19 ["AssetSubTypes"]
      127 NAMECALL                         R14 R14 K33 ["JSONEncode"]
      129 CALL                             R14 2 1
      130 JUMPIF                           R14 ; [+1]
      131 LOADK                            R14 K34 ["nil"]
      132 NAMECALL                         R9 R9 K3 ["format"]
      134 CALL                             R9 5 1
      135 CALL                             R8 1 0
      136 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      138 FASTCALL1                        TYPE R10 ; [+2]
      139 GETIMPORT                        R9 K29 [type]
      141 CALL                             R9 1 1
      142 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+8]
      144 GETUPVAL                         R8 2
      145 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      147 NAMECALL                         R8 R8 K33 ["JSONEncode"]
      149 CALL                             R8 2 1
      150 JUMP                             ; [+10]
      151 LOADK                            R8 K35 ["<%*>"]
      152 GETTABLEKS                       R11 R6 K27 ["capabilities"]
      154 FASTCALL1                        TYPE R11 ; [+2]
      155 GETIMPORT                        R10 K29 [type]
      157 CALL                             R10 1 1
      158 NAMECALL                         R8 R8 K3 ["format"]
      160 CALL                             R8 2 1
      161 GETUPVAL                         R9 0
      162 LOADK                            R10 K36 ["[AssetInsertTool] Metadata sandbox signal: flag=%*, asset.capabilities=%*, ShouldSandbox=%*"]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
      166 FASTCALL1                        TOSTRING R13 ; [+2]
      167 GETIMPORT                        R12 K9 [tostring]
      169 CALL                             R12 1 1
      170 MOVE                             R13 R8
      171 GETTABLEKS                       R15 R7 K20 ["ShouldSandbox"]
      173 FASTCALL1                        TOSTRING R15 ; [+2]
      174 GETIMPORT                        R14 K9 [tostring]
      176 CALL                             R14 1 1
      177 NAMECALL                         R10 R10 K3 ["format"]
      179 CALL                             R10 4 1
      180 CALL                             R9 1 0
      181 LOADB                            R9 1
      182 MOVE                             R10 R7
      183 RETURN                           R9 2

PROTO_4:
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
       54 JUMPIF                           R8 ; [+9]
       55 GETIMPORT                        R9 K2 [workspace]
       57 LOADK                            R10 K13 ["Could not resolve path \"%*\": \"%*\" not found. Defaulting to workspace."]
       58 MOVE                             R12 R0
       59 MOVE                             R13 R7
       60 NAMECALL                         R10 R10 K14 ["format"]
       62 CALL                             R10 3 1
       63 RETURN                           R9 2
       64 MOVE                             R2 R8
       65 FORGLOOP                         R3 2 ; [-16]
       67 MOVE                             R3 R2
       68 LOADNIL                          R4
       69 RETURN                           R3 2

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["ClassName"]
        5 NAMECALL                         R0 R0 K3 ["FindService"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 LOADK                            R4 K2 ["[AssetInsertTool] sanitizeModel: ClassName=%*, FindService ok=%*, found=%*"]
        7 GETTABLEKS                       R6 R0 K3 ["ClassName"]
        9 MOVE                             R7 R1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 4 1
       17 CALL                             R3 1 0
       18 JUMPIFNOT                        R1 ; [+17]
       19 JUMPIFNOT                        R2 ; [+16]
       20 GETUPVAL                         R3 0
       21 LOADK                            R4 K5 ["[AssetInsertTool] sanitizeModel REJECTED: %* is an existing service"]
       22 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 CALL                             R3 1 0
       28 LOADB                            R3 0
       29 LOADK                            R4 K6 ["Asset appears to be a service (%*) rather than a valid model"]
       30 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       32 NAMECALL                         R4 R4 K4 ["format"]
       34 CALL                             R4 2 1
       35 RETURN                           R3 2
       36 GETUPVAL                         R3 0
       37 LOADK                            R4 K7 ["[AssetInsertTool] sanitizeModel PASSED: %*"]
       38 GETTABLEKS                       R6 R0 K8 ["Name"]
       40 NAMECALL                         R4 R4 K4 ["format"]
       42 CALL                             R4 2 1
       43 CALL                             R3 1 0
       44 LOADB                            R3 1
       45 LOADNIL                          R4
       46 RETURN                           R3 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadPackageAssetAsync"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 JUMPIFNOT                        R2 ; [+63]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetInsertTool] Loading as PACKAGE: rbxassetid://%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 CALL                             R3 1 0
        8 GETIMPORT                        R3 K3 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+15]
       15 GETUPVAL                         R5 0
       16 LOADK                            R6 K4 ["[AssetInsertTool] LoadPackageAssetAsync FAILED: %*"]
       17 MOVE                             R8 R4
       18 NAMECALL                         R6 R6 K1 ["format"]
       20 CALL                             R6 2 1
       21 CALL                             R5 1 0
       22 LOADB                            R5 0
       23 LOADNIL                          R6
       24 LOADK                            R7 K5 ["Failed to load package asset: %*"]
       25 MOVE                             R9 R4
       26 NAMECALL                         R7 R7 K1 ["format"]
       28 CALL                             R7 2 1
       29 RETURN                           R5 3
       30 JUMPIFNOT                        R4 ; [+29]
       31 LENGTH                           R5 R4
       32 LOADN                            R6 0
       33 JUMPIFNOTLT                      R6 R5 ; [+26]
       35 GETUPVAL                         R5 0
       36 LOADK                            R6 K6 ["[AssetInsertTool] Package loaded: %* (%*), children=%*"]
       37 GETTABLEN                        R8 R4 1
       38 GETTABLEKS                       R8 R8 K7 ["Name"]
       40 GETTABLEN                        R9 R4 1
       41 GETTABLEKS                       R9 R9 K8 ["ClassName"]
       43 GETTABLEN                        R11 R4 1
       44 NAMECALL                         R11 R11 K9 ["GetChildren"]
       46 CALL                             R11 1 1
       47 LENGTH                           R10 R11
       48 NAMECALL                         R6 R6 K1 ["format"]
       50 CALL                             R6 4 1
       51 CALL                             R5 1 0
       52 LOADB                            R5 1
       53 NEWTABLE                         R6 0 1
       55 GETTABLEN                        R7 R4 1
       56 SETLIST                          R6 R7 1 [1]
       58 LOADNIL                          R7
       59 RETURN                           R5 3
       60 LOADB                            R5 0
       61 LOADNIL                          R6
       62 LOADK                            R7 K10 ["LoadPackageAssetAsync returned empty result"]
       63 RETURN                           R5 3
       64 GETUPVAL                         R3 0
       65 LOADK                            R4 K11 ["[AssetInsertTool] Loading as MODEL via ToolUtils.loadCachedAssetAsync(%*)"]
       66 MOVE                             R6 R1
       67 NAMECALL                         R4 R4 K1 ["format"]
       69 CALL                             R4 2 1
       70 CALL                             R3 1 0
       71 GETIMPORT                        R3 K3 [pcall]
       73 NEWCLOSURE                       R4 P1
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R1
       76 CALL                             R3 1 2
       77 JUMPIF                           R3 ; [+15]
       78 GETUPVAL                         R5 0
       79 LOADK                            R6 K12 ["[AssetInsertTool] loadCachedAssetAsync FAILED: %*"]
       80 MOVE                             R8 R4
       81 NAMECALL                         R6 R6 K1 ["format"]
       83 CALL                             R6 2 1
       84 CALL                             R5 1 0
       85 LOADB                            R5 0
       86 LOADNIL                          R6
       87 LOADK                            R7 K13 ["Failed to load asset: %*"]
       88 MOVE                             R9 R4
       89 NAMECALL                         R7 R7 K1 ["format"]
       91 CALL                             R7 2 1
       92 RETURN                           R5 3
       93 JUMPIF                           R4 ; [+4]
       94 LOADB                            R5 0
       95 LOADNIL                          R6
       96 LOADK                            R7 K14 ["loadCachedAssetAsync returned nil"]
       97 RETURN                           R5 3
       98 GETUPVAL                         R5 0
       99 LOADK                            R6 K15 ["[AssetInsertTool] loadCachedAssetAsync returned: %* (%*), children=%*"]
      100 GETTABLEKS                       R8 R4 K7 ["Name"]
      102 GETTABLEKS                       R9 R4 K8 ["ClassName"]
      104 NAMECALL                         R11 R4 K9 ["GetChildren"]
      106 CALL                             R11 1 1
      107 LENGTH                           R10 R11
      108 NAMECALL                         R6 R6 K1 ["format"]
      110 CALL                             R6 4 1
      111 CALL                             R5 1 0
      112 LOADB                            R5 1
      113 NEWTABLE                         R6 0 1
      115 MOVE                             R7 R4
      116 SETLIST                          R6 R7 1 [1]
      118 LOADNIL                          R7
      119 RETURN                           R5 3

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMeshPartAsync"]
        3 GETIMPORT                        R1 K3 [Content.fromAssetId]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+8]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R6 K2 ["Failed to create mesh part: %*"]
       10 MOVE                             R8 R3
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 RETURN                           R4 3
       15 LOADB                            R4 1
       16 MOVE                             R5 R3
       17 LOADNIL                          R6
       18 RETURN                           R4 3

PROTO_14:
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

PROTO_15:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+8]
        8 LOADB                            R5 0
        9 LOADNIL                          R6
       10 LOADK                            R7 K2 ["Failed to create decal: %*"]
       11 MOVE                             R9 R4
       12 NAMECALL                         R7 R7 K3 ["format"]
       14 CALL                             R7 2 1
       15 RETURN                           R5 3
       16 LOADB                            R5 1
       17 MOVE                             R6 R4
       18 LOADNIL                          R7
       19 RETURN                           R5 3

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAudioApiByDefault"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAudioAsset"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 ORK                              R2 R3 K1 ["Audio"]
        6 LOADB                            R3 0
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSound"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_19:
        0 LOADB                            R3 0
        1 GETIMPORT                        R4 K1 [pcall]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R4 1 2
        6 JUMPIFNOT                        R4 ; [+2]
        7 JUMPIFNOT                        R5 ; [+1]
        8 LOADB                            R3 1
        9 JUMPIFNOT                        R3 ; [+23]
       10 LOADK                            R7 K2 ["rbxassetid://"]
       11 MOVE                             R8 R1
       12 CONCAT                           R6 R7 R8
       13 GETIMPORT                        R7 K1 [pcall]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R6
       18 CAPTURE                          VAL R2
       19 CALL                             R7 1 2
       20 JUMPIF                           R7 ; [+8]
       21 LOADB                            R9 0
       22 LOADNIL                          R10
       23 LOADK                            R11 K3 ["Failed to insert audio asset: %*"]
       24 MOVE                             R13 R8
       25 NAMECALL                         R11 R11 K4 ["format"]
       27 CALL                             R11 2 1
       28 RETURN                           R9 3
       29 LOADB                            R9 1
       30 MOVE                             R10 R8
       31 LOADNIL                          R11
       32 RETURN                           R9 3
       33 GETIMPORT                        R6 K1 [pcall]
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CALL                             R6 1 2
       39 JUMPIF                           R6 ; [+8]
       40 LOADB                            R8 0
       41 LOADNIL                          R9
       42 LOADK                            R10 K5 ["Failed to create sound: %*"]
       43 MOVE                             R12 R7
       44 NAMECALL                         R10 R10 K4 ["format"]
       46 CALL                             R10 2 1
       47 RETURN                           R8 3
       48 LOADB                            R8 1
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R7
       52 SETLIST                          R9 R10 1 [1]
       54 LOADNIL                          R10
       55 RETURN                           R8 3

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createVideoFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+8]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R6 K2 ["Failed to create video frame: %*"]
       10 MOVE                             R8 R3
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 RETURN                           R4 3
       15 LOADB                            R4 1
       16 MOVE                             R5 R3
       17 LOADNIL                          R6
       18 RETURN                           R4 3

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObjects"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+8]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R6 K2 ["Failed to load animation asset: %*"]
       10 MOVE                             R8 R3
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 RETURN                           R4 3
       15 JUMPIFNOT                        R3 ; [+3]
       16 LENGTH                           R4 R3
       17 JUMPIFNOTEQKN                    R4 K4 [0] ; [+5]
       19 LOADB                            R4 0
       20 LOADNIL                          R5
       21 LOADK                            R6 K5 ["GetObjects returned empty result for animation"]
       22 RETURN                           R4 3
       23 LOADB                            R4 1
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 RETURN                           R4 3

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R2 R2 K2 ["tools"]
        6 GETTABLEKS                       R2 R2 K3 ["assetInsert"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["getDataModelType"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["Types"]
       15 GETTABLEKS                       R4 R4 K6 ["Edit"]
       17 JUMPIFEQ                         R3 R4 ; [+5]
       19 GETUPVAL                         R3 1
       20 LOADK                            R4 K7 ["Cannot insert assets outside of Edit mode"]
       21 CALL                             R3 1 1
       22 RETURN                           R3 1
       23 GETTABLEKS                       R3 R0 K8 ["assetId"]
       25 GETUPVAL                         R4 2
       26 LOADK                            R5 K9 ["[AssetInsertTool] === INSERT START === input assetId=%*, assetName=%*, assetType=%*, parentPath=%*"]
       27 MOVE                             R7 R3
       28 GETTABLEKS                       R9 R0 K11 ["assetName"]
       30 ORK                              R8 R9 K10 ["nil"]
       31 GETTABLEKS                       R10 R0 K12 ["assetType"]
       33 ORK                              R9 R10 K10 ["nil"]
       34 GETTABLEKS                       R11 R0 K13 ["parentPath"]
       36 ORK                              R10 R11 K10 ["nil"]
       37 NAMECALL                         R5 R5 K14 ["format"]
       39 CALL                             R5 5 1
       40 CALL                             R4 1 0
       41 FASTCALL1                        TONUMBER R3 ; [+3]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K16 [tonumber]
       45 CALL                             R4 1 1
       46 JUMPIF                           R4 ; [+8]
       47 GETUPVAL                         R5 1
       48 LOADK                            R6 K17 ["Invalid asset ID: %*"]
       49 MOVE                             R8 R3
       50 NAMECALL                         R6 R6 K14 ["format"]
       52 CALL                             R6 2 1
       53 CALL                             R5 1 1
       54 RETURN                           R5 1
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 LOADB                            R8 0
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantInsertAssetSandboxScripts"]
       62 JUMPIF                           R9 ; [+37]
       63 GETTABLEKS                       R9 R0 K12 ["assetType"]
       65 JUMPIFNOT                        R9 ; [+34]
       66 GETUPVAL                         R10 4
       67 GETTABLEKS                       R11 R0 K12 ["assetType"]
       69 GETTABLE                         R9 R10 R11
       70 JUMPIFNOT                        R9 ; [+29]
       71 GETUPVAL                         R9 4
       72 GETTABLEKS                       R10 R0 K12 ["assetType"]
       74 GETTABLE                         R5 R9 R10
       75 GETTABLEKS                       R9 R0 K11 ["assetName"]
       77 ORK                              R6 R9 K19 ["Asset"]
       78 GETTABLEKS                       R9 R0 K12 ["assetType"]
       80 JUMPIFNOTEQKS                    R9 K20 ["Package"] ; [+8]
       82 NEWTABLE                         R9 0 1
       84 LOADK                            R10 K20 ["Package"]
       85 SETLIST                          R9 R10 1 [1]
       87 MOVE                             R7 R9
       88 JUMP                             ; [+1]
       89 LOADNIL                          R7
       90 GETUPVAL                         R9 2
       91 LOADK                            R10 K21 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       92 GETTABLEKS                       R12 R0 K12 ["assetType"]
       94 MOVE                             R13 R5
       95 NAMECALL                         R10 R10 K14 ["format"]
       97 CALL                             R10 3 1
       98 CALL                             R9 1 0
       99 JUMP                             ; [+87]
      100 GETTABLEKS                       R9 R0 K12 ["assetType"]
      102 JUMPIFNOT                        R9 ; [+8]
      103 GETUPVAL                         R9 2
      104 LOADK                            R10 K22 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
      105 GETTABLEKS                       R12 R0 K12 ["assetType"]
      107 NAMECALL                         R10 R10 K14 ["format"]
      109 CALL                             R10 2 1
      110 CALL                             R9 1 0
      111 GETUPVAL                         R9 5
      112 MOVE                             R10 R2
      113 MOVE                             R11 R3
      114 CALL                             R9 2 2
      115 JUMPIF                           R9 ; [+4]
      116 GETUPVAL                         R11 1
      117 MOVE                             R12 R10
      118 CALL                             R11 1 1
      119 RETURN                           R11 1
      120 GETTABLEKS                       R11 R10 K23 ["AssetId"]
      122 JUMPIFNOT                        R11 ; [+43]
      123 GETTABLEKS                       R12 R10 K23 ["AssetId"]
      125 FASTCALL1                        TOSTRING R12 ; [+2]
      126 GETIMPORT                        R11 K25 [tostring]
      128 CALL                             R11 1 1
      129 JUMPIFEQ                         R11 R3 ; [+28]
      131 GETUPVAL                         R12 2
      132 LOADK                            R13 K26 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      133 MOVE                             R15 R3
      134 MOVE                             R16 R11
      135 NAMECALL                         R13 R13 K14 ["format"]
      137 CALL                             R13 3 1
      138 CALL                             R12 1 0
      139 MOVE                             R3 R11
      140 FASTCALL1                        TONUMBER R3 ; [+3]
      141 MOVE                             R13 R3
      142 GETIMPORT                        R12 K16 [tonumber]
      144 CALL                             R12 1 1
      145 MOVE                             R4 R12
      146 JUMPIF                           R4 ; [+26]
      147 GETUPVAL                         R12 1
      148 LOADK                            R14 K27 ["Resolved asset ID is not a valid number: "]
      149 FASTCALL1                        TOSTRING R3 ; [+3]
      150 MOVE                             R16 R3
      151 GETIMPORT                        R15 K25 [tostring]
      153 CALL                             R15 1 1
      154 CONCAT                           R13 R14 R15
      155 CALL                             R12 1 1
      156 RETURN                           R12 1
      157 JUMP                             ; [+15]
      158 GETUPVAL                         R12 2
      159 LOADK                            R13 K28 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      160 MOVE                             R15 R3
      161 NAMECALL                         R13 R13 K14 ["format"]
      163 CALL                             R13 2 1
      164 CALL                             R12 1 0
      165 JUMP                             ; [+7]
      166 GETUPVAL                         R11 2
      167 LOADK                            R12 K29 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      168 MOVE                             R14 R3
      169 NAMECALL                         R12 R12 K14 ["format"]
      171 CALL                             R12 2 1
      172 CALL                             R11 1 0
      173 GETTABLEKS                       R5 R10 K30 ["AssetTypeId"]
      175 GETTABLEKS                       R11 R0 K11 ["assetName"]
      177 JUMPIF                           R11 ; [+4]
      178 GETTABLEKS                       R11 R10 K31 ["Name"]
      180 JUMPIF                           R11 ; [+1]
      181 LOADK                            R11 K19 ["Asset"]
      182 MOVE                             R6 R11
      183 GETTABLEKS                       R7 R10 K32 ["AssetSubTypes"]
      185 GETTABLEKS                       R8 R10 K33 ["ShouldSandbox"]
      187 GETUPVAL                         R9 2
      188 LOADK                            R10 K34 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      189 MOVE                             R12 R3
      190 MOVE                             R13 R4
      191 MOVE                             R14 R5
      192 MOVE                             R15 R6
      193 JUMPIFNOT                        R7 ; [+2]
      194 LENGTH                           R16 R7
      195 JUMPIF                           R16 ; [+1]
      196 LOADN                            R16 0
      197 NAMECALL                         R10 R10 K14 ["format"]
      199 CALL                             R10 6 1
      200 CALL                             R9 1 0
      201 GETUPVAL                         R9 6
      202 GETTABLEKS                       R9 R9 K35 ["isPackageAsset"]
      204 MOVE                             R10 R5
      205 MOVE                             R11 R7
      206 CALL                             R9 2 1
      207 GETUPVAL                         R11 7
      208 GETTABLE                         R10 R11 R5
      209 JUMPIF                           R10 ; [+8]
      210 GETUPVAL                         R11 1
      211 LOADK                            R12 K36 ["Unsupported asset type ID: %*"]
      212 MOVE                             R14 R5
      213 NAMECALL                         R12 R12 K14 ["format"]
      215 CALL                             R12 2 1
      216 CALL                             R11 1 1
      217 RETURN                           R11 1
      218 GETTABLEKS                       R11 R10 K31 ["Name"]
      220 GETUPVAL                         R12 2
      221 LOADK                            R13 K37 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      222 MOVE                             R15 R11
      223 MOVE                             R16 R9
      224 NAMECALL                         R13 R13 K14 ["format"]
      226 CALL                             R13 3 1
      227 CALL                             R12 1 0
      228 LOADNIL                          R12
      229 NEWTABLE                         R13 0 0
      231 GETTABLEKS                       R14 R1 K0 ["initArgs"]
      233 GETTABLEKS                       R14 R14 K1 ["environment"]
      235 GETTABLEKS                       R14 R14 K38 ["assetAccessController"]
      237 GETUPVAL                         R15 3
      238 GETTABLEKS                       R15 R15 K39 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      240 JUMPIF                           R15 ; [+29]
      241 JUMPIFNOT                        R14 ; [+28]
      242 GETIMPORT                        R15 K41 [game]
      244 GETTABLEKS                       R15 R15 K42 ["GameId"]
      246 JUMPIFEQKN                       R15 K43 [0] ; [+23]
      248 GETUPVAL                         R15 2
      249 LOADK                            R16 K44 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      250 MOVE                             R18 R4
      251 MOVE                             R19 R11
      252 NAMECALL                         R16 R16 K14 ["format"]
      254 CALL                             R16 3 1
      255 CALL                             R15 1 0
      256 GETUPVAL                         R15 8
      257 NEWTABLE                         R16 0 1
      259 MOVE                             R17 R4
      260 SETLIST                          R16 R17 1 [1]
      262 NEWTABLE                         R17 0 1
      264 MOVE                             R18 R10
      265 SETLIST                          R17 R18 1 [1]
      267 MOVE                             R18 R14
      268 CALL                             R15 3 1
      269 MOVE                             R13 R15
      270 GETIMPORT                        R15 K46 [next]
      272 MOVE                             R16 R13
      273 CALL                             R15 1 1
      274 JUMPIFNOT                        R15 ; [+21]
      275 MOVE                             R15 R13
      276 LOADNIL                          R16
      277 LOADNIL                          R17
      278 FORGPREP                         R15
      279 LOADK                            R20 K47 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      280 MOVE                             R22 R18
      281 NAMECALL                         R20 R20 K14 ["format"]
      283 CALL                             R20 2 1
      284 ORK                              R21 R12 K48 [""]
      285 MOVE                             R22 R20
      286 CONCAT                           R12 R21 R22
      287 FORGLOOP                         R15 2 ; [-9]
      289 GETUPVAL                         R15 2
      290 LOADK                            R16 K49 ["[AssetInsertTool] %*"]
      291 MOVE                             R18 R12
      292 NAMECALL                         R16 R16 K14 ["format"]
      294 CALL                             R16 2 1
      295 CALL                             R15 1 0
      296 GETTABLE                         R15 R13 R4
      297 JUMPIFNOT                        R15 ; [+4]
      298 GETUPVAL                         R15 1
      299 ORK                              R16 R12 K50 ["Failed to grant required permissions for asset"]
      300 CALL                             R15 1 1
      301 RETURN                           R15 1
      302 NEWTABLE                         R15 0 0
      304 LOADNIL                          R16
      305 LOADNIL                          R17
      306 GETIMPORT                        R18 K54 [Enum.AssetType.Model]
      308 JUMPIFEQ                         R10 R18 ; [+9]
      310 GETIMPORT                        R18 K56 [Enum.AssetType.MeshPart]
      312 JUMPIFEQ                         R10 R18 ; [+5]
      314 GETIMPORT                        R18 K57 [Enum.AssetType.Package]
      316 JUMPIFNOTEQ                      R10 R18 ; [+14]
      318 LOADNIL                          R18
      319 GETUPVAL                         R19 9
      320 MOVE                             R20 R2
      321 MOVE                             R21 R3
      322 MOVE                             R22 R9
      323 CALL                             R19 3 3
      324 MOVE                             R16 R19
      325 MOVE                             R18 R20
      326 MOVE                             R17 R21
      327 JUMPIFNOT                        R16 ; [+193]
      328 JUMPIFNOT                        R18 ; [+192]
      329 MOVE                             R15 R18
      330 JUMP                             ; [+190]
      331 GETIMPORT                        R18 K59 [Enum.AssetType.Mesh]
      333 JUMPIFNOTEQ                      R10 R18 ; [+35]
      335 LOADNIL                          R18
      336 MOVE                             R22 R4
      337 GETIMPORT                        R23 K61 [pcall]
      339 NEWCLOSURE                       R24 P0
      340 CAPTURE                          VAL R2
      341 CAPTURE                          VAL R22
      342 CALL                             R23 1 2
      343 JUMPIF                           R23 ; [+9]
      344 LOADB                            R19 0
      345 LOADNIL                          R20
      346 LOADK                            R25 K62 ["Failed to create mesh part: %*"]
      347 MOVE                             R27 R24
      348 NAMECALL                         R25 R25 K14 ["format"]
      350 CALL                             R25 2 1
      351 MOVE                             R21 R25
      352 JUMP                             ; [+3]
      353 LOADB                            R19 1
      354 MOVE                             R20 R24
      355 LOADNIL                          R21
      356 MOVE                             R16 R19
      357 MOVE                             R18 R20
      358 MOVE                             R17 R21
      359 JUMPIFNOT                        R16 ; [+161]
      360 JUMPIFNOT                        R18 ; [+160]
      361 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      363 MOVE                             R20 R15
      364 MOVE                             R21 R18
      365 GETIMPORT                        R19 K65 [table.insert]
      367 CALL                             R19 2 0
      368 JUMP                             ; [+152]
      369 GETIMPORT                        R18 K67 [Enum.AssetType.Decal]
      371 JUMPIFEQ                         R10 R18 ; [+5]
      373 GETIMPORT                        R18 K69 [Enum.AssetType.Image]
      375 JUMPIFNOTEQ                      R10 R18 ; [+42]
      377 LOADNIL                          R18
      378 MOVE                             R22 R3
      379 GETIMPORT                        R24 K69 [Enum.AssetType.Image]
      381 JUMPIFEQ                         R10 R24 ; [+2]
      383 LOADB                            R23 0 +1
      384 LOADB                            R23 1
      385 GETIMPORT                        R24 K61 [pcall]
      387 NEWCLOSURE                       R25 P1
      388 CAPTURE                          VAL R23
      389 CAPTURE                          VAL R2
      390 CAPTURE                          VAL R22
      391 CALL                             R24 1 2
      392 JUMPIF                           R24 ; [+9]
      393 LOADB                            R19 0
      394 LOADNIL                          R20
      395 LOADK                            R26 K70 ["Failed to create decal: %*"]
      396 MOVE                             R28 R25
      397 NAMECALL                         R26 R26 K14 ["format"]
      399 CALL                             R26 2 1
      400 MOVE                             R21 R26
      401 JUMP                             ; [+3]
      402 LOADB                            R19 1
      403 MOVE                             R20 R25
      404 LOADNIL                          R21
      405 MOVE                             R16 R19
      406 MOVE                             R18 R20
      407 MOVE                             R17 R21
      408 JUMPIFNOT                        R16 ; [+112]
      409 JUMPIFNOT                        R18 ; [+111]
      410 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      412 MOVE                             R20 R15
      413 MOVE                             R21 R18
      414 GETIMPORT                        R19 K65 [table.insert]
      416 CALL                             R19 2 0
      417 JUMP                             ; [+103]
      418 GETIMPORT                        R18 K72 [Enum.AssetType.Audio]
      420 JUMPIFNOTEQ                      R10 R18 ; [+14]
      422 LOADNIL                          R18
      423 GETUPVAL                         R19 10
      424 MOVE                             R20 R2
      425 MOVE                             R21 R3
      426 MOVE                             R22 R6
      427 CALL                             R19 3 3
      428 MOVE                             R16 R19
      429 MOVE                             R18 R20
      430 MOVE                             R17 R21
      431 JUMPIFNOT                        R16 ; [+89]
      432 JUMPIFNOT                        R18 ; [+88]
      433 MOVE                             R15 R18
      434 JUMP                             ; [+86]
      435 GETIMPORT                        R18 K74 [Enum.AssetType.Video]
      437 JUMPIFNOTEQ                      R10 R18 ; [+35]
      439 LOADNIL                          R18
      440 MOVE                             R22 R3
      441 GETIMPORT                        R23 K61 [pcall]
      443 NEWCLOSURE                       R24 P2
      444 CAPTURE                          VAL R2
      445 CAPTURE                          VAL R22
      446 CALL                             R23 1 2
      447 JUMPIF                           R23 ; [+9]
      448 LOADB                            R19 0
      449 LOADNIL                          R20
      450 LOADK                            R25 K75 ["Failed to create video frame: %*"]
      451 MOVE                             R27 R24
      452 NAMECALL                         R25 R25 K14 ["format"]
      454 CALL                             R25 2 1
      455 MOVE                             R21 R25
      456 JUMP                             ; [+3]
      457 LOADB                            R19 1
      458 MOVE                             R20 R24
      459 LOADNIL                          R21
      460 MOVE                             R16 R19
      461 MOVE                             R18 R20
      462 MOVE                             R17 R21
      463 JUMPIFNOT                        R16 ; [+57]
      464 JUMPIFNOT                        R18 ; [+56]
      465 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      467 MOVE                             R20 R15
      468 MOVE                             R21 R18
      469 GETIMPORT                        R19 K65 [table.insert]
      471 CALL                             R19 2 0
      472 JUMP                             ; [+48]
      473 GETIMPORT                        R18 K77 [Enum.AssetType.Animation]
      475 JUMPIFNOTEQ                      R10 R18 ; [+37]
      477 LOADNIL                          R18
      478 MOVE                             R22 R4
      479 GETIMPORT                        R23 K61 [pcall]
      481 NEWCLOSURE                       R24 P3
      482 CAPTURE                          VAL R2
      483 CAPTURE                          VAL R22
      484 CALL                             R23 1 2
      485 JUMPIF                           R23 ; [+9]
      486 LOADB                            R19 0
      487 LOADNIL                          R20
      488 LOADK                            R25 K78 ["Failed to load animation asset: %*"]
      489 MOVE                             R27 R24
      490 NAMECALL                         R25 R25 K14 ["format"]
      492 CALL                             R25 2 1
      493 MOVE                             R21 R25
      494 JUMP                             ; [+11]
      495 JUMPIFNOT                        R24 ; [+3]
      496 LENGTH                           R25 R24
      497 JUMPIFNOTEQKN                    R25 K43 [0] ; [+5]
      499 LOADB                            R19 0
      500 LOADNIL                          R20
      501 LOADK                            R21 K79 ["GetObjects returned empty result for animation"]
      502 JUMP                             ; [+3]
      503 LOADB                            R19 1
      504 MOVE                             R20 R24
      505 LOADNIL                          R21
      506 MOVE                             R16 R19
      507 MOVE                             R18 R20
      508 MOVE                             R17 R21
      509 JUMPIFNOT                        R16 ; [+11]
      510 JUMPIFNOT                        R18 ; [+10]
      511 MOVE                             R15 R18
      512 JUMP                             ; [+8]
      513 GETUPVAL                         R18 1
      514 LOADK                            R19 K80 ["Unhandled asset type: %*"]
      515 MOVE                             R21 R11
      516 NAMECALL                         R19 R19 K14 ["format"]
      518 CALL                             R19 2 1
      519 CALL                             R18 1 1
      520 RETURN                           R18 1
      521 JUMPIFNOT                        R16 ; [+3]
      522 LENGTH                           R18 R15
      523 JUMPIFNOTEQKN                    R18 K43 [0] ; [+5]
      525 GETUPVAL                         R18 1
      526 ORK                              R19 R17 K81 ["Failed to load asset instances"]
      527 CALL                             R18 1 1
      528 RETURN                           R18 1
      529 GETUPVAL                         R18 2
      530 LOADK                            R19 K82 ["[AssetInsertTool] Sanitizing %* instances..."]
      531 LENGTH                           R21 R15
      532 NAMECALL                         R19 R19 K14 ["format"]
      534 CALL                             R19 2 1
      535 CALL                             R18 1 0
      536 LENGTH                           R20 R15
      537 LOADN                            R18 1
      538 LOADN                            R19 -1
      539 FORNPREP                         R18
      540 GETTABLE                         R21 R15 R20
      541 LOADB                            R22 0
      542 GETUPVAL                         R23 2
      543 LOADK                            R24 K83 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      544 MOVE                             R26 R20
      545 GETTABLEKS                       R27 R21 K31 ["Name"]
      547 GETTABLEKS                       R28 R21 K84 ["ClassName"]
      549 LOADK                            R31 K53 ["Model"]
      550 NAMECALL                         R29 R21 K85 ["IsA"]
      552 CALL                             R29 2 1
      553 LOADK                            R32 K55 ["MeshPart"]
      554 NAMECALL                         R30 R21 K85 ["IsA"]
      556 CALL                             R30 2 1
      557 NAMECALL                         R24 R24 K14 ["format"]
      559 CALL                             R24 6 1
      560 CALL                             R23 1 0
      561 GETUPVAL                         R23 11
      562 MOVE                             R24 R21
      563 CALL                             R23 1 2
      564 JUMPIF                           R23 ; [+11]
      565 GETUPVAL                         R25 2
      566 LOADK                            R26 K86 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      567 GETTABLEKS                       R28 R21 K84 ["ClassName"]
      569 MOVE                             R29 R24
      570 NAMECALL                         R26 R26 K14 ["format"]
      572 CALL                             R26 3 1
      573 CALL                             R25 1 0
      574 LOADB                            R22 1
      575 JUMP                             ; [+26]
      576 LOADK                            R27 K55 ["MeshPart"]
      577 NAMECALL                         R25 R21 K85 ["IsA"]
      579 CALL                             R25 2 1
      580 JUMPIFNOT                        R25 ; [+21]
      581 NAMECALL                         R28 R21 K87 ["GetChildren"]
      583 CALL                             R28 1 1
      584 LENGTH                           R27 R28
      585 LOADN                            R28 0
      586 JUMPIFNOTLT                      R28 R27 ; [+4]
      588 NAMECALL                         R27 R21 K88 ["ClearAllChildren"]
      590 CALL                             R27 1 0
      591 LOADB                            R25 1
      592 LOADNIL                          R26
      593 JUMPIF                           R25 ; [+8]
      594 GETUPVAL                         R27 2
      595 LOADK                            R28 K89 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      596 MOVE                             R30 R26
      597 NAMECALL                         R28 R28 K14 ["format"]
      599 CALL                             R28 2 1
      600 CALL                             R27 1 0
      601 LOADB                            R22 1
      602 JUMPIFNOT                        R22 ; [+14]
      603 GETUPVAL                         R25 2
      604 LOADK                            R26 K90 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      605 MOVE                             R28 R20
      606 GETTABLEKS                       R29 R21 K31 ["Name"]
      608 NAMECALL                         R26 R26 K14 ["format"]
      610 CALL                             R26 3 1
      611 CALL                             R25 1 0
      612 GETIMPORT                        R25 K92 [table.remove]
      614 MOVE                             R26 R15
      615 MOVE                             R27 R20
      616 CALL                             R25 2 0
      617 FORNLOOP                         R18
      618 GETUPVAL                         R18 2
      619 LOADK                            R19 K93 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      620 LENGTH                           R21 R15
      621 NAMECALL                         R19 R19 K14 ["format"]
      623 CALL                             R19 2 1
      624 CALL                             R18 1 0
      625 LENGTH                           R18 R15
      626 JUMPIFNOTEQKN                    R18 K43 [0] ; [+5]
      628 GETUPVAL                         R18 1
      629 LOADK                            R19 K94 ["All instances failed sanitization"]
      630 CALL                             R18 1 1
      631 RETURN                           R18 1
      632 GETUPVAL                         R18 2
      633 LOADK                            R19 K95 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      634 LENGTH                           R21 R15
      635 NAMECALL                         R19 R19 K14 ["format"]
      637 CALL                             R19 2 1
      638 CALL                             R18 1 0
      639 GETUPVAL                         R18 2
      640 LOADK                            R19 K96 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      641 MOVE                             R21 R4
      642 LENGTH                           R22 R15
      643 NAMECALL                         R19 R19 K14 ["format"]
      645 CALL                             R19 3 1
      646 CALL                             R18 1 0
      647 MOVE                             R18 R15
      648 LOADNIL                          R19
      649 LOADNIL                          R20
      650 FORGPREP                         R18
      651 GETTABLEKS                       R23 R2 K97 ["assignSourceAssetId"]
      653 MOVE                             R24 R4
      654 MOVE                             R25 R22
      655 CALL                             R23 2 0
      656 FORGLOOP                         R18 2 ; [-6]
      658 GETUPVAL                         R18 12
      659 LOADB                            R20 0
      660 NAMECALL                         R18 R18 K98 ["GenerateGUID"]
      662 CALL                             R18 2 1
      663 GETUPVAL                         R20 3
      664 GETTABLEKS                       R20 R20 K99 ["FFlagAssistantUseNewTags"]
      666 JUMPIFNOT                        R20 ; [+7]
      667 GETUPVAL                         R19 13
      668 GETTABLEKS                       R19 R19 K100 ["getUniqueTag"]
      670 LOADK                            R20 K101 ["Insert"]
      671 MOVE                             R21 R18
      672 CALL                             R19 2 1
      673 JUMP                             ; [+3]
      674 LOADK                            R20 K102 ["Assistant:"]
      675 MOVE                             R21 R18
      676 CONCAT                           R19 R20 R21
      677 GETUPVAL                         R20 12
      678 LOADB                            R22 0
      679 NAMECALL                         R20 R20 K98 ["GenerateGUID"]
      681 CALL                             R20 2 1
      682 GETUPVAL                         R21 2
      683 LOADK                            R22 K103 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      684 MOVE                             R24 R18
      685 MOVE                             R25 R19
      686 NAMECALL                         R22 R22 K14 ["format"]
      688 CALL                             R22 3 1
      689 CALL                             R21 1 0
      690 GETUPVAL                         R21 14
      691 GETTABLEKS                       R22 R0 K13 ["parentPath"]
      693 CALL                             R21 1 2
      694 GETUPVAL                         R23 2
      695 LOADK                            R24 K104 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      696 NAMECALL                         R26 R21 K105 ["GetFullName"]
      698 CALL                             R26 1 1
      699 ORK                              R27 R22 K106 ["none"]
      700 NAMECALL                         R24 R24 K14 ["format"]
      702 CALL                             R24 3 1
      703 CALL                             R23 1 0
      704 GETTABLEN                        R23 R15 1
      705 GETTABLEKS                       R23 R23 K84 ["ClassName"]
      707 GETTABLEKS                       R24 R1 K0 ["initArgs"]
      709 GETTABLEKS                       R24 R24 K1 ["environment"]
      711 GETTABLEKS                       R25 R24 K107 ["startRecording"]
      713 MOVE                             R26 R20
      714 CALL                             R25 1 0
      715 NEWTABLE                         R25 0 0
      717 MOVE                             R26 R15
      718 LOADNIL                          R27
      719 LOADNIL                          R28
      720 FORGPREP                         R26
      721 SETTABLEKS                       R6 R30 K31 ["Name"]
      723 MOVE                             R33 R19
      724 NAMECALL                         R31 R30 K108 ["AddTag"]
      726 CALL                             R31 2 0
      727 LOADK                            R33 K109 ["PVInstance"]
      728 NAMECALL                         R31 R30 K85 ["IsA"]
      730 CALL                             R31 2 1
      731 JUMPIFNOT                        R31 ; [+6]
      732 GETUPVAL                         R31 15
      733 GETTABLEKS                       R31 R31 K110 ["setPositionOnGround"]
      735 MOVE                             R32 R30
      736 LOADB                            R33 1
      737 CALL                             R31 2 0
      738 SETTABLEKS                       R21 R30 K111 ["Parent"]
      740 GETUPVAL                         R31 2
      741 LOADK                            R32 K112 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      742 GETTABLEKS                       R34 R30 K31 ["Name"]
      744 GETTABLEKS                       R35 R30 K84 ["ClassName"]
      746 GETUPVAL                         R36 16
      747 MOVE                             R37 R30
      748 CALL                             R36 1 1
      749 NAMECALL                         R32 R32 K14 ["format"]
      751 CALL                             R32 4 1
      752 CALL                             R31 1 0
      753 DUPTABLE                         R33 K116 [{"name", "className", "fullPath"}]
      754 GETTABLEKS                       R34 R30 K31 ["Name"]
      756 SETTABLEKS                       R34 R33 K113 ["name"]
      758 GETTABLEKS                       R34 R30 K84 ["ClassName"]
      760 SETTABLEKS                       R34 R33 K114 ["className"]
      762 GETUPVAL                         R34 16
      763 MOVE                             R35 R30
      764 CALL                             R34 1 1
      765 SETTABLEKS                       R34 R33 K115 ["fullPath"]
      767 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      769 MOVE                             R32 R25
      770 GETIMPORT                        R31 K65 [table.insert]
      772 CALL                             R31 2 0
      773 FORGLOOP                         R26 2 ; [-53]
      775 GETTABLEKS                       R26 R24 K117 ["endRecording"]
      777 MOVE                             R27 R20
      778 CALL                             R26 1 0
      779 LOADB                            R26 0
      780 GETUPVAL                         R27 3
      781 GETTABLEKS                       R27 R27 K18 ["FFlagAssistantInsertAssetSandboxScripts"]
      783 GETUPVAL                         R30 17
      784 GETTABLE                         R29 R30 R5
      785 JUMPIFEQKB                       R29 TRUE ; [+2]
      787 LOADB                            R28 0 +1
      788 LOADB                            R28 1
      789 GETUPVAL                         R29 2
      790 LOADK                            R30 K118 ["[AssetInsertTool] Sandbox gate: flag=%*, typeId=%* sandboxable=%*, shouldSandbox(metadata)=%*, capabilitiesHandler=%*, instances=%*"]
      791 FASTCALL1                        TOSTRING R27 ; [+3]
      792 MOVE                             R33 R27
      793 GETIMPORT                        R32 K25 [tostring]
      795 CALL                             R32 1 1
      796 MOVE                             R33 R5
      797 FASTCALL1                        TOSTRING R28 ; [+3]
      798 MOVE                             R35 R28
      799 GETIMPORT                        R34 K25 [tostring]
      801 CALL                             R34 1 1
      802 FASTCALL1                        TOSTRING R8 ; [+3]
      803 MOVE                             R36 R8
      804 GETIMPORT                        R35 K25 [tostring]
      806 CALL                             R35 1 1
      807 GETTABLEKS                       R38 R24 K119 ["capabilitiesHandler"]
      809 JUMPIFNOTEQKNIL                  R38 ; [+2]
      811 LOADB                            R37 0 +1
      812 LOADB                            R37 1
      813 FASTCALL1                        TOSTRING R37 ; [+2]
      814 GETIMPORT                        R36 K25 [tostring]
      816 CALL                             R36 1 1
      817 LENGTH                           R37 R15
      818 NAMECALL                         R30 R30 K14 ["format"]
      820 CALL                             R30 7 1
      821 CALL                             R29 1 0
      822 JUMPIFNOT                        R27 ; [+23]
      823 JUMPIFNOT                        R28 ; [+22]
      824 JUMPIFNOT                        R8 ; [+21]
      825 GETUPVAL                         R29 18
      826 GETTABLEKS                       R29 R29 K120 ["applySandboxIfNeeded"]
      828 MOVE                             R30 R15
      829 GETTABLEKS                       R31 R24 K119 ["capabilitiesHandler"]
      831 GETUPVAL                         R32 2
      832 CALL                             R29 3 1
      833 MOVE                             R26 R29
      834 GETUPVAL                         R29 2
      835 LOADK                            R30 K121 ["[AssetInsertTool] Sandbox applied=%*"]
      836 FASTCALL1                        TOSTRING R26 ; [+3]
      837 MOVE                             R33 R26
      838 GETIMPORT                        R32 K25 [tostring]
      840 CALL                             R32 1 1
      841 NAMECALL                         R30 R30 K14 ["format"]
      843 CALL                             R30 2 1
      844 CALL                             R29 1 0
      845 JUMP                             ; [+3]
      846 GETUPVAL                         R29 2
      847 LOADK                            R30 K122 ["[AssetInsertTool] Sandbox skipped — one or more gate conditions false (see flag/typeId/shouldSandbox above)"]
      848 CALL                             R29 1 0
      849 GETUPVAL                         R29 2
      850 LOADK                            R30 K123 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      851 CALL                             R29 1 0
      852 JUMPIFNOT                        R26 ; [+2]
      853 LOADK                            R29 K124 ["Inserted and set Sandboxed property to true on all scripts with all SecurityCapabilities included except for dangerous ones."]
      854 JUMP                             ; [+1]
      855 LOADNIL                          R29
      856 GETUPVAL                         R30 12
      857 DUPTABLE                         R32 K135 [{["status"] = "success", ["insertGuid"], ["tag"], ["assetId"], ["assetName"], ["assetType"], ["isPackage"], ["insertedInstances"], ["parentWarning"], ["permissionWarning"], ["sandboxed"], ["sandboxNote"]}]
      858 SETTABLEKS                       R18 R32 K127 ["insertGuid"]
      860 SETTABLEKS                       R19 R32 K128 ["tag"]
      862 SETTABLEKS                       R3 R32 K8 ["assetId"]
      864 SETTABLEKS                       R6 R32 K11 ["assetName"]
      866 SETTABLEKS                       R11 R32 K12 ["assetType"]
      868 SETTABLEKS                       R9 R32 K129 ["isPackage"]
      870 SETTABLEKS                       R25 R32 K130 ["insertedInstances"]
      872 SETTABLEKS                       R22 R32 K131 ["parentWarning"]
      874 SETTABLEKS                       R12 R32 K132 ["permissionWarning"]
      876 SETTABLEKS                       R26 R32 K133 ["sandboxed"]
      878 SETTABLEKS                       R29 R32 K134 ["sandboxNote"]
      880 NAMECALL                         R30 R30 K136 ["JSONEncode"]
      882 CALL                             R30 2 1
      883 DUPTABLE                         R31 K139 [{"result", "responseInfo"}]
      884 SETTABLEKS                       R30 R31 K137 ["result"]
      886 DUPTABLE                         R32 K140 [{"tag", "assetName", "insertGuid", "className"}]
      887 SETTABLEKS                       R19 R32 K128 ["tag"]
      889 SETTABLEKS                       R6 R32 K11 ["assetName"]
      891 SETTABLEKS                       R18 R32 K127 ["insertGuid"]
      893 SETTABLEKS                       R23 R32 K114 ["className"]
      895 SETTABLEKS                       R32 R31 K138 ["responseInfo"]
      897 RETURN                           R31 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       17 GETTABLEKS                       R3 R3 K11 ["createAssetInsertBridge"]
       19 GETTABLEKS                       R3 R3 K12 ["AssetInsertBridgeTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["AssetManagement"]
       28 GETTABLEKS                       R4 R4 K15 ["AssetManagementConstants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K14 ["AssetManagement"]
       37 GETTABLEKS                       R5 R5 K16 ["AssetManagementUtils"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K17 ["DataModelType"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K18 ["Guest"]
       51 GETTABLEKS                       R7 R7 K19 ["Environment"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K20 ["Flags"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Util"]
       63 GETTABLEKS                       R9 R9 K21 ["Tagging"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K13 ["Util"]
       70 GETTABLEKS                       R10 R10 K22 ["ToolUtils"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Util"]
       77 GETTABLEKS                       R11 R11 K14 ["AssetManagement"]
       79 GETTABLEKS                       R11 R11 K23 ["grantUniversePermissions"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K13 ["Util"]
       86 GETTABLEKS                       R12 R12 K14 ["AssetManagement"]
       88 GETTABLEKS                       R12 R12 K24 ["sandboxAsset"]
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R4 K25 ["debugPrint"]
       93 GETTABLEKS                       R13 R3 K26 ["ASSET_TYPE_ID_MAP"]
       95 GETTABLEKS                       R14 R3 K27 ["ASSET_TYPE_NAME_TO_ID"]
       97 GETTABLEKS                       R15 R3 K28 ["SANDBOXABLE_TYPE_IDS"]
       99 DUPCLOSURE                       R16 K29 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R17 K30 [PROTO_1]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R18 K31 [PROTO_3]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R19 K32 [PROTO_4]
      109 DUPCLOSURE                       R20 K33 [PROTO_5]
      110 DUPCLOSURE                       R21 K34 [PROTO_6]
      111 DUPCLOSURE                       R22 K35 [PROTO_8]
      112 CAPTURE                          VAL R12
      113 DUPCLOSURE                       R23 K36 [PROTO_11]
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R9
      116 DUPCLOSURE                       R24 K37 [PROTO_13]
      117 DUPCLOSURE                       R25 K38 [PROTO_15]
      118 DUPCLOSURE                       R26 K39 [PROTO_19]
      119 DUPCLOSURE                       R27 K40 [PROTO_21]
      120 DUPCLOSURE                       R28 K41 [PROTO_23]
      121 DUPCLOSURE                       R29 K42 [PROTO_24]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R26
      133 CAPTURE                          VAL R22
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R11
      141 DUPTABLE                         R30 K44 [{"insertAssetAsync"}]
      142 SETTABLEKS                       R29 R30 K43 ["insertAssetAsync"]
      144 DUPTABLE                         R31 K46 [{"bridge"}]
      145 SETTABLEKS                       R30 R31 K45 ["bridge"]
      147 RETURN                           R31 1
