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
       11 LOADN                            R5 1920
       12 LOADN                            R6 1920
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
       45 DUPTABLE                         R6 K31 [{["AssetType"] = "Image", ["AssetName"], ["Description"] = "This asset is uploaded by Roblox Assistant", ["AssetId"] = , ["CreatorId"], ["CreatorType"], ["ContentType"] = "", ["Token"] = "", ["AdditionalParameters"]}]
       46 SETTABLEKS                       R3 R6 K21 ["AssetName"]
       48 SETTABLEKS                       R2 R6 K25 ["CreatorId"]
       50 GETIMPORT                        R7 K35 [Enum.AssetCreatorType.User]
       52 SETTABLEKS                       R7 R6 K26 ["CreatorType"]
       54 DUPTABLE                         R7 K38 [{["PublishAsPackage"] = False}]
       55 SETTABLEKS                       R7 R6 K30 ["AdditionalParameters"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K0 ["tools"]
       60 GETTABLEKS                       R7 R7 K1 ["uploadImage"]
       62 GETTABLEKS                       R7 R7 K39 ["publishAssetAsync"]
       64 GETTABLEKS                       R8 R1 K40 ["data"]
       66 MOVE                             R9 R6
       67 CALL                             R7 2 1
       68 RETURN                           R7 1

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
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

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
       31 DUPTABLE                         R9 K15 [{["type"] = "array", ["description"] = "An array of image paths to be uploaded.", ["items"]}]
       32 DUPTABLE                         R10 K17 [{["type"] = "string"}]
       33 SETTABLEKS                       R10 R9 K14 ["items"]
       35 NAMECALL                         R6 R6 K18 ["addArgument"]
       37 CALL                             R6 3 1
       38 DUPTABLE                         R8 K26 [{["title"] = "Upload Image", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       39 NAMECALL                         R6 R6 K27 ["setAnnotations"]
       41 CALL                             R6 2 1
       42 MOVE                             R8 R5
       43 NAMECALL                         R6 R6 K28 ["setHandler"]
       45 CALL                             R6 2 1
       46 NAMECALL                         R6 R6 K29 ["build"]
       48 CALL                             R6 1 1
       49 DUPTABLE                         R7 K34 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       50 DUPTABLE                         R8 K37 [{["timeout"] = 200000000}]
       51 SETTABLEKS                       R8 R7 K30 ["toolCallOptions"]
       53 SETTABLEKS                       R6 R7 K31 ["definition"]
       55 DUPCLOSURE                       R8 K38 [PROTO_5]
       56 SETTABLEKS                       R8 R7 K32 ["getPreExecuteWarning"]
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R9 R9 K39 ["FFlagAssistantSplitToolsAndWidgets"]
       61 JUMPIFNOT                        R9 ; [+2]
       62 LOADNIL                          R8
       63 JUMP                             ; [+2]
       64 DUPCLOSURE                       R8 K40 [PROTO_6]
       65 CAPTURE                          UPVAL U5
       66 SETTABLEKS                       R8 R7 K33 ["displayNameFunction"]
       68 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Tools"]
       23 GETTABLEKS                       R4 R4 K10 ["ToolTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Util"]
       30 GETTABLEKS                       R5 R5 K12 ["ToolUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Resources"]
       37 GETTABLEKS                       R6 R6 K14 ["Localization"]
       39 GETTABLEKS                       R6 R6 K15 ["Translator"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K11 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["ToolBuilder"]
       46 GETTABLEKS                       R7 R2 K11 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["ToolResult"]
       50 GETTABLEKS                       R8 R3 K18 ["ToolNames"]
       52 DUPCLOSURE                       R9 K19 [PROTO_7]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 RETURN                           R9 1
