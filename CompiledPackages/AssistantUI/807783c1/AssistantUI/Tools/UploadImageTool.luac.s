PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["uploadImage"]
        5 GETTABLEKS                       R0 R0 K2 ["searchAssetAsync"]
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K3 ["Image"]
        9 GETUPVAL                         R3 2
       10 LOADN                            R4 1
       11 CALL                             R0 4 1
       12 GETTABLEKS                       R2 R0 K4 ["items"]
       14 LENGTH                           R1 R2
       15 LOADN                            R2 0
       16 JUMPIFNOTLT                      R2 R1 ; [+11]
       18 GETTABLEKS                       R2 R0 K4 ["items"]
       20 GETTABLEN                        R1 R2 1
       21 GETTABLEKS                       R4 R1 K7 ["assetItem"]
       23 GETTABLEKS                       R3 R4 K6 ["asset"]
       25 GETTABLEKS                       R2 R3 K5 ["assetId"]
       27 RETURN                           R2 1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["uploadImage"]
        5 GETTABLEKS                       R1 R1 K2 ["loadImageAsync"]
        7 MOVE                             R2 R0
        8 DUPTABLE                         R3 K4 [{"maxSize"}]
        9 GETIMPORT                        R4 K7 [Vector2.new]
       11 LOADN                            R5 128
       12 LOADN                            R6 128
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K3 ["maxSize"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K8 ["getUserId"]
       20 CALL                             R2 0 1
       21 LOADK                            R4 K9 ["Assistant_"]
       22 GETTABLEKS                       R5 R1 K10 ["md5"]
       24 LOADK                            R6 K11 [".png"]
       25 CONCAT                           R3 R4 R6
       26 GETIMPORT                        R4 K13 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CALL                             R4 1 2
       33 JUMPIF                           R4 ; [+5]
       34 GETIMPORT                        R6 K15 [warn]
       36 LOADK                            R7 K16 ["Failed to search asset"]
       37 MOVE                             R8 R5
       38 CALL                             R6 2 0
       39 JUMPIFNOT                        R4 ; [+5]
       40 JUMPIFNOT                        R5 ; [+4]
       41 DUPTABLE                         R6 K18 [{"AssetId"}]
       42 SETTABLEKS                       R5 R6 K17 ["AssetId"]
       44 RETURN                           R6 1
       45 DUPTABLE                         R6 K27 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
       46 LOADK                            R7 K28 ["Image"]
       47 SETTABLEKS                       R7 R6 K19 ["AssetType"]
       49 SETTABLEKS                       R3 R6 K20 ["AssetName"]
       51 LOADK                            R7 K29 ["This asset is uploaded by Roblox Assistant"]
       52 SETTABLEKS                       R7 R6 K21 ["Description"]
       54 LOADNIL                          R7
       55 SETTABLEKS                       R7 R6 K17 ["AssetId"]
       57 SETTABLEKS                       R2 R6 K22 ["CreatorId"]
       59 GETIMPORT                        R7 K33 [Enum.AssetCreatorType.User]
       61 SETTABLEKS                       R7 R6 K23 ["CreatorType"]
       63 LOADK                            R7 K34 [""]
       64 SETTABLEKS                       R7 R6 K24 ["ContentType"]
       66 LOADK                            R7 K34 [""]
       67 SETTABLEKS                       R7 R6 K25 ["Token"]
       69 DUPTABLE                         R7 K36 [{"PublishAsPackage"}]
       70 LOADB                            R8 0
       71 SETTABLEKS                       R8 R7 K35 ["PublishAsPackage"]
       73 SETTABLEKS                       R7 R6 K26 ["AdditionalParameters"]
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K0 ["tools"]
       78 GETTABLEKS                       R7 R7 K1 ["uploadImage"]
       80 GETTABLEKS                       R7 R7 K37 ["publishAssetAsync"]
       82 GETTABLEKS                       R8 R1 K38 ["data"]
       84 MOVE                             R9 R6
       85 CALL                             R7 2 1
       86 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["imagePaths"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETIMPORT                        R8 K2 [pcall]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R7
       12 CALL                             R8 1 2
       13 JUMPIFNOT                        R8 ; [+6]
       14 LOADK                            R11 K3 ["rbxassetid://"]
       15 GETTABLEKS                       R12 R9 K4 ["AssetId"]
       17 CONCAT                           R10 R11 R12
       18 SETTABLE                         R10 R2 R7
       19 JUMP                             ; [+8]
       20 LOADK                            R11 K5 ["Error Upload: "]
       21 FASTCALL1                        TOSTRING R9 ; [+3]
       22 MOVE                             R13 R9
       23 GETIMPORT                        R12 K7 [tostring]
       25 CALL                             R12 1 1
       26 CONCAT                           R10 R11 R12
       27 SETTABLE                         R10 R2 R7
       28 FORGLOOP                         R3 2 ; [-22]
       30 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K0 ["toString"]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R2 K1 ["addText"]
       13 CALL                             R2 -1 1
       14 NAMECALL                         R2 R2 K2 ["build"]
       16 CALL                             R2 1 1
       17 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["UploadImage"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 GETTABLEKS                       R3 R0 K1 ["networking"]
        6 LOADK                            R6 K2 ["UploadImageTool_UploadImage"]
        7 NEWCLOSURE                       R7 P1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R4 R3 K3 ["OnHostInvokeAsync"]
       11 CALL                             R4 3 1
       12 NEWCLOSURE                       R5 P2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["define"]
       19 CALL                             R6 0 1
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K5 ["UploadImage"]
       23 NAMECALL                         R6 R6 K6 ["setName"]
       25 CALL                             R6 2 1
       26 LOADK                            R8 K7 ["Upload a batch of images from http server to Roblox Asset Server, returning imagePath to assetId map, such as {\"http://localhost/image.png\" : \"rbxassetid://12345678\", \"https://www.figma.com/api/mcp/asset/6dcff81e-b394-4640-b3b1-123456789\" : \"rbxassetid://12345679\"}."]
       27 NAMECALL                         R6 R6 K8 ["setDescription"]
       29 CALL                             R6 2 1
       30 LOADK                            R8 K9 ["imagePaths"]
       31 DUPTABLE                         R9 K13 [{"type", "description", "items"}]
       32 LOADK                            R10 K14 ["array"]
       33 SETTABLEKS                       R10 R9 K10 ["type"]
       35 LOADK                            R10 K15 ["An array of image paths to be uploaded."]
       36 SETTABLEKS                       R10 R9 K11 ["description"]
       38 DUPTABLE                         R10 K16 [{"type"}]
       39 LOADK                            R11 K17 ["string"]
       40 SETTABLEKS                       R11 R10 K10 ["type"]
       42 SETTABLEKS                       R10 R9 K12 ["items"]
       44 NAMECALL                         R6 R6 K18 ["addArgument"]
       46 CALL                             R6 3 1
       47 DUPTABLE                         R8 K24 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       48 LOADK                            R9 K25 ["Upload Image"]
       49 SETTABLEKS                       R9 R8 K19 ["title"]
       51 LOADB                            R9 0
       52 SETTABLEKS                       R9 R8 K20 ["readOnlyHint"]
       54 LOADB                            R9 0
       55 SETTABLEKS                       R9 R8 K21 ["destructiveHint"]
       57 LOADB                            R9 0
       58 SETTABLEKS                       R9 R8 K22 ["idempotentHint"]
       60 LOADB                            R9 0
       61 SETTABLEKS                       R9 R8 K23 ["openWorldHint"]
       63 NAMECALL                         R6 R6 K26 ["setAnnotations"]
       65 CALL                             R6 2 1
       66 MOVE                             R8 R5
       67 NAMECALL                         R6 R6 K27 ["setHandler"]
       69 CALL                             R6 2 1
       70 NAMECALL                         R6 R6 K28 ["build"]
       72 CALL                             R6 1 1
       73 DUPTABLE                         R7 K33 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       74 DUPTABLE                         R8 K35 [{"timeout"}]
       75 LOADK                            R9 K36 [200000000]
       76 SETTABLEKS                       R9 R8 K34 ["timeout"]
       78 SETTABLEKS                       R8 R7 K29 ["toolCallOptions"]
       80 SETTABLEKS                       R6 R7 K30 ["definition"]
       82 DUPCLOSURE                       R8 K37 [PROTO_5]
       83 SETTABLEKS                       R8 R7 K31 ["getPreExecuteWarning"]
       85 GETUPVAL                         R9 4
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+2]
       88 LOADNIL                          R8
       89 JUMP                             ; [+2]
       90 DUPCLOSURE                       R8 K38 [PROTO_6]
       91 CAPTURE                          UPVAL U5
       92 SETTABLEKS                       R8 R7 K32 ["displayNameFunction"]
       94 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ToolUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Resources"]
       32 GETTABLEKS                       R5 R5 K13 ["Localization"]
       34 GETTABLEKS                       R5 R5 K14 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Flags"]
       41 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantSplitToolsAndWidgets"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K10 ["Util"]
       46 GETTABLEKS                       R6 R6 K17 ["ToolBuilder"]
       48 GETTABLEKS                       R7 R1 K10 ["Util"]
       50 GETTABLEKS                       R7 R7 K18 ["ToolResult"]
       52 GETTABLEKS                       R8 R2 K19 ["ToolNames"]
       54 DUPCLOSURE                       R9 K20 [PROTO_7]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 RETURN                           R9 1
