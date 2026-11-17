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
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R2 K6 [pcall]
       26 CALL                             R2 1 2
       27 JUMPIF                           R2 ; [+22]
       28 GETUPVAL                         R4 0
       29 LOADK                            R5 K7 ["[AssetInsertTool] Metadata fetch failed: %*"]
       30 FASTCALL1                        TOSTRING R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K9 [tostring]
       34 CALL                             R7 1 1
       35 NAMECALL                         R5 R5 K3 ["format"]
       37 CALL                             R5 2 1
       38 CALL                             R4 1 0
       39 LOADB                            R4 0
       40 LOADK                            R5 K10 ["Failed to fetch asset metadata: %*"]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R7 K9 [tostring]
       45 CALL                             R7 1 1
       46 NAMECALL                         R5 R5 K3 ["format"]
       48 CALL                             R5 2 1
       49 RETURN                           R4 2
       50 GETTABLEKS                       R4 R3 K11 ["data"]
       52 JUMPIFNOT                        R4 ; [+3]
       53 LENGTH                           R5 R4
       54 JUMPIFNOTEQKN                    R5 K12 [0] ; [+8]
       56 LOADB                            R5 0
       57 LOADK                            R6 K13 ["No asset found for ID: %*"]
       58 MOVE                             R8 R1
       59 NAMECALL                         R6 R6 K3 ["format"]
       61 CALL                             R6 2 1
       62 RETURN                           R5 2
       63 GETTABLEN                        R5 R4 1
       64 GETTABLEKS                       R6 R5 K14 ["asset"]
       66 JUMPIF                           R6 ; [+7]
       67 LOADB                            R7 0
       68 LOADK                            R8 K15 ["Asset data missing in response for ID: %*"]
       69 MOVE                             R10 R1
       70 NAMECALL                         R8 R8 K3 ["format"]
       72 CALL                             R8 2 1
       73 RETURN                           R7 2
       74 DUPTABLE                         R7 K21 [{"AssetId", "Name", "AssetTypeId", "AssetSubTypes", "ShouldSandbox"}]
       75 GETTABLEKS                       R8 R6 K22 ["id"]
       77 SETTABLEKS                       R8 R7 K16 ["AssetId"]
       79 GETTABLEKS                       R8 R6 K23 ["name"]
       81 SETTABLEKS                       R8 R7 K17 ["Name"]
       83 GETTABLEKS                       R8 R6 K24 ["typeId"]
       85 SETTABLEKS                       R8 R7 K18 ["AssetTypeId"]
       87 GETTABLEKS                       R8 R6 K25 ["assetSubTypes"]
       89 SETTABLEKS                       R8 R7 K19 ["AssetSubTypes"]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
       94 JUMPIFNOT                        R8 ; [+17]
       95 LOADB                            R8 0
       96 GETTABLEKS                       R10 R6 K27 ["capabilities"]
       98 FASTCALL1                        TYPE R10 ; [+2]
       99 GETIMPORT                        R9 K29 [type]
      101 CALL                             R9 1 1
      102 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+9]
      104 GETTABLEKS                       R9 R6 K27 ["capabilities"]
      106 GETTABLEKS                       R9 R9 K31 ["shouldSandbox"]
      108 JUMPIFEQKB                       R9 TRUE ; [+2]
      110 LOADB                            R8 0 +1
      111 LOADB                            R8 1
      112 SETTABLEKS                       R8 R7 K20 ["ShouldSandbox"]
      114 GETUPVAL                         R8 0
      115 LOADK                            R9 K32 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      116 GETTABLEKS                       R11 R7 K16 ["AssetId"]
      118 GETTABLEKS                       R12 R7 K17 ["Name"]
      120 GETTABLEKS                       R13 R7 K18 ["AssetTypeId"]
      122 GETTABLEKS                       R15 R7 K19 ["AssetSubTypes"]
      124 JUMPIFNOT                        R15 ; [+7]
      125 GETUPVAL                         R14 2
      126 GETTABLEKS                       R16 R7 K19 ["AssetSubTypes"]
      128 NAMECALL                         R14 R14 K33 ["JSONEncode"]
      130 CALL                             R14 2 1
      131 JUMPIF                           R14 ; [+1]
      132 LOADK                            R14 K34 ["nil"]
      133 NAMECALL                         R9 R9 K3 ["format"]
      135 CALL                             R9 5 1
      136 CALL                             R8 1 0
      137 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      139 FASTCALL1                        TYPE R10 ; [+2]
      140 GETIMPORT                        R9 K29 [type]
      142 CALL                             R9 1 1
      143 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+8]
      145 GETUPVAL                         R8 2
      146 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      148 NAMECALL                         R8 R8 K33 ["JSONEncode"]
      150 CALL                             R8 2 1
      151 JUMP                             ; [+10]
      152 LOADK                            R8 K35 ["<%*>"]
      153 GETTABLEKS                       R11 R6 K27 ["capabilities"]
      155 FASTCALL1                        TYPE R11 ; [+2]
      156 GETIMPORT                        R10 K29 [type]
      158 CALL                             R10 1 1
      159 NAMECALL                         R8 R8 K3 ["format"]
      161 CALL                             R8 2 1
      162 GETUPVAL                         R9 0
      163 LOADK                            R10 K36 ["[AssetInsertTool] Metadata sandbox signal: flag=%*, asset.capabilities=%*, ShouldSandbox=%*"]
      164 GETUPVAL                         R13 1
      165 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
      167 FASTCALL1                        TOSTRING R13 ; [+2]
      168 GETIMPORT                        R12 K9 [tostring]
      170 CALL                             R12 1 1
      171 MOVE                             R13 R8
      172 GETTABLEKS                       R15 R7 K20 ["ShouldSandbox"]
      174 FASTCALL1                        TOSTRING R15 ; [+2]
      175 GETIMPORT                        R14 K9 [tostring]
      177 CALL                             R14 1 1
      178 NAMECALL                         R10 R10 K3 ["format"]
      180 CALL                             R10 4 1
      181 CALL                             R9 1 0
      182 LOADB                            R9 1
      183 MOVE                             R10 R7
      184 RETURN                           R9 2

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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K2 ["[AssetInsertTool] sanitizeModel: ClassName=%*, FindService ok=%*, found=%*"]
        8 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       10 MOVE                             R7 R1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R8 0 +1
       14 LOADB                            R8 1
       15 NAMECALL                         R4 R4 K4 ["format"]
       17 CALL                             R4 4 1
       18 CALL                             R3 1 0
       19 JUMPIFNOT                        R1 ; [+17]
       20 JUMPIFNOT                        R2 ; [+16]
       21 GETUPVAL                         R3 0
       22 LOADK                            R4 K5 ["[AssetInsertTool] sanitizeModel REJECTED: %* is an existing service"]
       23 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       25 NAMECALL                         R4 R4 K4 ["format"]
       27 CALL                             R4 2 1
       28 CALL                             R3 1 0
       29 LOADB                            R3 0
       30 LOADK                            R4 K6 ["Asset appears to be a service (%*) rather than a valid model"]
       31 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       33 NAMECALL                         R4 R4 K4 ["format"]
       35 CALL                             R4 2 1
       36 RETURN                           R3 2
       37 GETUPVAL                         R3 0
       38 LOADK                            R4 K7 ["[AssetInsertTool] sanitizeModel PASSED: %*"]
       39 GETTABLEKS                       R6 R0 K8 ["Name"]
       41 NAMECALL                         R4 R4 K4 ["format"]
       43 CALL                             R4 2 1
       44 CALL                             R3 1 0
       45 LOADB                            R3 1
       46 LOADNIL                          R4
       47 RETURN                           R3 2

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
        0 JUMPIFNOT                        R2 ; [+64]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetInsertTool] Loading as PACKAGE: rbxassetid://%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 CALL                             R3 1 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R3 K3 [pcall]
       14 CALL                             R3 1 2
       15 JUMPIF                           R3 ; [+15]
       16 GETUPVAL                         R5 0
       17 LOADK                            R6 K4 ["[AssetInsertTool] LoadPackageAssetAsync FAILED: %*"]
       18 MOVE                             R8 R4
       19 NAMECALL                         R6 R6 K1 ["format"]
       21 CALL                             R6 2 1
       22 CALL                             R5 1 0
       23 LOADB                            R5 0
       24 LOADNIL                          R6
       25 LOADK                            R7 K5 ["Failed to load package asset: %*"]
       26 MOVE                             R9 R4
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 RETURN                           R5 3
       31 JUMPIFNOT                        R4 ; [+29]
       32 LENGTH                           R5 R4
       33 LOADN                            R6 0
       34 JUMPIFNOTLT                      R6 R5 ; [+26]
       36 GETUPVAL                         R5 0
       37 LOADK                            R6 K6 ["[AssetInsertTool] Package loaded: %* (%*), children=%*"]
       38 GETTABLEN                        R8 R4 1
       39 GETTABLEKS                       R8 R8 K7 ["Name"]
       41 GETTABLEN                        R9 R4 1
       42 GETTABLEKS                       R9 R9 K8 ["ClassName"]
       44 GETTABLEN                        R11 R4 1
       45 NAMECALL                         R11 R11 K9 ["GetChildren"]
       47 CALL                             R11 1 1
       48 LENGTH                           R10 R11
       49 NAMECALL                         R6 R6 K1 ["format"]
       51 CALL                             R6 4 1
       52 CALL                             R5 1 0
       53 LOADB                            R5 1
       54 NEWTABLE                         R6 0 1
       56 GETTABLEN                        R7 R4 1
       57 SETLIST                          R6 R7 1 [1]
       59 LOADNIL                          R7
       60 RETURN                           R5 3
       61 LOADB                            R5 0
       62 LOADNIL                          R6
       63 LOADK                            R7 K10 ["LoadPackageAssetAsync returned empty result"]
       64 RETURN                           R5 3
       65 GETUPVAL                         R3 0
       66 LOADK                            R4 K11 ["[AssetInsertTool] Loading as MODEL via ToolUtils.loadCachedAssetAsync(%*)"]
       67 MOVE                             R6 R1
       68 NAMECALL                         R4 R4 K1 ["format"]
       70 CALL                             R4 2 1
       71 CALL                             R3 1 0
       72 NEWCLOSURE                       R4 P1
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R1
       75 FASTPCALL                        pcall 1 ; [+2]
       76 GETIMPORT                        R3 K3 [pcall]
       78 CALL                             R3 1 2
       79 JUMPIF                           R3 ; [+15]
       80 GETUPVAL                         R5 0
       81 LOADK                            R6 K12 ["[AssetInsertTool] loadCachedAssetAsync FAILED: %*"]
       82 MOVE                             R8 R4
       83 NAMECALL                         R6 R6 K1 ["format"]
       85 CALL                             R6 2 1
       86 CALL                             R5 1 0
       87 LOADB                            R5 0
       88 LOADNIL                          R6
       89 LOADK                            R7 K13 ["Failed to load asset: %*"]
       90 MOVE                             R9 R4
       91 NAMECALL                         R7 R7 K1 ["format"]
       93 CALL                             R7 2 1
       94 RETURN                           R5 3
       95 JUMPIF                           R4 ; [+4]
       96 LOADB                            R5 0
       97 LOADNIL                          R6
       98 LOADK                            R7 K14 ["loadCachedAssetAsync returned nil"]
       99 RETURN                           R5 3
      100 GETUPVAL                         R5 0
      101 LOADK                            R6 K15 ["[AssetInsertTool] loadCachedAssetAsync returned: %* (%*), children=%*"]
      102 GETTABLEKS                       R8 R4 K7 ["Name"]
      104 GETTABLEKS                       R9 R4 K8 ["ClassName"]
      106 NAMECALL                         R11 R4 K9 ["GetChildren"]
      108 CALL                             R11 1 1
      109 LENGTH                           R10 R11
      110 NAMECALL                         R6 R6 K1 ["format"]
      112 CALL                             R6 4 1
      113 CALL                             R5 1 0
      114 LOADB                            R5 1
      115 NEWTABLE                         R6 0 1
      117 MOVE                             R7 R4
      118 SETLIST                          R6 R7 1 [1]
      120 LOADNIL                          R7
      121 RETURN                           R5 3

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMeshPartAsync"]
        3 GETIMPORT                        R1 K3 [Content.fromAssetId]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+8]
        8 LOADB                            R4 0
        9 LOADNIL                          R5
       10 LOADK                            R6 K2 ["Failed to create mesh part: %*"]
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 2 1
       15 RETURN                           R4 3
       16 LOADB                            R4 1
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 RETURN                           R4 3

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
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R3 K1 [pcall]
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+8]
        9 LOADB                            R5 0
       10 LOADNIL                          R6
       11 LOADK                            R7 K2 ["Failed to create decal: %*"]
       12 MOVE                             R9 R4
       13 NAMECALL                         R7 R7 K3 ["format"]
       15 CALL                             R7 2 1
       16 RETURN                           R5 3
       17 LOADB                            R5 1
       18 MOVE                             R6 R4
       19 LOADNIL                          R7
       20 RETURN                           R5 3

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
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R4 K1 [pcall]
        6 CALL                             R4 1 2
        7 JUMPIFNOT                        R4 ; [+2]
        8 JUMPIFNOT                        R5 ; [+1]
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+24]
       11 LOADK                            R7 K2 ["rbxassetid://"]
       12 MOVE                             R8 R1
       13 CONCAT                           R6 R7 R8
       14 NEWCLOSURE                       R8 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R2
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R7 K1 [pcall]
       21 CALL                             R7 1 2
       22 JUMPIF                           R7 ; [+8]
       23 LOADB                            R9 0
       24 LOADNIL                          R10
       25 LOADK                            R11 K3 ["Failed to insert audio asset: %*"]
       26 MOVE                             R13 R8
       27 NAMECALL                         R11 R11 K4 ["format"]
       29 CALL                             R11 2 1
       30 RETURN                           R9 3
       31 LOADB                            R9 1
       32 MOVE                             R10 R8
       33 LOADNIL                          R11
       34 RETURN                           R9 3
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 FASTPCALL                        pcall 1 ; [+2]
       39 GETIMPORT                        R6 K1 [pcall]
       41 CALL                             R6 1 2
       42 JUMPIF                           R6 ; [+8]
       43 LOADB                            R8 0
       44 LOADNIL                          R9
       45 LOADK                            R10 K5 ["Failed to create sound: %*"]
       46 MOVE                             R12 R7
       47 NAMECALL                         R10 R10 K4 ["format"]
       49 CALL                             R10 2 1
       50 RETURN                           R8 3
       51 LOADB                            R8 1
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R7
       55 SETLIST                          R9 R10 1 [1]
       57 LOADNIL                          R10
       58 RETURN                           R8 3

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createVideoFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+8]
        8 LOADB                            R4 0
        9 LOADNIL                          R5
       10 LOADK                            R6 K2 ["Failed to create video frame: %*"]
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 2 1
       15 RETURN                           R4 3
       16 LOADB                            R4 1
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 RETURN                           R4 3

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObjects"]
        3 LOADK                            R2 K1 ["rbxassetid://"]
        4 GETUPVAL                         R3 1
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+8]
        8 LOADB                            R4 0
        9 LOADNIL                          R5
       10 LOADK                            R6 K2 ["Failed to load animation asset: %*"]
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 2 1
       15 RETURN                           R4 3
       16 JUMPIFNOT                        R3 ; [+3]
       17 LENGTH                           R4 R3
       18 JUMPIFNOTEQKN                    R4 K4 [0] ; [+5]
       20 LOADB                            R4 0
       21 LOADNIL                          R5
       22 LOADK                            R6 K5 ["GetObjects returned empty result for animation"]
       23 RETURN                           R4 3
       24 LOADB                            R4 1
       25 MOVE                             R5 R3
       26 LOADNIL                          R6
       27 RETURN                           R4 3

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["assetInsert"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["getDataModelType"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["Types"]
       11 GETTABLEKS                       R4 R4 K4 ["Edit"]
       13 JUMPIFEQ                         R3 R4 ; [+5]
       15 GETUPVAL                         R3 1
       16 LOADK                            R4 K5 ["Cannot insert assets outside of Edit mode"]
       17 CALL                             R3 1 1
       18 RETURN                           R3 1
       19 GETTABLEKS                       R3 R0 K6 ["assetId"]
       21 GETUPVAL                         R4 2
       22 LOADK                            R5 K7 ["[AssetInsertTool] === INSERT START === input assetId=%*, assetName=%*, assetType=%*, parentPath=%*"]
       23 MOVE                             R7 R3
       24 GETTABLEKS                       R9 R0 K9 ["assetName"]
       26 ORK                              R8 R9 K8 ["nil"]
       27 GETTABLEKS                       R10 R0 K10 ["assetType"]
       29 ORK                              R9 R10 K8 ["nil"]
       30 GETTABLEKS                       R11 R0 K11 ["parentPath"]
       32 ORK                              R10 R11 K8 ["nil"]
       33 NAMECALL                         R5 R5 K12 ["format"]
       35 CALL                             R5 5 1
       36 CALL                             R4 1 0
       37 FASTCALL1                        TONUMBER R3 ; [+3]
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K14 [tonumber]
       41 CALL                             R4 1 1
       42 JUMPIF                           R4 ; [+8]
       43 GETUPVAL                         R5 1
       44 LOADK                            R6 K15 ["Invalid asset ID: %*"]
       45 MOVE                             R8 R3
       46 NAMECALL                         R6 R6 K12 ["format"]
       48 CALL                             R6 2 1
       49 CALL                             R5 1 1
       50 RETURN                           R5 1
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 LOADNIL                          R7
       54 LOADB                            R8 0
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K16 ["FFlagAssistantInsertAssetSandboxScripts"]
       58 JUMPIF                           R9 ; [+37]
       59 GETTABLEKS                       R9 R0 K10 ["assetType"]
       61 JUMPIFNOT                        R9 ; [+34]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R11 R0 K10 ["assetType"]
       65 GETTABLE                         R9 R10 R11
       66 JUMPIFNOT                        R9 ; [+29]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R10 R0 K10 ["assetType"]
       70 GETTABLE                         R5 R9 R10
       71 GETTABLEKS                       R9 R0 K9 ["assetName"]
       73 ORK                              R6 R9 K17 ["Asset"]
       74 GETTABLEKS                       R9 R0 K10 ["assetType"]
       76 JUMPIFNOTEQKS                    R9 K18 ["Package"] ; [+8]
       78 NEWTABLE                         R9 0 1
       80 LOADK                            R10 K18 ["Package"]
       81 SETLIST                          R9 R10 1 [1]
       83 MOVE                             R7 R9
       84 JUMP                             ; [+1]
       85 LOADNIL                          R7
       86 GETUPVAL                         R9 2
       87 LOADK                            R10 K19 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       88 GETTABLEKS                       R12 R0 K10 ["assetType"]
       90 MOVE                             R13 R5
       91 NAMECALL                         R10 R10 K12 ["format"]
       93 CALL                             R10 3 1
       94 CALL                             R9 1 0
       95 JUMP                             ; [+87]
       96 GETTABLEKS                       R9 R0 K10 ["assetType"]
       98 JUMPIFNOT                        R9 ; [+8]
       99 GETUPVAL                         R9 2
      100 LOADK                            R10 K20 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
      101 GETTABLEKS                       R12 R0 K10 ["assetType"]
      103 NAMECALL                         R10 R10 K12 ["format"]
      105 CALL                             R10 2 1
      106 CALL                             R9 1 0
      107 GETUPVAL                         R9 5
      108 MOVE                             R10 R2
      109 MOVE                             R11 R3
      110 CALL                             R9 2 2
      111 JUMPIF                           R9 ; [+4]
      112 GETUPVAL                         R11 1
      113 MOVE                             R12 R10
      114 CALL                             R11 1 1
      115 RETURN                           R11 1
      116 GETTABLEKS                       R11 R10 K21 ["AssetId"]
      118 JUMPIFNOT                        R11 ; [+43]
      119 GETTABLEKS                       R12 R10 K21 ["AssetId"]
      121 FASTCALL1                        TOSTRING R12 ; [+2]
      122 GETIMPORT                        R11 K23 [tostring]
      124 CALL                             R11 1 1
      125 JUMPIFEQ                         R11 R3 ; [+28]
      127 GETUPVAL                         R12 2
      128 LOADK                            R13 K24 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      129 MOVE                             R15 R3
      130 MOVE                             R16 R11
      131 NAMECALL                         R13 R13 K12 ["format"]
      133 CALL                             R13 3 1
      134 CALL                             R12 1 0
      135 MOVE                             R3 R11
      136 FASTCALL1                        TONUMBER R3 ; [+3]
      137 MOVE                             R13 R3
      138 GETIMPORT                        R12 K14 [tonumber]
      140 CALL                             R12 1 1
      141 MOVE                             R4 R12
      142 JUMPIF                           R4 ; [+26]
      143 GETUPVAL                         R12 1
      144 LOADK                            R14 K25 ["Resolved asset ID is not a valid number: "]
      145 FASTCALL1                        TOSTRING R3 ; [+3]
      146 MOVE                             R16 R3
      147 GETIMPORT                        R15 K23 [tostring]
      149 CALL                             R15 1 1
      150 CONCAT                           R13 R14 R15
      151 CALL                             R12 1 1
      152 RETURN                           R12 1
      153 JUMP                             ; [+15]
      154 GETUPVAL                         R12 2
      155 LOADK                            R13 K26 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      156 MOVE                             R15 R3
      157 NAMECALL                         R13 R13 K12 ["format"]
      159 CALL                             R13 2 1
      160 CALL                             R12 1 0
      161 JUMP                             ; [+7]
      162 GETUPVAL                         R11 2
      163 LOADK                            R12 K27 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      164 MOVE                             R14 R3
      165 NAMECALL                         R12 R12 K12 ["format"]
      167 CALL                             R12 2 1
      168 CALL                             R11 1 0
      169 GETTABLEKS                       R5 R10 K28 ["AssetTypeId"]
      171 GETTABLEKS                       R11 R0 K9 ["assetName"]
      173 JUMPIF                           R11 ; [+4]
      174 GETTABLEKS                       R11 R10 K29 ["Name"]
      176 JUMPIF                           R11 ; [+1]
      177 LOADK                            R11 K17 ["Asset"]
      178 MOVE                             R6 R11
      179 GETTABLEKS                       R7 R10 K30 ["AssetSubTypes"]
      181 GETTABLEKS                       R8 R10 K31 ["ShouldSandbox"]
      183 GETUPVAL                         R9 2
      184 LOADK                            R10 K32 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      185 MOVE                             R12 R3
      186 MOVE                             R13 R4
      187 MOVE                             R14 R5
      188 MOVE                             R15 R6
      189 JUMPIFNOT                        R7 ; [+2]
      190 LENGTH                           R16 R7
      191 JUMPIF                           R16 ; [+1]
      192 LOADN                            R16 0
      193 NAMECALL                         R10 R10 K12 ["format"]
      195 CALL                             R10 6 1
      196 CALL                             R9 1 0
      197 GETUPVAL                         R9 6
      198 GETTABLEKS                       R9 R9 K33 ["isPackageAsset"]
      200 MOVE                             R10 R5
      201 MOVE                             R11 R7
      202 CALL                             R9 2 1
      203 GETUPVAL                         R11 7
      204 GETTABLE                         R10 R11 R5
      205 JUMPIF                           R10 ; [+8]
      206 GETUPVAL                         R11 1
      207 LOADK                            R12 K34 ["Unsupported asset type ID: %*"]
      208 MOVE                             R14 R5
      209 NAMECALL                         R12 R12 K12 ["format"]
      211 CALL                             R12 2 1
      212 CALL                             R11 1 1
      213 RETURN                           R11 1
      214 GETTABLEKS                       R11 R10 K29 ["Name"]
      216 GETUPVAL                         R12 2
      217 LOADK                            R13 K35 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      218 MOVE                             R15 R11
      219 MOVE                             R16 R9
      220 NAMECALL                         R13 R13 K12 ["format"]
      222 CALL                             R13 3 1
      223 CALL                             R12 1 0
      224 LOADNIL                          R12
      225 NEWTABLE                         R13 0 0
      227 GETTABLEKS                       R14 R1 K36 ["assetAccessController"]
      229 GETUPVAL                         R15 3
      230 GETTABLEKS                       R15 R15 K37 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      232 JUMPIF                           R15 ; [+29]
      233 JUMPIFNOT                        R14 ; [+28]
      234 GETIMPORT                        R15 K39 [game]
      236 GETTABLEKS                       R15 R15 K40 ["GameId"]
      238 JUMPIFEQKN                       R15 K41 [0] ; [+23]
      240 GETUPVAL                         R15 2
      241 LOADK                            R16 K42 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      242 MOVE                             R18 R4
      243 MOVE                             R19 R11
      244 NAMECALL                         R16 R16 K12 ["format"]
      246 CALL                             R16 3 1
      247 CALL                             R15 1 0
      248 GETUPVAL                         R15 8
      249 NEWTABLE                         R16 0 1
      251 MOVE                             R17 R4
      252 SETLIST                          R16 R17 1 [1]
      254 NEWTABLE                         R17 0 1
      256 MOVE                             R18 R10
      257 SETLIST                          R17 R18 1 [1]
      259 MOVE                             R18 R14
      260 CALL                             R15 3 1
      261 MOVE                             R13 R15
      262 GETIMPORT                        R15 K44 [next]
      264 MOVE                             R16 R13
      265 CALL                             R15 1 1
      266 JUMPIFNOT                        R15 ; [+21]
      267 MOVE                             R15 R13
      268 LOADNIL                          R16
      269 LOADNIL                          R17
      270 FORGPREP                         R15
      271 LOADK                            R20 K45 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      272 MOVE                             R22 R18
      273 NAMECALL                         R20 R20 K12 ["format"]
      275 CALL                             R20 2 1
      276 ORK                              R21 R12 K46 [""]
      277 MOVE                             R22 R20
      278 CONCAT                           R12 R21 R22
      279 FORGLOOP                         R15 2 ; [-9]
      281 GETUPVAL                         R15 2
      282 LOADK                            R16 K47 ["[AssetInsertTool] %*"]
      283 MOVE                             R18 R12
      284 NAMECALL                         R16 R16 K12 ["format"]
      286 CALL                             R16 2 1
      287 CALL                             R15 1 0
      288 GETTABLE                         R15 R13 R4
      289 JUMPIFNOT                        R15 ; [+4]
      290 GETUPVAL                         R15 1
      291 ORK                              R16 R12 K48 ["Failed to grant required permissions for asset"]
      292 CALL                             R15 1 1
      293 RETURN                           R15 1
      294 NEWTABLE                         R15 0 0
      296 LOADNIL                          R16
      297 LOADNIL                          R17
      298 GETIMPORT                        R18 K52 [Enum.AssetType.Model]
      300 JUMPIFEQ                         R10 R18 ; [+9]
      302 GETIMPORT                        R18 K54 [Enum.AssetType.MeshPart]
      304 JUMPIFEQ                         R10 R18 ; [+5]
      306 GETIMPORT                        R18 K55 [Enum.AssetType.Package]
      308 JUMPIFNOTEQ                      R10 R18 ; [+14]
      310 LOADNIL                          R18
      311 GETUPVAL                         R19 9
      312 MOVE                             R20 R2
      313 MOVE                             R21 R3
      314 MOVE                             R22 R9
      315 CALL                             R19 3 3
      316 MOVE                             R16 R19
      317 MOVE                             R18 R20
      318 MOVE                             R17 R21
      319 JUMPIFNOT                        R16 ; [+193]
      320 JUMPIFNOT                        R18 ; [+192]
      321 MOVE                             R15 R18
      322 JUMP                             ; [+190]
      323 GETIMPORT                        R18 K57 [Enum.AssetType.Mesh]
      325 JUMPIFNOTEQ                      R10 R18 ; [+35]
      327 LOADNIL                          R18
      328 NEWCLOSURE                       R24 P0
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R4
      331 FASTPCALL                        pcall 1 ; [+2]
      332 GETIMPORT                        R23 K59 [pcall]
      334 CALL                             R23 1 2
      335 JUMPIF                           R23 ; [+9]
      336 LOADB                            R19 0
      337 LOADNIL                          R20
      338 LOADK                            R25 K60 ["Failed to create mesh part: %*"]
      339 MOVE                             R27 R24
      340 NAMECALL                         R25 R25 K12 ["format"]
      342 CALL                             R25 2 1
      343 MOVE                             R21 R25
      344 JUMP                             ; [+3]
      345 LOADB                            R19 1
      346 MOVE                             R20 R24
      347 LOADNIL                          R21
      348 MOVE                             R16 R19
      349 MOVE                             R18 R20
      350 MOVE                             R17 R21
      351 JUMPIFNOT                        R16 ; [+161]
      352 JUMPIFNOT                        R18 ; [+160]
      353 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      355 MOVE                             R20 R15
      356 MOVE                             R21 R18
      357 GETIMPORT                        R19 K63 [table.insert]
      359 CALL                             R19 2 0
      360 JUMP                             ; [+152]
      361 GETIMPORT                        R18 K65 [Enum.AssetType.Decal]
      363 JUMPIFEQ                         R10 R18 ; [+5]
      365 GETIMPORT                        R18 K67 [Enum.AssetType.Image]
      367 JUMPIFNOTEQ                      R10 R18 ; [+42]
      369 LOADNIL                          R18
      370 GETIMPORT                        R24 K67 [Enum.AssetType.Image]
      372 JUMPIFEQ                         R10 R24 ; [+2]
      374 LOADB                            R23 0 +1
      375 LOADB                            R23 1
      376 NEWCLOSURE                       R25 P1
      377 CAPTURE                          VAL R23
      378 CAPTURE                          VAL R2
      379 CAPTURE                          VAL R3
      380 FASTPCALL                        pcall 1 ; [+2]
      381 GETIMPORT                        R24 K59 [pcall]
      383 CALL                             R24 1 2
      384 JUMPIF                           R24 ; [+9]
      385 LOADB                            R19 0
      386 LOADNIL                          R20
      387 LOADK                            R26 K68 ["Failed to create decal: %*"]
      388 MOVE                             R28 R25
      389 NAMECALL                         R26 R26 K12 ["format"]
      391 CALL                             R26 2 1
      392 MOVE                             R21 R26
      393 JUMP                             ; [+3]
      394 LOADB                            R19 1
      395 MOVE                             R20 R25
      396 LOADNIL                          R21
      397 MOVE                             R16 R19
      398 MOVE                             R18 R20
      399 MOVE                             R17 R21
      400 JUMPIFNOT                        R16 ; [+112]
      401 JUMPIFNOT                        R18 ; [+111]
      402 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      404 MOVE                             R20 R15
      405 MOVE                             R21 R18
      406 GETIMPORT                        R19 K63 [table.insert]
      408 CALL                             R19 2 0
      409 JUMP                             ; [+103]
      410 GETIMPORT                        R18 K70 [Enum.AssetType.Audio]
      412 JUMPIFNOTEQ                      R10 R18 ; [+14]
      414 LOADNIL                          R18
      415 GETUPVAL                         R19 10
      416 MOVE                             R20 R2
      417 MOVE                             R21 R3
      418 MOVE                             R22 R6
      419 CALL                             R19 3 3
      420 MOVE                             R16 R19
      421 MOVE                             R18 R20
      422 MOVE                             R17 R21
      423 JUMPIFNOT                        R16 ; [+89]
      424 JUMPIFNOT                        R18 ; [+88]
      425 MOVE                             R15 R18
      426 JUMP                             ; [+86]
      427 GETIMPORT                        R18 K72 [Enum.AssetType.Video]
      429 JUMPIFNOTEQ                      R10 R18 ; [+35]
      431 LOADNIL                          R18
      432 NEWCLOSURE                       R24 P2
      433 CAPTURE                          VAL R2
      434 CAPTURE                          VAL R3
      435 FASTPCALL                        pcall 1 ; [+2]
      436 GETIMPORT                        R23 K59 [pcall]
      438 CALL                             R23 1 2
      439 JUMPIF                           R23 ; [+9]
      440 LOADB                            R19 0
      441 LOADNIL                          R20
      442 LOADK                            R25 K73 ["Failed to create video frame: %*"]
      443 MOVE                             R27 R24
      444 NAMECALL                         R25 R25 K12 ["format"]
      446 CALL                             R25 2 1
      447 MOVE                             R21 R25
      448 JUMP                             ; [+3]
      449 LOADB                            R19 1
      450 MOVE                             R20 R24
      451 LOADNIL                          R21
      452 MOVE                             R16 R19
      453 MOVE                             R18 R20
      454 MOVE                             R17 R21
      455 JUMPIFNOT                        R16 ; [+57]
      456 JUMPIFNOT                        R18 ; [+56]
      457 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      459 MOVE                             R20 R15
      460 MOVE                             R21 R18
      461 GETIMPORT                        R19 K63 [table.insert]
      463 CALL                             R19 2 0
      464 JUMP                             ; [+48]
      465 GETIMPORT                        R18 K75 [Enum.AssetType.Animation]
      467 JUMPIFNOTEQ                      R10 R18 ; [+37]
      469 LOADNIL                          R18
      470 NEWCLOSURE                       R24 P3
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R4
      473 FASTPCALL                        pcall 1 ; [+2]
      474 GETIMPORT                        R23 K59 [pcall]
      476 CALL                             R23 1 2
      477 JUMPIF                           R23 ; [+9]
      478 LOADB                            R19 0
      479 LOADNIL                          R20
      480 LOADK                            R25 K76 ["Failed to load animation asset: %*"]
      481 MOVE                             R27 R24
      482 NAMECALL                         R25 R25 K12 ["format"]
      484 CALL                             R25 2 1
      485 MOVE                             R21 R25
      486 JUMP                             ; [+11]
      487 JUMPIFNOT                        R24 ; [+3]
      488 LENGTH                           R25 R24
      489 JUMPIFNOTEQKN                    R25 K41 [0] ; [+5]
      491 LOADB                            R19 0
      492 LOADNIL                          R20
      493 LOADK                            R21 K77 ["GetObjects returned empty result for animation"]
      494 JUMP                             ; [+3]
      495 LOADB                            R19 1
      496 MOVE                             R20 R24
      497 LOADNIL                          R21
      498 MOVE                             R16 R19
      499 MOVE                             R18 R20
      500 MOVE                             R17 R21
      501 JUMPIFNOT                        R16 ; [+11]
      502 JUMPIFNOT                        R18 ; [+10]
      503 MOVE                             R15 R18
      504 JUMP                             ; [+8]
      505 GETUPVAL                         R18 1
      506 LOADK                            R19 K78 ["Unhandled asset type: %*"]
      507 MOVE                             R21 R11
      508 NAMECALL                         R19 R19 K12 ["format"]
      510 CALL                             R19 2 1
      511 CALL                             R18 1 1
      512 RETURN                           R18 1
      513 JUMPIFNOT                        R16 ; [+3]
      514 LENGTH                           R18 R15
      515 JUMPIFNOTEQKN                    R18 K41 [0] ; [+5]
      517 GETUPVAL                         R18 1
      518 ORK                              R19 R17 K79 ["Failed to load asset instances"]
      519 CALL                             R18 1 1
      520 RETURN                           R18 1
      521 GETUPVAL                         R18 2
      522 LOADK                            R19 K80 ["[AssetInsertTool] Sanitizing %* instances..."]
      523 LENGTH                           R21 R15
      524 NAMECALL                         R19 R19 K12 ["format"]
      526 CALL                             R19 2 1
      527 CALL                             R18 1 0
      528 LENGTH                           R20 R15
      529 LOADN                            R18 1
      530 LOADN                            R19 -1
      531 FORNPREP                         R18
      532 GETTABLE                         R21 R15 R20
      533 LOADB                            R22 0
      534 GETUPVAL                         R23 2
      535 LOADK                            R24 K81 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      536 MOVE                             R26 R20
      537 GETTABLEKS                       R27 R21 K29 ["Name"]
      539 GETTABLEKS                       R28 R21 K82 ["ClassName"]
      541 LOADK                            R31 K51 ["Model"]
      542 NAMECALL                         R29 R21 K83 ["IsA"]
      544 CALL                             R29 2 1
      545 LOADK                            R32 K53 ["MeshPart"]
      546 NAMECALL                         R30 R21 K83 ["IsA"]
      548 CALL                             R30 2 1
      549 NAMECALL                         R24 R24 K12 ["format"]
      551 CALL                             R24 6 1
      552 CALL                             R23 1 0
      553 GETUPVAL                         R23 11
      554 MOVE                             R24 R21
      555 CALL                             R23 1 2
      556 JUMPIF                           R23 ; [+11]
      557 GETUPVAL                         R25 2
      558 LOADK                            R26 K84 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      559 GETTABLEKS                       R28 R21 K82 ["ClassName"]
      561 MOVE                             R29 R24
      562 NAMECALL                         R26 R26 K12 ["format"]
      564 CALL                             R26 3 1
      565 CALL                             R25 1 0
      566 LOADB                            R22 1
      567 JUMP                             ; [+26]
      568 LOADK                            R27 K53 ["MeshPart"]
      569 NAMECALL                         R25 R21 K83 ["IsA"]
      571 CALL                             R25 2 1
      572 JUMPIFNOT                        R25 ; [+21]
      573 NAMECALL                         R28 R21 K85 ["GetChildren"]
      575 CALL                             R28 1 1
      576 LENGTH                           R27 R28
      577 LOADN                            R28 0
      578 JUMPIFNOTLT                      R28 R27 ; [+4]
      580 NAMECALL                         R27 R21 K86 ["ClearAllChildren"]
      582 CALL                             R27 1 0
      583 LOADB                            R25 1
      584 LOADNIL                          R26
      585 JUMPIF                           R25 ; [+8]
      586 GETUPVAL                         R27 2
      587 LOADK                            R28 K87 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      588 MOVE                             R30 R26
      589 NAMECALL                         R28 R28 K12 ["format"]
      591 CALL                             R28 2 1
      592 CALL                             R27 1 0
      593 LOADB                            R22 1
      594 JUMPIFNOT                        R22 ; [+14]
      595 GETUPVAL                         R25 2
      596 LOADK                            R26 K88 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      597 MOVE                             R28 R20
      598 GETTABLEKS                       R29 R21 K29 ["Name"]
      600 NAMECALL                         R26 R26 K12 ["format"]
      602 CALL                             R26 3 1
      603 CALL                             R25 1 0
      604 GETIMPORT                        R25 K90 [table.remove]
      606 MOVE                             R26 R15
      607 MOVE                             R27 R20
      608 CALL                             R25 2 0
      609 FORNLOOP                         R18
      610 GETUPVAL                         R18 2
      611 LOADK                            R19 K91 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      612 LENGTH                           R21 R15
      613 NAMECALL                         R19 R19 K12 ["format"]
      615 CALL                             R19 2 1
      616 CALL                             R18 1 0
      617 LENGTH                           R18 R15
      618 JUMPIFNOTEQKN                    R18 K41 [0] ; [+5]
      620 GETUPVAL                         R18 1
      621 LOADK                            R19 K92 ["All instances failed sanitization"]
      622 CALL                             R18 1 1
      623 RETURN                           R18 1
      624 GETUPVAL                         R18 2
      625 LOADK                            R19 K93 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      626 LENGTH                           R21 R15
      627 NAMECALL                         R19 R19 K12 ["format"]
      629 CALL                             R19 2 1
      630 CALL                             R18 1 0
      631 GETUPVAL                         R18 2
      632 LOADK                            R19 K94 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      633 MOVE                             R21 R4
      634 LENGTH                           R22 R15
      635 NAMECALL                         R19 R19 K12 ["format"]
      637 CALL                             R19 3 1
      638 CALL                             R18 1 0
      639 MOVE                             R18 R15
      640 LOADNIL                          R19
      641 LOADNIL                          R20
      642 FORGPREP                         R18
      643 GETTABLEKS                       R23 R2 K95 ["assignSourceAssetId"]
      645 MOVE                             R24 R4
      646 MOVE                             R25 R22
      647 CALL                             R23 2 0
      648 FORGLOOP                         R18 2 ; [-6]
      650 GETUPVAL                         R18 12
      651 LOADB                            R20 0
      652 NAMECALL                         R18 R18 K96 ["GenerateGUID"]
      654 CALL                             R18 2 1
      655 GETUPVAL                         R20 3
      656 GETTABLEKS                       R20 R20 K97 ["FFlagAssistantUseNewTags"]
      658 JUMPIFNOT                        R20 ; [+7]
      659 GETUPVAL                         R19 13
      660 GETTABLEKS                       R19 R19 K98 ["getUniqueTag"]
      662 LOADK                            R20 K99 ["Insert"]
      663 MOVE                             R21 R18
      664 CALL                             R19 2 1
      665 JUMP                             ; [+3]
      666 LOADK                            R20 K100 ["Assistant:"]
      667 MOVE                             R21 R18
      668 CONCAT                           R19 R20 R21
      669 GETUPVAL                         R20 12
      670 LOADB                            R22 0
      671 NAMECALL                         R20 R20 K96 ["GenerateGUID"]
      673 CALL                             R20 2 1
      674 GETUPVAL                         R21 2
      675 LOADK                            R22 K101 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      676 MOVE                             R24 R18
      677 MOVE                             R25 R19
      678 NAMECALL                         R22 R22 K12 ["format"]
      680 CALL                             R22 3 1
      681 CALL                             R21 1 0
      682 GETUPVAL                         R21 14
      683 GETTABLEKS                       R22 R0 K11 ["parentPath"]
      685 CALL                             R21 1 2
      686 GETUPVAL                         R23 2
      687 LOADK                            R24 K102 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      688 NAMECALL                         R26 R21 K103 ["GetFullName"]
      690 CALL                             R26 1 1
      691 ORK                              R27 R22 K104 ["none"]
      692 NAMECALL                         R24 R24 K12 ["format"]
      694 CALL                             R24 3 1
      695 CALL                             R23 1 0
      696 GETTABLEN                        R23 R15 1
      697 GETTABLEKS                       R23 R23 K82 ["ClassName"]
      699 GETTABLEKS                       R24 R1 K105 ["startRecording"]
      701 MOVE                             R25 R20
      702 CALL                             R24 1 0
      703 NEWTABLE                         R24 0 0
      705 MOVE                             R25 R15
      706 LOADNIL                          R26
      707 LOADNIL                          R27
      708 FORGPREP                         R25
      709 SETTABLEKS                       R6 R29 K29 ["Name"]
      711 MOVE                             R32 R19
      712 NAMECALL                         R30 R29 K106 ["AddTag"]
      714 CALL                             R30 2 0
      715 LOADK                            R32 K107 ["PVInstance"]
      716 NAMECALL                         R30 R29 K83 ["IsA"]
      718 CALL                             R30 2 1
      719 JUMPIFNOT                        R30 ; [+6]
      720 GETUPVAL                         R30 15
      721 GETTABLEKS                       R30 R30 K108 ["setPositionOnGround"]
      723 MOVE                             R31 R29
      724 LOADB                            R32 1
      725 CALL                             R30 2 0
      726 SETTABLEKS                       R21 R29 K109 ["Parent"]
      728 GETUPVAL                         R30 2
      729 LOADK                            R31 K110 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      730 GETTABLEKS                       R33 R29 K29 ["Name"]
      732 GETTABLEKS                       R34 R29 K82 ["ClassName"]
      734 GETUPVAL                         R35 16
      735 MOVE                             R36 R29
      736 CALL                             R35 1 1
      737 NAMECALL                         R31 R31 K12 ["format"]
      739 CALL                             R31 4 1
      740 CALL                             R30 1 0
      741 DUPTABLE                         R32 K114 [{"name", "className", "fullPath"}]
      742 GETTABLEKS                       R33 R29 K29 ["Name"]
      744 SETTABLEKS                       R33 R32 K111 ["name"]
      746 GETTABLEKS                       R33 R29 K82 ["ClassName"]
      748 SETTABLEKS                       R33 R32 K112 ["className"]
      750 GETUPVAL                         R33 16
      751 MOVE                             R34 R29
      752 CALL                             R33 1 1
      753 SETTABLEKS                       R33 R32 K113 ["fullPath"]
      755 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      757 MOVE                             R31 R24
      758 GETIMPORT                        R30 K63 [table.insert]
      760 CALL                             R30 2 0
      761 FORGLOOP                         R25 2 ; [-53]
      763 GETTABLEKS                       R25 R1 K115 ["endRecording"]
      765 MOVE                             R26 R20
      766 CALL                             R25 1 0
      767 LOADB                            R25 0
      768 GETUPVAL                         R26 3
      769 GETTABLEKS                       R26 R26 K16 ["FFlagAssistantInsertAssetSandboxScripts"]
      771 GETUPVAL                         R29 17
      772 GETTABLE                         R28 R29 R5
      773 JUMPIFEQKB                       R28 TRUE ; [+2]
      775 LOADB                            R27 0 +1
      776 LOADB                            R27 1
      777 GETUPVAL                         R28 2
      778 LOADK                            R29 K116 ["[AssetInsertTool] Sandbox gate: flag=%*, typeId=%* sandboxable=%*, shouldSandbox(metadata)=%*, capabilitiesHandler=%*, instances=%*"]
      779 FASTCALL1                        TOSTRING R26 ; [+3]
      780 MOVE                             R32 R26
      781 GETIMPORT                        R31 K23 [tostring]
      783 CALL                             R31 1 1
      784 MOVE                             R32 R5
      785 FASTCALL1                        TOSTRING R27 ; [+3]
      786 MOVE                             R34 R27
      787 GETIMPORT                        R33 K23 [tostring]
      789 CALL                             R33 1 1
      790 FASTCALL1                        TOSTRING R8 ; [+3]
      791 MOVE                             R35 R8
      792 GETIMPORT                        R34 K23 [tostring]
      794 CALL                             R34 1 1
      795 GETTABLEKS                       R37 R1 K117 ["capabilitiesHandler"]
      797 JUMPIFNOTEQKNIL                  R37 ; [+2]
      799 LOADB                            R36 0 +1
      800 LOADB                            R36 1
      801 FASTCALL1                        TOSTRING R36 ; [+2]
      802 GETIMPORT                        R35 K23 [tostring]
      804 CALL                             R35 1 1
      805 LENGTH                           R36 R15
      806 NAMECALL                         R29 R29 K12 ["format"]
      808 CALL                             R29 7 1
      809 CALL                             R28 1 0
      810 JUMPIFNOT                        R26 ; [+23]
      811 JUMPIFNOT                        R27 ; [+22]
      812 JUMPIFNOT                        R8 ; [+21]
      813 GETUPVAL                         R28 18
      814 GETTABLEKS                       R28 R28 K118 ["applySandboxIfNeeded"]
      816 MOVE                             R29 R15
      817 GETTABLEKS                       R30 R1 K117 ["capabilitiesHandler"]
      819 GETUPVAL                         R31 2
      820 CALL                             R28 3 1
      821 MOVE                             R25 R28
      822 GETUPVAL                         R28 2
      823 LOADK                            R29 K119 ["[AssetInsertTool] Sandbox applied=%*"]
      824 FASTCALL1                        TOSTRING R25 ; [+3]
      825 MOVE                             R32 R25
      826 GETIMPORT                        R31 K23 [tostring]
      828 CALL                             R31 1 1
      829 NAMECALL                         R29 R29 K12 ["format"]
      831 CALL                             R29 2 1
      832 CALL                             R28 1 0
      833 JUMP                             ; [+3]
      834 GETUPVAL                         R28 2
      835 LOADK                            R29 K120 ["[AssetInsertTool] Sandbox skipped — one or more gate conditions false (see flag/typeId/shouldSandbox above)"]
      836 CALL                             R28 1 0
      837 GETUPVAL                         R28 2
      838 LOADK                            R29 K121 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      839 CALL                             R28 1 0
      840 JUMPIFNOT                        R25 ; [+2]
      841 LOADK                            R28 K122 ["Inserted and set Sandboxed property to true on all scripts with all SecurityCapabilities included except for dangerous ones."]
      842 JUMP                             ; [+1]
      843 LOADNIL                          R28
      844 GETUPVAL                         R29 12
      845 DUPTABLE                         R31 K133 [{["status"] = "success", ["insertGuid"], ["tag"], ["assetId"], ["assetName"], ["assetType"], ["isPackage"], ["insertedInstances"], ["parentWarning"], ["permissionWarning"], ["sandboxed"], ["sandboxNote"]}]
      846 SETTABLEKS                       R18 R31 K125 ["insertGuid"]
      848 SETTABLEKS                       R19 R31 K126 ["tag"]
      850 SETTABLEKS                       R3 R31 K6 ["assetId"]
      852 SETTABLEKS                       R6 R31 K9 ["assetName"]
      854 SETTABLEKS                       R11 R31 K10 ["assetType"]
      856 SETTABLEKS                       R9 R31 K127 ["isPackage"]
      858 SETTABLEKS                       R24 R31 K128 ["insertedInstances"]
      860 SETTABLEKS                       R22 R31 K129 ["parentWarning"]
      862 SETTABLEKS                       R12 R31 K130 ["permissionWarning"]
      864 SETTABLEKS                       R25 R31 K131 ["sandboxed"]
      866 SETTABLEKS                       R28 R31 K132 ["sandboxNote"]
      868 NAMECALL                         R29 R29 K134 ["JSONEncode"]
      870 CALL                             R29 2 1
      871 DUPTABLE                         R30 K137 [{"result", "responseInfo"}]
      872 SETTABLEKS                       R29 R30 K135 ["result"]
      874 DUPTABLE                         R31 K138 [{"tag", "assetName", "insertGuid", "className"}]
      875 SETTABLEKS                       R19 R31 K126 ["tag"]
      877 SETTABLEKS                       R6 R31 K9 ["assetName"]
      879 SETTABLEKS                       R18 R31 K125 ["insertGuid"]
      881 SETTABLEKS                       R23 R31 K112 ["className"]
      883 SETTABLEKS                       R31 R30 K136 ["responseInfo"]
      885 RETURN                           R30 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["insertAsset"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NAMECALL                         R6 R6 K2 ["Connect"]
       16 CALL                             R6 2 -1
       17 NAMECALL                         R4 R3 K3 ["Add"]
       19 CALL                             R4 -1 0
       20 GETTABLEKS                       R4 R1 K4 ["Destroying"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R4 R4 K5 ["Once"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Remotes"]
       29 GETTABLEKS                       R6 R6 K14 ["AssetInsertRemotes"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Util"]
       36 GETTABLEKS                       R7 R7 K16 ["AssetManagement"]
       38 GETTABLEKS                       R7 R7 K17 ["AssetManagementConstants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K15 ["Util"]
       45 GETTABLEKS                       R8 R8 K16 ["AssetManagement"]
       47 GETTABLEKS                       R8 R8 K18 ["AssetManagementUtils"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K10 [require]
       52 GETTABLEKS                       R9 R0 K15 ["Util"]
       54 GETTABLEKS                       R9 R9 K19 ["DataModelType"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K10 [require]
       59 GETTABLEKS                       R10 R0 K20 ["Guest"]
       61 GETTABLEKS                       R10 R10 K21 ["Environment"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K10 [require]
       66 GETTABLEKS                       R11 R0 K22 ["Flags"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K15 ["Util"]
       73 GETTABLEKS                       R12 R12 K23 ["Tagging"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K15 ["Util"]
       80 GETTABLEKS                       R13 R13 K24 ["ToolUtils"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K10 [require]
       85 GETTABLEKS                       R14 R0 K15 ["Util"]
       87 GETTABLEKS                       R14 R14 K16 ["AssetManagement"]
       89 GETTABLEKS                       R14 R14 K25 ["grantUniversePermissions"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K10 [require]
       94 GETTABLEKS                       R15 R0 K15 ["Util"]
       96 GETTABLEKS                       R15 R15 K16 ["AssetManagement"]
       98 GETTABLEKS                       R15 R15 K26 ["sandboxAsset"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R7 K27 ["debugPrint"]
      103 GETTABLEKS                       R16 R6 K28 ["ASSET_TYPE_ID_MAP"]
      105 GETTABLEKS                       R17 R6 K29 ["ASSET_TYPE_NAME_TO_ID"]
      107 GETTABLEKS                       R18 R6 K30 ["SANDBOXABLE_TYPE_IDS"]
      109 DUPCLOSURE                       R19 K31 [PROTO_0]
      110 CAPTURE                          VAL R1
      111 DUPCLOSURE                       R20 K32 [PROTO_1]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 DUPCLOSURE                       R21 K33 [PROTO_3]
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R1
      118 DUPCLOSURE                       R22 K34 [PROTO_4]
      119 DUPCLOSURE                       R23 K35 [PROTO_5]
      120 DUPCLOSURE                       R24 K36 [PROTO_6]
      121 DUPCLOSURE                       R25 K37 [PROTO_8]
      122 CAPTURE                          VAL R15
      123 DUPCLOSURE                       R26 K38 [PROTO_11]
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R12
      126 DUPCLOSURE                       R27 K39 [PROTO_13]
      127 DUPCLOSURE                       R28 K40 [PROTO_15]
      128 DUPCLOSURE                       R29 K41 [PROTO_19]
      129 DUPCLOSURE                       R30 K42 [PROTO_21]
      130 DUPCLOSURE                       R31 K43 [PROTO_23]
      131 DUPCLOSURE                       R32 K44 [PROTO_24]
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R26
      142 CAPTURE                          VAL R29
      143 CAPTURE                          VAL R25
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R14
      151 DUPCLOSURE                       R33 K45 [PROTO_27]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R32
      155 DUPTABLE                         R34 K47 [{"connectRemotes"}]
      156 SETTABLEKS                       R33 R34 K46 ["connectRemotes"]
      158 RETURN                           R34 1
