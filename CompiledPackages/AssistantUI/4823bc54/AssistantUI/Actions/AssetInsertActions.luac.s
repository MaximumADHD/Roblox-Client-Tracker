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
        5 JUMPIF                           R2 ; [+8]
        6 LOADB                            R2 0
        7 LOADK                            R4 K2 ["Invalid asset ID: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 RETURN                           R2 2
       14 GETUPVAL                         R2 0
       15 LOADK                            R4 K4 ["[AssetInsertTool] Fetching metadata for assetId=%*"]
       16 MOVE                             R6 R1
       17 NAMECALL                         R4 R4 K3 ["format"]
       19 CALL                             R4 2 1
       20 MOVE                             R3 R4
       21 CALL                             R2 1 0
       22 GETIMPORT                        R2 K6 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CALL                             R2 1 2
       28 JUMPIF                           R2 ; [+24]
       29 GETUPVAL                         R4 0
       30 LOADK                            R6 K7 ["[AssetInsertTool] Metadata fetch failed: %*"]
       31 FASTCALL1                        TOSTRING R3 ; [+3]
       32 MOVE                             R9 R3
       33 GETIMPORT                        R8 K9 [tostring]
       35 CALL                             R8 1 1
       36 NAMECALL                         R6 R6 K3 ["format"]
       38 CALL                             R6 2 1
       39 MOVE                             R5 R6
       40 CALL                             R4 1 0
       41 LOADB                            R4 0
       42 LOADK                            R6 K10 ["Failed to fetch asset metadata: %*"]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R9 R3
       45 GETIMPORT                        R8 K9 [tostring]
       47 CALL                             R8 1 1
       48 NAMECALL                         R6 R6 K3 ["format"]
       50 CALL                             R6 2 1
       51 MOVE                             R5 R6
       52 RETURN                           R4 2
       53 GETTABLEKS                       R4 R3 K11 ["data"]
       55 JUMPIFNOT                        R4 ; [+3]
       56 LENGTH                           R5 R4
       57 JUMPIFNOTEQKN                    R5 K12 [0] ; [+9]
       59 LOADB                            R5 0
       60 LOADK                            R7 K13 ["No asset found for ID: %*"]
       61 MOVE                             R9 R1
       62 NAMECALL                         R7 R7 K3 ["format"]
       64 CALL                             R7 2 1
       65 MOVE                             R6 R7
       66 RETURN                           R5 2
       67 GETTABLEN                        R5 R4 1
       68 GETTABLEKS                       R6 R5 K14 ["asset"]
       70 JUMPIF                           R6 ; [+8]
       71 LOADB                            R7 0
       72 LOADK                            R9 K15 ["Asset data missing in response for ID: %*"]
       73 MOVE                             R11 R1
       74 NAMECALL                         R9 R9 K3 ["format"]
       76 CALL                             R9 2 1
       77 MOVE                             R8 R9
       78 RETURN                           R7 2
       79 DUPTABLE                         R7 K21 [{"AssetId", "Name", "AssetTypeId", "AssetSubTypes", "ShouldSandbox"}]
       80 GETTABLEKS                       R8 R6 K22 ["id"]
       82 SETTABLEKS                       R8 R7 K16 ["AssetId"]
       84 GETTABLEKS                       R8 R6 K23 ["name"]
       86 SETTABLEKS                       R8 R7 K17 ["Name"]
       88 GETTABLEKS                       R8 R6 K24 ["typeId"]
       90 SETTABLEKS                       R8 R7 K18 ["AssetTypeId"]
       92 GETTABLEKS                       R8 R6 K25 ["assetSubTypes"]
       94 SETTABLEKS                       R8 R7 K19 ["AssetSubTypes"]
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R8 R8 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
       99 JUMPIFNOT                        R8 ; [+17]
      100 LOADB                            R8 0
      101 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      103 FASTCALL1                        TYPE R10 ; [+2]
      104 GETIMPORT                        R9 K29 [type]
      106 CALL                             R9 1 1
      107 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+9]
      109 GETTABLEKS                       R9 R6 K27 ["capabilities"]
      111 GETTABLEKS                       R9 R9 K31 ["shouldSandbox"]
      113 JUMPIFEQKB                       R9 TRUE ; [+2]
      115 LOADB                            R8 0 +1
      116 LOADB                            R8 1
      117 SETTABLEKS                       R8 R7 K20 ["ShouldSandbox"]
      119 GETUPVAL                         R8 0
      120 LOADK                            R10 K32 ["[AssetInsertTool] Metadata parsed: AssetId=%*, Name=%*, AssetTypeId=%*, AssetSubTypes=%*"]
      121 GETTABLEKS                       R12 R7 K16 ["AssetId"]
      123 GETTABLEKS                       R13 R7 K17 ["Name"]
      125 GETTABLEKS                       R14 R7 K18 ["AssetTypeId"]
      127 GETTABLEKS                       R16 R7 K19 ["AssetSubTypes"]
      129 JUMPIFNOT                        R16 ; [+7]
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R17 R7 K19 ["AssetSubTypes"]
      133 NAMECALL                         R15 R15 K33 ["JSONEncode"]
      135 CALL                             R15 2 1
      136 JUMPIF                           R15 ; [+1]
      137 LOADK                            R15 K34 ["nil"]
      138 NAMECALL                         R10 R10 K3 ["format"]
      140 CALL                             R10 5 1
      141 MOVE                             R9 R10
      142 CALL                             R8 1 0
      143 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      145 FASTCALL1                        TYPE R10 ; [+2]
      146 GETIMPORT                        R9 K29 [type]
      148 CALL                             R9 1 1
      149 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+8]
      151 GETUPVAL                         R8 2
      152 GETTABLEKS                       R10 R6 K27 ["capabilities"]
      154 NAMECALL                         R8 R8 K33 ["JSONEncode"]
      156 CALL                             R8 2 1
      157 JUMP                             ; [+11]
      158 LOADK                            R9 K35 ["<%*>"]
      159 GETTABLEKS                       R12 R6 K27 ["capabilities"]
      161 FASTCALL1                        TYPE R12 ; [+2]
      162 GETIMPORT                        R11 K29 [type]
      164 CALL                             R11 1 1
      165 NAMECALL                         R9 R9 K3 ["format"]
      167 CALL                             R9 2 1
      168 MOVE                             R8 R9
      169 GETUPVAL                         R9 0
      170 LOADK                            R11 K36 ["[AssetInsertTool] Metadata sandbox signal: flag=%*, asset.capabilities=%*, ShouldSandbox=%*"]
      171 GETUPVAL                         R14 1
      172 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantInsertAssetSandboxScripts"]
      174 FASTCALL1                        TOSTRING R14 ; [+2]
      175 GETIMPORT                        R13 K9 [tostring]
      177 CALL                             R13 1 1
      178 MOVE                             R14 R8
      179 GETTABLEKS                       R16 R7 K20 ["ShouldSandbox"]
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
        6 LOADK                            R5 K2 ["[AssetInsertTool] sanitizeModel: ClassName=%*, FindService ok=%*, found=%*"]
        7 GETTABLEKS                       R7 R0 K3 ["ClassName"]
        9 MOVE                             R8 R1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 4 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 JUMPIFNOT                        R1 ; [+19]
       20 JUMPIFNOT                        R2 ; [+18]
       21 GETUPVAL                         R3 0
       22 LOADK                            R5 K5 ["[AssetInsertTool] sanitizeModel REJECTED: %* is an existing service"]
       23 GETTABLEKS                       R7 R0 K3 ["ClassName"]
       25 NAMECALL                         R5 R5 K4 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 CALL                             R3 1 0
       30 LOADB                            R3 0
       31 LOADK                            R5 K6 ["Asset appears to be a service (%*) rather than a valid model"]
       32 GETTABLEKS                       R7 R0 K3 ["ClassName"]
       34 NAMECALL                         R5 R5 K4 ["format"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 RETURN                           R3 2
       39 GETUPVAL                         R3 0
       40 LOADK                            R5 K7 ["[AssetInsertTool] sanitizeModel PASSED: %*"]
       41 GETTABLEKS                       R7 R0 K8 ["Name"]
       43 NAMECALL                         R5 R5 K4 ["format"]
       45 CALL                             R5 2 1
       46 MOVE                             R4 R5
       47 CALL                             R3 1 0
       48 LOADB                            R3 1
       49 LOADNIL                          R4
       50 RETURN                           R3 2

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
        0 JUMPIFNOT                        R2 ; [+67]
        1 GETUPVAL                         R3 0
        2 LOADK                            R5 K0 ["[AssetInsertTool] Loading as PACKAGE: rbxassetid://%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K3 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R3 1 2
       15 JUMPIF                           R3 ; [+17]
       16 GETUPVAL                         R5 0
       17 LOADK                            R7 K4 ["[AssetInsertTool] LoadPackageAssetAsync FAILED: %*"]
       18 MOVE                             R9 R4
       19 NAMECALL                         R7 R7 K1 ["format"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 CALL                             R5 1 0
       24 LOADB                            R5 0
       25 LOADNIL                          R6
       26 LOADK                            R8 K5 ["Failed to load package asset: %*"]
       27 MOVE                             R10 R4
       28 NAMECALL                         R8 R8 K1 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 RETURN                           R5 3
       33 JUMPIFNOT                        R4 ; [+30]
       34 LENGTH                           R5 R4
       35 LOADN                            R6 0
       36 JUMPIFNOTLT                      R6 R5 ; [+27]
       38 GETUPVAL                         R5 0
       39 LOADK                            R7 K6 ["[AssetInsertTool] Package loaded: %* (%*), children=%*"]
       40 GETTABLEN                        R9 R4 1
       41 GETTABLEKS                       R9 R9 K7 ["Name"]
       43 GETTABLEN                        R10 R4 1
       44 GETTABLEKS                       R10 R10 K8 ["ClassName"]
       46 GETTABLEN                        R12 R4 1
       47 NAMECALL                         R12 R12 K9 ["GetChildren"]
       49 CALL                             R12 1 1
       50 LENGTH                           R11 R12
       51 NAMECALL                         R7 R7 K1 ["format"]
       53 CALL                             R7 4 1
       54 MOVE                             R6 R7
       55 CALL                             R5 1 0
       56 LOADB                            R5 1
       57 NEWTABLE                         R6 0 1
       59 GETTABLEN                        R7 R4 1
       60 SETLIST                          R6 R7 1 [1]
       62 LOADNIL                          R7
       63 RETURN                           R5 3
       64 LOADB                            R5 0
       65 LOADNIL                          R6
       66 LOADK                            R7 K10 ["LoadPackageAssetAsync returned empty result"]
       67 RETURN                           R5 3
       68 GETUPVAL                         R3 0
       69 LOADK                            R5 K11 ["[AssetInsertTool] Loading as MODEL via ToolUtils.loadCachedAssetAsync(%*)"]
       70 MOVE                             R7 R1
       71 NAMECALL                         R5 R5 K1 ["format"]
       73 CALL                             R5 2 1
       74 MOVE                             R4 R5
       75 CALL                             R3 1 0
       76 GETIMPORT                        R3 K3 [pcall]
       78 NEWCLOSURE                       R4 P1
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          VAL R1
       81 CALL                             R3 1 2
       82 JUMPIF                           R3 ; [+17]
       83 GETUPVAL                         R5 0
       84 LOADK                            R7 K12 ["[AssetInsertTool] loadCachedAssetAsync FAILED: %*"]
       85 MOVE                             R9 R4
       86 NAMECALL                         R7 R7 K1 ["format"]
       88 CALL                             R7 2 1
       89 MOVE                             R6 R7
       90 CALL                             R5 1 0
       91 LOADB                            R5 0
       92 LOADNIL                          R6
       93 LOADK                            R8 K13 ["Failed to load asset: %*"]
       94 MOVE                             R10 R4
       95 NAMECALL                         R8 R8 K1 ["format"]
       97 CALL                             R8 2 1
       98 MOVE                             R7 R8
       99 RETURN                           R5 3
      100 JUMPIF                           R4 ; [+4]
      101 LOADB                            R5 0
      102 LOADNIL                          R6
      103 LOADK                            R7 K14 ["loadCachedAssetAsync returned nil"]
      104 RETURN                           R5 3
      105 GETUPVAL                         R5 0
      106 LOADK                            R7 K15 ["[AssetInsertTool] loadCachedAssetAsync returned: %* (%*), children=%*"]
      107 GETTABLEKS                       R9 R4 K7 ["Name"]
      109 GETTABLEKS                       R10 R4 K8 ["ClassName"]
      111 NAMECALL                         R12 R4 K9 ["GetChildren"]
      113 CALL                             R12 1 1
      114 LENGTH                           R11 R12
      115 NAMECALL                         R7 R7 K1 ["format"]
      117 CALL                             R7 4 1
      118 MOVE                             R6 R7
      119 CALL                             R5 1 0
      120 LOADB                            R5 1
      121 NEWTABLE                         R6 0 1
      123 MOVE                             R7 R4
      124 SETLIST                          R6 R7 1 [1]
      126 LOADNIL                          R7
      127 RETURN                           R5 3

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
        6 JUMPIF                           R2 ; [+9]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R7 K2 ["Failed to create mesh part: %*"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K3 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
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
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+9]
        8 LOADB                            R5 0
        9 LOADNIL                          R6
       10 LOADK                            R8 K2 ["Failed to create decal: %*"]
       11 MOVE                             R10 R4
       12 NAMECALL                         R8 R8 K3 ["format"]
       14 CALL                             R8 2 1
       15 MOVE                             R7 R8
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
        1 GETIMPORT                        R4 K1 [pcall]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R4 1 2
        6 JUMPIFNOT                        R4 ; [+2]
        7 JUMPIFNOT                        R5 ; [+1]
        8 LOADB                            R3 1
        9 JUMPIFNOT                        R3 ; [+24]
       10 LOADK                            R7 K2 ["rbxassetid://"]
       11 MOVE                             R8 R1
       12 CONCAT                           R6 R7 R8
       13 GETIMPORT                        R7 K1 [pcall]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R6
       18 CAPTURE                          VAL R2
       19 CALL                             R7 1 2
       20 JUMPIF                           R7 ; [+9]
       21 LOADB                            R9 0
       22 LOADNIL                          R10
       23 LOADK                            R12 K3 ["Failed to insert audio asset: %*"]
       24 MOVE                             R14 R8
       25 NAMECALL                         R12 R12 K4 ["format"]
       27 CALL                             R12 2 1
       28 MOVE                             R11 R12
       29 RETURN                           R9 3
       30 LOADB                            R9 1
       31 MOVE                             R10 R8
       32 LOADNIL                          R11
       33 RETURN                           R9 3
       34 GETIMPORT                        R6 K1 [pcall]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CALL                             R6 1 2
       40 JUMPIF                           R6 ; [+9]
       41 LOADB                            R8 0
       42 LOADNIL                          R9
       43 LOADK                            R11 K5 ["Failed to create sound: %*"]
       44 MOVE                             R13 R7
       45 NAMECALL                         R11 R11 K4 ["format"]
       47 CALL                             R11 2 1
       48 MOVE                             R10 R11
       49 RETURN                           R8 3
       50 LOADB                            R8 1
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R7
       54 SETLIST                          R9 R10 1 [1]
       56 LOADNIL                          R10
       57 RETURN                           R8 3

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
        6 JUMPIF                           R2 ; [+9]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R7 K2 ["Failed to create video frame: %*"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K3 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
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
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+9]
        7 LOADB                            R4 0
        8 LOADNIL                          R5
        9 LOADK                            R7 K2 ["Failed to load animation asset: %*"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K3 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
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
       26 LOADK                            R6 K9 ["[AssetInsertTool] === INSERT START === input assetId=%*, assetName=%*, assetType=%*, parentPath=%*"]
       27 MOVE                             R8 R3
       28 GETTABLEKS                       R10 R0 K11 ["assetName"]
       30 ORK                              R9 R10 K10 ["nil"]
       31 GETTABLEKS                       R11 R0 K12 ["assetType"]
       33 ORK                              R10 R11 K10 ["nil"]
       34 GETTABLEKS                       R12 R0 K13 ["parentPath"]
       36 ORK                              R11 R12 K10 ["nil"]
       37 NAMECALL                         R6 R6 K14 ["format"]
       39 CALL                             R6 5 1
       40 MOVE                             R5 R6
       41 CALL                             R4 1 0
       42 FASTCALL1                        TONUMBER R3 ; [+3]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K16 [tonumber]
       46 CALL                             R4 1 1
       47 JUMPIF                           R4 ; [+9]
       48 GETUPVAL                         R5 1
       49 LOADK                            R7 K17 ["Invalid asset ID: %*"]
       50 MOVE                             R9 R3
       51 NAMECALL                         R7 R7 K14 ["format"]
       53 CALL                             R7 2 1
       54 MOVE                             R6 R7
       55 CALL                             R5 1 1
       56 RETURN                           R5 1
       57 LOADNIL                          R5
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 LOADB                            R8 0
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantInsertAssetSandboxScripts"]
       64 JUMPIF                           R9 ; [+38]
       65 GETTABLEKS                       R9 R0 K12 ["assetType"]
       67 JUMPIFNOT                        R9 ; [+35]
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R11 R0 K12 ["assetType"]
       71 GETTABLE                         R9 R10 R11
       72 JUMPIFNOT                        R9 ; [+30]
       73 GETUPVAL                         R9 4
       74 GETTABLEKS                       R10 R0 K12 ["assetType"]
       76 GETTABLE                         R5 R9 R10
       77 GETTABLEKS                       R9 R0 K11 ["assetName"]
       79 ORK                              R6 R9 K19 ["Asset"]
       80 GETTABLEKS                       R9 R0 K12 ["assetType"]
       82 JUMPIFNOTEQKS                    R9 K20 ["Package"] ; [+8]
       84 NEWTABLE                         R9 0 1
       86 LOADK                            R10 K20 ["Package"]
       87 SETLIST                          R9 R10 1 [1]
       89 MOVE                             R7 R9
       90 JUMP                             ; [+1]
       91 LOADNIL                          R7
       92 GETUPVAL                         R9 2
       93 LOADK                            R11 K21 ["[AssetInsertTool] Using caller-provided assetType=%* (typeId=%*), skipping metadata fetch"]
       94 GETTABLEKS                       R13 R0 K12 ["assetType"]
       96 MOVE                             R14 R5
       97 NAMECALL                         R11 R11 K14 ["format"]
       99 CALL                             R11 3 1
      100 MOVE                             R10 R11
      101 CALL                             R9 1 0
      102 JUMP                             ; [+91]
      103 GETTABLEKS                       R9 R0 K12 ["assetType"]
      105 JUMPIFNOT                        R9 ; [+9]
      106 GETUPVAL                         R9 2
      107 LOADK                            R11 K22 ["[AssetInsertTool] Unknown assetType hint \"%*\", falling back to metadata fetch"]
      108 GETTABLEKS                       R13 R0 K12 ["assetType"]
      110 NAMECALL                         R11 R11 K14 ["format"]
      112 CALL                             R11 2 1
      113 MOVE                             R10 R11
      114 CALL                             R9 1 0
      115 GETUPVAL                         R9 5
      116 MOVE                             R10 R2
      117 MOVE                             R11 R3
      118 CALL                             R9 2 2
      119 JUMPIF                           R9 ; [+4]
      120 GETUPVAL                         R11 1
      121 MOVE                             R12 R10
      122 CALL                             R11 1 1
      123 RETURN                           R11 1
      124 GETTABLEKS                       R11 R10 K23 ["AssetId"]
      126 JUMPIFNOT                        R11 ; [+45]
      127 GETTABLEKS                       R12 R10 K23 ["AssetId"]
      129 FASTCALL1                        TOSTRING R12 ; [+2]
      130 GETIMPORT                        R11 K25 [tostring]
      132 CALL                             R11 1 1
      133 JUMPIFEQ                         R11 R3 ; [+29]
      135 GETUPVAL                         R12 2
      136 LOADK                            R14 K26 ["[AssetInsertTool] ID RESOLVED: input=%* -> canonical=%*"]
      137 MOVE                             R16 R3
      138 MOVE                             R17 R11
      139 NAMECALL                         R14 R14 K14 ["format"]
      141 CALL                             R14 3 1
      142 MOVE                             R13 R14
      143 CALL                             R12 1 0
      144 MOVE                             R3 R11
      145 FASTCALL1                        TONUMBER R3 ; [+3]
      146 MOVE                             R13 R3
      147 GETIMPORT                        R12 K16 [tonumber]
      149 CALL                             R12 1 1
      150 MOVE                             R4 R12
      151 JUMPIF                           R4 ; [+28]
      152 GETUPVAL                         R12 1
      153 LOADK                            R14 K27 ["Resolved asset ID is not a valid number: "]
      154 FASTCALL1                        TOSTRING R3 ; [+3]
      155 MOVE                             R16 R3
      156 GETIMPORT                        R15 K25 [tostring]
      158 CALL                             R15 1 1
      159 CONCAT                           R13 R14 R15
      160 CALL                             R12 1 1
      161 RETURN                           R12 1
      162 JUMP                             ; [+17]
      163 GETUPVAL                         R12 2
      164 LOADK                            R14 K28 ["[AssetInsertTool] ID unchanged: %* (matches metadata.AssetId)"]
      165 MOVE                             R16 R3
      166 NAMECALL                         R14 R14 K14 ["format"]
      168 CALL                             R14 2 1
      169 MOVE                             R13 R14
      170 CALL                             R12 1 0
      171 JUMP                             ; [+8]
      172 GETUPVAL                         R11 2
      173 LOADK                            R13 K29 ["[AssetInsertTool] WARNING: metadata.AssetId is nil, using original ID: %*"]
      174 MOVE                             R15 R3
      175 NAMECALL                         R13 R13 K14 ["format"]
      177 CALL                             R13 2 1
      178 MOVE                             R12 R13
      179 CALL                             R11 1 0
      180 GETTABLEKS                       R5 R10 K30 ["AssetTypeId"]
      182 GETTABLEKS                       R11 R0 K11 ["assetName"]
      184 JUMPIF                           R11 ; [+4]
      185 GETTABLEKS                       R11 R10 K31 ["Name"]
      187 JUMPIF                           R11 ; [+1]
      188 LOADK                            R11 K19 ["Asset"]
      189 MOVE                             R6 R11
      190 GETTABLEKS                       R7 R10 K32 ["AssetSubTypes"]
      192 GETTABLEKS                       R8 R10 K33 ["ShouldSandbox"]
      194 GETUPVAL                         R9 2
      195 LOADK                            R11 K34 ["[AssetInsertTool] Resolved: assetId=%*, assetIdNum=%*, assetTypeId=%*, assetName=%*, isSubTypes=%*"]
      196 MOVE                             R13 R3
      197 MOVE                             R14 R4
      198 MOVE                             R15 R5
      199 MOVE                             R16 R6
      200 JUMPIFNOT                        R7 ; [+2]
      201 LENGTH                           R17 R7
      202 JUMPIF                           R17 ; [+1]
      203 LOADN                            R17 0
      204 NAMECALL                         R11 R11 K14 ["format"]
      206 CALL                             R11 6 1
      207 MOVE                             R10 R11
      208 CALL                             R9 1 0
      209 GETUPVAL                         R9 6
      210 GETTABLEKS                       R9 R9 K35 ["isPackageAsset"]
      212 MOVE                             R10 R5
      213 MOVE                             R11 R7
      214 CALL                             R9 2 1
      215 GETUPVAL                         R11 7
      216 GETTABLE                         R10 R11 R5
      217 JUMPIF                           R10 ; [+9]
      218 GETUPVAL                         R11 1
      219 LOADK                            R13 K36 ["Unsupported asset type ID: %*"]
      220 MOVE                             R15 R5
      221 NAMECALL                         R13 R13 K14 ["format"]
      223 CALL                             R13 2 1
      224 MOVE                             R12 R13
      225 CALL                             R11 1 1
      226 RETURN                           R11 1
      227 GETTABLEKS                       R11 R10 K31 ["Name"]
      229 GETUPVAL                         R12 2
      230 LOADK                            R14 K37 ["[AssetInsertTool] Asset type: %*, isPackage=%*"]
      231 MOVE                             R16 R11
      232 MOVE                             R17 R9
      233 NAMECALL                         R14 R14 K14 ["format"]
      235 CALL                             R14 3 1
      236 MOVE                             R13 R14
      237 CALL                             R12 1 0
      238 LOADNIL                          R12
      239 NEWTABLE                         R13 0 0
      241 GETTABLEKS                       R14 R1 K0 ["initArgs"]
      243 GETTABLEKS                       R14 R14 K1 ["environment"]
      245 GETTABLEKS                       R14 R14 K38 ["assetAccessController"]
      247 GETUPVAL                         R15 3
      248 GETTABLEKS                       R15 R15 K39 ["FFlagAssistantDisableAssetInsertAutoGrantPermissions"]
      250 JUMPIF                           R15 ; [+30]
      251 JUMPIFNOT                        R14 ; [+29]
      252 GETIMPORT                        R15 K41 [game]
      254 GETTABLEKS                       R15 R15 K42 ["GameId"]
      256 JUMPIFEQKN                       R15 K43 [0] ; [+24]
      258 GETUPVAL                         R15 2
      259 LOADK                            R17 K44 ["[AssetInsertTool] Grant permission to id: %*, type: %*"]
      260 MOVE                             R19 R4
      261 MOVE                             R20 R11
      262 NAMECALL                         R17 R17 K14 ["format"]
      264 CALL                             R17 3 1
      265 MOVE                             R16 R17
      266 CALL                             R15 1 0
      267 GETUPVAL                         R15 8
      268 NEWTABLE                         R16 0 1
      270 MOVE                             R17 R4
      271 SETLIST                          R16 R17 1 [1]
      273 NEWTABLE                         R17 0 1
      275 MOVE                             R18 R10
      276 SETLIST                          R17 R18 1 [1]
      278 MOVE                             R18 R14
      279 CALL                             R15 3 1
      280 MOVE                             R13 R15
      281 GETIMPORT                        R15 K46 [next]
      283 MOVE                             R16 R13
      284 CALL                             R15 1 1
      285 JUMPIFNOT                        R15 ; [+23]
      286 MOVE                             R15 R13
      287 LOADNIL                          R16
      288 LOADNIL                          R17
      289 FORGPREP                         R15
      290 LOADK                            R21 K47 ["Failed to grant permissions for asset %*. See Output for details.\n"]
      291 MOVE                             R23 R18
      292 NAMECALL                         R21 R21 K14 ["format"]
      294 CALL                             R21 2 1
      295 MOVE                             R20 R21
      296 ORK                              R21 R12 K48 [""]
      297 MOVE                             R22 R20
      298 CONCAT                           R12 R21 R22
      299 FORGLOOP                         R15 2 ; [-10]
      301 GETUPVAL                         R15 2
      302 LOADK                            R17 K49 ["[AssetInsertTool] %*"]
      303 MOVE                             R19 R12
      304 NAMECALL                         R17 R17 K14 ["format"]
      306 CALL                             R17 2 1
      307 MOVE                             R16 R17
      308 CALL                             R15 1 0
      309 GETTABLE                         R15 R13 R4
      310 JUMPIFNOT                        R15 ; [+4]
      311 GETUPVAL                         R15 1
      312 ORK                              R16 R12 K50 ["Failed to grant required permissions for asset"]
      313 CALL                             R15 1 1
      314 RETURN                           R15 1
      315 NEWTABLE                         R15 0 0
      317 LOADNIL                          R16
      318 LOADNIL                          R17
      319 GETIMPORT                        R18 K54 [Enum.AssetType.Model]
      321 JUMPIFEQ                         R10 R18 ; [+9]
      323 GETIMPORT                        R18 K56 [Enum.AssetType.MeshPart]
      325 JUMPIFEQ                         R10 R18 ; [+5]
      327 GETIMPORT                        R18 K57 [Enum.AssetType.Package]
      329 JUMPIFNOTEQ                      R10 R18 ; [+14]
      331 LOADNIL                          R18
      332 GETUPVAL                         R19 9
      333 MOVE                             R20 R2
      334 MOVE                             R21 R3
      335 MOVE                             R22 R9
      336 CALL                             R19 3 3
      337 MOVE                             R16 R19
      338 MOVE                             R18 R20
      339 MOVE                             R17 R21
      340 JUMPIFNOT                        R16 ; [+194]
      341 JUMPIFNOT                        R18 ; [+193]
      342 MOVE                             R15 R18
      343 JUMP                             ; [+191]
      344 GETIMPORT                        R18 K59 [Enum.AssetType.Mesh]
      346 JUMPIFNOTEQ                      R10 R18 ; [+35]
      348 LOADNIL                          R18
      349 MOVE                             R22 R4
      350 GETIMPORT                        R23 K61 [pcall]
      352 NEWCLOSURE                       R24 P0
      353 CAPTURE                          VAL R2
      354 CAPTURE                          VAL R22
      355 CALL                             R23 1 2
      356 JUMPIF                           R23 ; [+9]
      357 LOADB                            R19 0
      358 LOADNIL                          R20
      359 LOADK                            R25 K62 ["Failed to create mesh part: %*"]
      360 MOVE                             R27 R24
      361 NAMECALL                         R25 R25 K14 ["format"]
      363 CALL                             R25 2 1
      364 MOVE                             R21 R25
      365 JUMP                             ; [+3]
      366 LOADB                            R19 1
      367 MOVE                             R20 R24
      368 LOADNIL                          R21
      369 MOVE                             R16 R19
      370 MOVE                             R18 R20
      371 MOVE                             R17 R21
      372 JUMPIFNOT                        R16 ; [+162]
      373 JUMPIFNOT                        R18 ; [+161]
      374 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      376 MOVE                             R20 R15
      377 MOVE                             R21 R18
      378 GETIMPORT                        R19 K65 [table.insert]
      380 CALL                             R19 2 0
      381 JUMP                             ; [+153]
      382 GETIMPORT                        R18 K67 [Enum.AssetType.Decal]
      384 JUMPIFEQ                         R10 R18 ; [+5]
      386 GETIMPORT                        R18 K69 [Enum.AssetType.Image]
      388 JUMPIFNOTEQ                      R10 R18 ; [+42]
      390 LOADNIL                          R18
      391 MOVE                             R22 R3
      392 GETIMPORT                        R24 K69 [Enum.AssetType.Image]
      394 JUMPIFEQ                         R10 R24 ; [+2]
      396 LOADB                            R23 0 +1
      397 LOADB                            R23 1
      398 GETIMPORT                        R24 K61 [pcall]
      400 NEWCLOSURE                       R25 P1
      401 CAPTURE                          VAL R23
      402 CAPTURE                          VAL R2
      403 CAPTURE                          VAL R22
      404 CALL                             R24 1 2
      405 JUMPIF                           R24 ; [+9]
      406 LOADB                            R19 0
      407 LOADNIL                          R20
      408 LOADK                            R26 K70 ["Failed to create decal: %*"]
      409 MOVE                             R28 R25
      410 NAMECALL                         R26 R26 K14 ["format"]
      412 CALL                             R26 2 1
      413 MOVE                             R21 R26
      414 JUMP                             ; [+3]
      415 LOADB                            R19 1
      416 MOVE                             R20 R25
      417 LOADNIL                          R21
      418 MOVE                             R16 R19
      419 MOVE                             R18 R20
      420 MOVE                             R17 R21
      421 JUMPIFNOT                        R16 ; [+113]
      422 JUMPIFNOT                        R18 ; [+112]
      423 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      425 MOVE                             R20 R15
      426 MOVE                             R21 R18
      427 GETIMPORT                        R19 K65 [table.insert]
      429 CALL                             R19 2 0
      430 JUMP                             ; [+104]
      431 GETIMPORT                        R18 K72 [Enum.AssetType.Audio]
      433 JUMPIFNOTEQ                      R10 R18 ; [+14]
      435 LOADNIL                          R18
      436 GETUPVAL                         R19 10
      437 MOVE                             R20 R2
      438 MOVE                             R21 R3
      439 MOVE                             R22 R6
      440 CALL                             R19 3 3
      441 MOVE                             R16 R19
      442 MOVE                             R18 R20
      443 MOVE                             R17 R21
      444 JUMPIFNOT                        R16 ; [+90]
      445 JUMPIFNOT                        R18 ; [+89]
      446 MOVE                             R15 R18
      447 JUMP                             ; [+87]
      448 GETIMPORT                        R18 K74 [Enum.AssetType.Video]
      450 JUMPIFNOTEQ                      R10 R18 ; [+35]
      452 LOADNIL                          R18
      453 MOVE                             R22 R3
      454 GETIMPORT                        R23 K61 [pcall]
      456 NEWCLOSURE                       R24 P2
      457 CAPTURE                          VAL R2
      458 CAPTURE                          VAL R22
      459 CALL                             R23 1 2
      460 JUMPIF                           R23 ; [+9]
      461 LOADB                            R19 0
      462 LOADNIL                          R20
      463 LOADK                            R25 K75 ["Failed to create video frame: %*"]
      464 MOVE                             R27 R24
      465 NAMECALL                         R25 R25 K14 ["format"]
      467 CALL                             R25 2 1
      468 MOVE                             R21 R25
      469 JUMP                             ; [+3]
      470 LOADB                            R19 1
      471 MOVE                             R20 R24
      472 LOADNIL                          R21
      473 MOVE                             R16 R19
      474 MOVE                             R18 R20
      475 MOVE                             R17 R21
      476 JUMPIFNOT                        R16 ; [+58]
      477 JUMPIFNOT                        R18 ; [+57]
      478 FASTCALL2                        TABLE_INSERT R15 R18 ; [+5]
      480 MOVE                             R20 R15
      481 MOVE                             R21 R18
      482 GETIMPORT                        R19 K65 [table.insert]
      484 CALL                             R19 2 0
      485 JUMP                             ; [+49]
      486 GETIMPORT                        R18 K77 [Enum.AssetType.Animation]
      488 JUMPIFNOTEQ                      R10 R18 ; [+37]
      490 LOADNIL                          R18
      491 MOVE                             R22 R4
      492 GETIMPORT                        R23 K61 [pcall]
      494 NEWCLOSURE                       R24 P3
      495 CAPTURE                          VAL R2
      496 CAPTURE                          VAL R22
      497 CALL                             R23 1 2
      498 JUMPIF                           R23 ; [+9]
      499 LOADB                            R19 0
      500 LOADNIL                          R20
      501 LOADK                            R25 K78 ["Failed to load animation asset: %*"]
      502 MOVE                             R27 R24
      503 NAMECALL                         R25 R25 K14 ["format"]
      505 CALL                             R25 2 1
      506 MOVE                             R21 R25
      507 JUMP                             ; [+11]
      508 JUMPIFNOT                        R24 ; [+3]
      509 LENGTH                           R25 R24
      510 JUMPIFNOTEQKN                    R25 K43 [0] ; [+5]
      512 LOADB                            R19 0
      513 LOADNIL                          R20
      514 LOADK                            R21 K79 ["GetObjects returned empty result for animation"]
      515 JUMP                             ; [+3]
      516 LOADB                            R19 1
      517 MOVE                             R20 R24
      518 LOADNIL                          R21
      519 MOVE                             R16 R19
      520 MOVE                             R18 R20
      521 MOVE                             R17 R21
      522 JUMPIFNOT                        R16 ; [+12]
      523 JUMPIFNOT                        R18 ; [+11]
      524 MOVE                             R15 R18
      525 JUMP                             ; [+9]
      526 GETUPVAL                         R18 1
      527 LOADK                            R20 K80 ["Unhandled asset type: %*"]
      528 MOVE                             R22 R11
      529 NAMECALL                         R20 R20 K14 ["format"]
      531 CALL                             R20 2 1
      532 MOVE                             R19 R20
      533 CALL                             R18 1 1
      534 RETURN                           R18 1
      535 JUMPIFNOT                        R16 ; [+3]
      536 LENGTH                           R18 R15
      537 JUMPIFNOTEQKN                    R18 K43 [0] ; [+5]
      539 GETUPVAL                         R18 1
      540 ORK                              R19 R17 K81 ["Failed to load asset instances"]
      541 CALL                             R18 1 1
      542 RETURN                           R18 1
      543 GETUPVAL                         R18 2
      544 LOADK                            R20 K82 ["[AssetInsertTool] Sanitizing %* instances..."]
      545 LENGTH                           R22 R15
      546 NAMECALL                         R20 R20 K14 ["format"]
      548 CALL                             R20 2 1
      549 MOVE                             R19 R20
      550 CALL                             R18 1 0
      551 LENGTH                           R20 R15
      552 LOADN                            R18 1
      553 LOADN                            R19 -1
      554 FORNPREP                         R18
      555 GETTABLE                         R21 R15 R20
      556 LOADB                            R22 0
      557 GETUPVAL                         R23 2
      558 LOADK                            R25 K83 ["[AssetInsertTool] Sanitizing [%*]: %* (%*), IsA Model=%*, IsA MeshPart=%*"]
      559 MOVE                             R27 R20
      560 GETTABLEKS                       R28 R21 K31 ["Name"]
      562 GETTABLEKS                       R29 R21 K84 ["ClassName"]
      564 LOADK                            R32 K53 ["Model"]
      565 NAMECALL                         R30 R21 K85 ["IsA"]
      567 CALL                             R30 2 1
      568 LOADK                            R33 K55 ["MeshPart"]
      569 NAMECALL                         R31 R21 K85 ["IsA"]
      571 CALL                             R31 2 1
      572 NAMECALL                         R25 R25 K14 ["format"]
      574 CALL                             R25 6 1
      575 MOVE                             R24 R25
      576 CALL                             R23 1 0
      577 GETUPVAL                         R23 11
      578 MOVE                             R24 R21
      579 CALL                             R23 1 2
      580 JUMPIF                           R23 ; [+12]
      581 GETUPVAL                         R25 2
      582 LOADK                            R27 K86 ["[AssetInsertTool] Sanitize FAILED for %*: %*"]
      583 GETTABLEKS                       R29 R21 K84 ["ClassName"]
      585 MOVE                             R30 R24
      586 NAMECALL                         R27 R27 K14 ["format"]
      588 CALL                             R27 3 1
      589 MOVE                             R26 R27
      590 CALL                             R25 1 0
      591 LOADB                            R22 1
      592 JUMP                             ; [+27]
      593 LOADK                            R27 K55 ["MeshPart"]
      594 NAMECALL                         R25 R21 K85 ["IsA"]
      596 CALL                             R25 2 1
      597 JUMPIFNOT                        R25 ; [+22]
      598 NAMECALL                         R28 R21 K87 ["GetChildren"]
      600 CALL                             R28 1 1
      601 LENGTH                           R27 R28
      602 LOADN                            R28 0
      603 JUMPIFNOTLT                      R28 R27 ; [+4]
      605 NAMECALL                         R27 R21 K88 ["ClearAllChildren"]
      607 CALL                             R27 1 0
      608 LOADB                            R25 1
      609 LOADNIL                          R26
      610 JUMPIF                           R25 ; [+9]
      611 GETUPVAL                         R27 2
      612 LOADK                            R29 K89 ["[AssetInsertTool] MeshPart sanitize FAILED: %*"]
      613 MOVE                             R31 R26
      614 NAMECALL                         R29 R29 K14 ["format"]
      616 CALL                             R29 2 1
      617 MOVE                             R28 R29
      618 CALL                             R27 1 0
      619 LOADB                            R22 1
      620 JUMPIFNOT                        R22 ; [+15]
      621 GETUPVAL                         R25 2
      622 LOADK                            R27 K90 ["[AssetInsertTool] REMOVING instance [%*]: %*"]
      623 MOVE                             R29 R20
      624 GETTABLEKS                       R30 R21 K31 ["Name"]
      626 NAMECALL                         R27 R27 K14 ["format"]
      628 CALL                             R27 3 1
      629 MOVE                             R26 R27
      630 CALL                             R25 1 0
      631 GETIMPORT                        R25 K92 [table.remove]
      633 MOVE                             R26 R15
      634 MOVE                             R27 R20
      635 CALL                             R25 2 0
      636 FORNLOOP                         R18
      637 GETUPVAL                         R18 2
      638 LOADK                            R20 K93 ["[AssetInsertTool] After sanitization: %* instances remaining"]
      639 LENGTH                           R22 R15
      640 NAMECALL                         R20 R20 K14 ["format"]
      642 CALL                             R20 2 1
      643 MOVE                             R19 R20
      644 CALL                             R18 1 0
      645 LENGTH                           R18 R15
      646 JUMPIFNOTEQKN                    R18 K43 [0] ; [+5]
      648 GETUPVAL                         R18 1
      649 LOADK                            R19 K94 ["All instances failed sanitization"]
      650 CALL                             R18 1 1
      651 RETURN                           R18 1
      652 GETUPVAL                         R18 2
      653 LOADK                            R20 K95 ["[AssetInsertTool] Post-sanitization: proceeding with %* instances"]
      654 LENGTH                           R22 R15
      655 NAMECALL                         R20 R20 K14 ["format"]
      657 CALL                             R20 2 1
      658 MOVE                             R19 R20
      659 CALL                             R18 1 0
      660 GETUPVAL                         R18 2
      661 LOADK                            R20 K96 ["[AssetInsertTool] Setting SourceAssetId=%* on %* instances"]
      662 MOVE                             R22 R4
      663 LENGTH                           R23 R15
      664 NAMECALL                         R20 R20 K14 ["format"]
      666 CALL                             R20 3 1
      667 MOVE                             R19 R20
      668 CALL                             R18 1 0
      669 MOVE                             R18 R15
      670 LOADNIL                          R19
      671 LOADNIL                          R20
      672 FORGPREP                         R18
      673 GETTABLEKS                       R23 R2 K97 ["assignSourceAssetId"]
      675 MOVE                             R24 R4
      676 MOVE                             R25 R22
      677 CALL                             R23 2 0
      678 FORGLOOP                         R18 2 ; [-6]
      680 GETUPVAL                         R18 12
      681 LOADB                            R20 0
      682 NAMECALL                         R18 R18 K98 ["GenerateGUID"]
      684 CALL                             R18 2 1
      685 GETUPVAL                         R20 3
      686 GETTABLEKS                       R20 R20 K99 ["FFlagAssistantUseNewTags"]
      688 JUMPIFNOT                        R20 ; [+7]
      689 GETUPVAL                         R19 13
      690 GETTABLEKS                       R19 R19 K100 ["getUniqueTag"]
      692 LOADK                            R20 K101 ["Insert"]
      693 MOVE                             R21 R18
      694 CALL                             R19 2 1
      695 JUMP                             ; [+3]
      696 LOADK                            R20 K102 ["Assistant:"]
      697 MOVE                             R21 R18
      698 CONCAT                           R19 R20 R21
      699 GETUPVAL                         R20 12
      700 LOADB                            R22 0
      701 NAMECALL                         R20 R20 K98 ["GenerateGUID"]
      703 CALL                             R20 2 1
      704 GETUPVAL                         R21 2
      705 LOADK                            R23 K103 ["[AssetInsertTool] Generated insertGuid=%*, tag=%*"]
      706 MOVE                             R25 R18
      707 MOVE                             R26 R19
      708 NAMECALL                         R23 R23 K14 ["format"]
      710 CALL                             R23 3 1
      711 MOVE                             R22 R23
      712 CALL                             R21 1 0
      713 GETUPVAL                         R21 14
      714 GETTABLEKS                       R22 R0 K13 ["parentPath"]
      716 CALL                             R21 1 2
      717 GETUPVAL                         R23 2
      718 LOADK                            R25 K104 ["[AssetInsertTool] Resolved parent: %*, warning=%*"]
      719 NAMECALL                         R27 R21 K105 ["GetFullName"]
      721 CALL                             R27 1 1
      722 ORK                              R28 R22 K106 ["none"]
      723 NAMECALL                         R25 R25 K14 ["format"]
      725 CALL                             R25 3 1
      726 MOVE                             R24 R25
      727 CALL                             R23 1 0
      728 GETTABLEN                        R23 R15 1
      729 GETTABLEKS                       R23 R23 K84 ["ClassName"]
      731 GETTABLEKS                       R24 R1 K0 ["initArgs"]
      733 GETTABLEKS                       R24 R24 K1 ["environment"]
      735 GETTABLEKS                       R25 R24 K107 ["startRecording"]
      737 MOVE                             R26 R20
      738 CALL                             R25 1 0
      739 NEWTABLE                         R25 0 0
      741 MOVE                             R26 R15
      742 LOADNIL                          R27
      743 LOADNIL                          R28
      744 FORGPREP                         R26
      745 SETTABLEKS                       R6 R30 K31 ["Name"]
      747 MOVE                             R33 R19
      748 NAMECALL                         R31 R30 K108 ["AddTag"]
      750 CALL                             R31 2 0
      751 LOADK                            R33 K109 ["PVInstance"]
      752 NAMECALL                         R31 R30 K85 ["IsA"]
      754 CALL                             R31 2 1
      755 JUMPIFNOT                        R31 ; [+6]
      756 GETUPVAL                         R31 15
      757 GETTABLEKS                       R31 R31 K110 ["setPositionOnGround"]
      759 MOVE                             R32 R30
      760 LOADB                            R33 1
      761 CALL                             R31 2 0
      762 SETTABLEKS                       R21 R30 K111 ["Parent"]
      764 GETUPVAL                         R31 2
      765 LOADK                            R33 K112 ["[AssetInsertTool] Inserted: %* (%*) -> %*"]
      766 GETTABLEKS                       R35 R30 K31 ["Name"]
      768 GETTABLEKS                       R36 R30 K84 ["ClassName"]
      770 GETUPVAL                         R37 16
      771 MOVE                             R38 R30
      772 CALL                             R37 1 1
      773 NAMECALL                         R33 R33 K14 ["format"]
      775 CALL                             R33 4 1
      776 MOVE                             R32 R33
      777 CALL                             R31 1 0
      778 DUPTABLE                         R33 K116 [{"name", "className", "fullPath"}]
      779 GETTABLEKS                       R34 R30 K31 ["Name"]
      781 SETTABLEKS                       R34 R33 K113 ["name"]
      783 GETTABLEKS                       R34 R30 K84 ["ClassName"]
      785 SETTABLEKS                       R34 R33 K114 ["className"]
      787 GETUPVAL                         R34 16
      788 MOVE                             R35 R30
      789 CALL                             R34 1 1
      790 SETTABLEKS                       R34 R33 K115 ["fullPath"]
      792 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      794 MOVE                             R32 R25
      795 GETIMPORT                        R31 K65 [table.insert]
      797 CALL                             R31 2 0
      798 FORGLOOP                         R26 2 ; [-54]
      800 GETTABLEKS                       R26 R24 K117 ["endRecording"]
      802 MOVE                             R27 R20
      803 CALL                             R26 1 0
      804 LOADB                            R26 0
      805 GETUPVAL                         R27 3
      806 GETTABLEKS                       R27 R27 K18 ["FFlagAssistantInsertAssetSandboxScripts"]
      808 GETUPVAL                         R30 17
      809 GETTABLE                         R29 R30 R5
      810 JUMPIFEQKB                       R29 TRUE ; [+2]
      812 LOADB                            R28 0 +1
      813 LOADB                            R28 1
      814 GETUPVAL                         R29 2
      815 LOADK                            R31 K118 ["[AssetInsertTool] Sandbox gate: flag=%*, typeId=%* sandboxable=%*, shouldSandbox(metadata)=%*, capabilitiesHandler=%*, instances=%*"]
      816 FASTCALL1                        TOSTRING R27 ; [+3]
      817 MOVE                             R34 R27
      818 GETIMPORT                        R33 K25 [tostring]
      820 CALL                             R33 1 1
      821 MOVE                             R34 R5
      822 FASTCALL1                        TOSTRING R28 ; [+3]
      823 MOVE                             R36 R28
      824 GETIMPORT                        R35 K25 [tostring]
      826 CALL                             R35 1 1
      827 FASTCALL1                        TOSTRING R8 ; [+3]
      828 MOVE                             R37 R8
      829 GETIMPORT                        R36 K25 [tostring]
      831 CALL                             R36 1 1
      832 GETTABLEKS                       R39 R24 K119 ["capabilitiesHandler"]
      834 JUMPIFNOTEQKNIL                  R39 ; [+2]
      836 LOADB                            R38 0 +1
      837 LOADB                            R38 1
      838 FASTCALL1                        TOSTRING R38 ; [+2]
      839 GETIMPORT                        R37 K25 [tostring]
      841 CALL                             R37 1 1
      842 LENGTH                           R38 R15
      843 NAMECALL                         R31 R31 K14 ["format"]
      845 CALL                             R31 7 1
      846 MOVE                             R30 R31
      847 CALL                             R29 1 0
      848 JUMPIFNOT                        R27 ; [+24]
      849 JUMPIFNOT                        R28 ; [+23]
      850 JUMPIFNOT                        R8 ; [+22]
      851 GETUPVAL                         R29 18
      852 GETTABLEKS                       R29 R29 K120 ["applySandboxIfNeeded"]
      854 MOVE                             R30 R15
      855 GETTABLEKS                       R31 R24 K119 ["capabilitiesHandler"]
      857 GETUPVAL                         R32 2
      858 CALL                             R29 3 1
      859 MOVE                             R26 R29
      860 GETUPVAL                         R29 2
      861 LOADK                            R31 K121 ["[AssetInsertTool] Sandbox applied=%*"]
      862 FASTCALL1                        TOSTRING R26 ; [+3]
      863 MOVE                             R34 R26
      864 GETIMPORT                        R33 K25 [tostring]
      866 CALL                             R33 1 1
      867 NAMECALL                         R31 R31 K14 ["format"]
      869 CALL                             R31 2 1
      870 MOVE                             R30 R31
      871 CALL                             R29 1 0
      872 JUMP                             ; [+3]
      873 GETUPVAL                         R29 2
      874 LOADK                            R30 K122 ["[AssetInsertTool] Sandbox skipped — one or more gate conditions false (see flag/typeId/shouldSandbox above)"]
      875 CALL                             R29 1 0
      876 GETUPVAL                         R29 2
      877 LOADK                            R30 K123 ["[AssetInsertTool] === INSERT COMPLETE ==="]
      878 CALL                             R29 1 0
      879 JUMPIFNOT                        R26 ; [+2]
      880 LOADK                            R29 K124 ["Inserted and set Sandboxed property to true on all scripts with all SecurityCapabilities included except for dangerous ones."]
      881 JUMP                             ; [+1]
      882 LOADNIL                          R29
      883 GETUPVAL                         R30 12
      884 DUPTABLE                         R32 K135 [{["status"] = "success", ["insertGuid"], ["tag"], ["assetId"], ["assetName"], ["assetType"], ["isPackage"], ["insertedInstances"], ["parentWarning"], ["permissionWarning"], ["sandboxed"], ["sandboxNote"]}]
      885 SETTABLEKS                       R18 R32 K127 ["insertGuid"]
      887 SETTABLEKS                       R19 R32 K128 ["tag"]
      889 SETTABLEKS                       R3 R32 K8 ["assetId"]
      891 SETTABLEKS                       R6 R32 K11 ["assetName"]
      893 SETTABLEKS                       R11 R32 K12 ["assetType"]
      895 SETTABLEKS                       R9 R32 K129 ["isPackage"]
      897 SETTABLEKS                       R25 R32 K130 ["insertedInstances"]
      899 SETTABLEKS                       R22 R32 K131 ["parentWarning"]
      901 SETTABLEKS                       R12 R32 K132 ["permissionWarning"]
      903 SETTABLEKS                       R26 R32 K133 ["sandboxed"]
      905 SETTABLEKS                       R29 R32 K134 ["sandboxNote"]
      907 NAMECALL                         R30 R30 K136 ["JSONEncode"]
      909 CALL                             R30 2 1
      910 DUPTABLE                         R31 K139 [{"result", "responseInfo"}]
      911 SETTABLEKS                       R30 R31 K137 ["result"]
      913 DUPTABLE                         R32 K140 [{"tag", "assetName", "insertGuid", "className"}]
      914 SETTABLEKS                       R19 R32 K128 ["tag"]
      916 SETTABLEKS                       R6 R32 K11 ["assetName"]
      918 SETTABLEKS                       R18 R32 K127 ["insertGuid"]
      920 SETTABLEKS                       R23 R32 K114 ["className"]
      922 SETTABLEKS                       R32 R31 K138 ["responseInfo"]
      924 RETURN                           R31 1

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
