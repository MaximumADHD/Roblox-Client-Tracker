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
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 FASTPCALL                        pcall 1 ; [+2]
       31 GETIMPORT                        R4 K13 [pcall]
       33 CALL                             R4 1 2
       34 JUMPIF                           R4 ; [+5]
       35 GETIMPORT                        R6 K15 [warn]
       37 LOADK                            R7 K16 ["Failed to search asset"]
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 JUMPIFNOT                        R4 ; [+5]
       41 JUMPIFNOT                        R5 ; [+4]
       42 DUPTABLE                         R6 K18 [{"AssetId"}]
       43 SETTABLEKS                       R5 R6 K17 ["AssetId"]
       45 RETURN                           R6 1
       46 DUPTABLE                         R6 K31 [{["AssetType"] = "Image", ["AssetName"], ["Description"] = "This asset is uploaded by Roblox Assistant", ["AssetId"] = , ["CreatorId"], ["CreatorType"], ["ContentType"] = "", ["Token"] = "", ["AdditionalParameters"]}]
       47 SETTABLEKS                       R3 R6 K21 ["AssetName"]
       49 SETTABLEKS                       R2 R6 K25 ["CreatorId"]
       51 GETIMPORT                        R7 K35 [Enum.AssetCreatorType.User]
       53 SETTABLEKS                       R7 R6 K26 ["CreatorType"]
       55 DUPTABLE                         R7 K38 [{["PublishAsPackage"] = False}]
       56 SETTABLEKS                       R7 R6 K30 ["AdditionalParameters"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K0 ["tools"]
       61 GETTABLEKS                       R7 R7 K1 ["uploadImage"]
       63 GETTABLEKS                       R7 R7 K39 ["publishAssetAsync"]
       65 GETTABLEKS                       R8 R1 K40 ["data"]
       67 MOVE                             R9 R6
       68 CALL                             R7 2 1
       69 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["imagePaths"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R6
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R7 K2 [pcall]
       13 CALL                             R7 1 2
       14 JUMPIFNOT                        R7 ; [+6]
       15 LOADK                            R10 K3 ["rbxassetid://"]
       16 GETTABLEKS                       R11 R8 K4 ["AssetId"]
       18 CONCAT                           R9 R10 R11
       19 SETTABLE                         R9 R1 R6
       20 JUMP                             ; [+8]
       21 LOADK                            R10 K5 ["Error Upload: "]
       22 FASTCALL1                        TOSTRING R8 ; [+3]
       23 MOVE                             R12 R8
       24 GETIMPORT                        R11 K7 [tostring]
       26 CALL                             R11 1 1
       27 CONCAT                           R9 R10 R11
       28 SETTABLE                         R9 R1 R6
       29 FORGLOOP                         R2 2 ; [-23]
       31 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["toString"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R2 K3 ["addText"]
       17 CALL                             R2 -1 1
       18 NAMECALL                         R2 R2 K4 ["build"]
       20 CALL                             R2 1 1
       21 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R4
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["invoke"]
       13 MOVE                             R7 R2
       14 LOADK                            R8 K4 ["UploadImageTool.UploadImage"]
       15 CALL                             R6 2 1
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["new"]
       19 CALL                             R7 0 1
       20 NAMECALL                         R8 R2 K6 ["GetIdentity"]
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K7 ["Identity"]
       26 GETTABLEKS                       R9 R9 K8 ["Standalone"]
       28 JUMPIFEQ                         R8 R9 ; [+9]
       30 NEWCLOSURE                       R12 P2
       31 CAPTURE                          VAL R5
       32 NAMECALL                         R10 R6 K9 ["Connect"]
       34 CALL                             R10 2 -1
       35 NAMECALL                         R8 R7 K10 ["Add"]
       37 CALL                             R8 -1 0
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R7
       40 NAMECALL                         R8 R3 K11 ["Once"]
       42 CALL                             R8 2 0
       43 NEWCLOSURE                       R8 P4
       44 CAPTURE                          VAL R6
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R9 R9 K12 ["define"]
       51 CALL                             R9 0 1
       52 GETUPVAL                         R11 6
       53 GETTABLEKS                       R11 R11 K13 ["UploadImage"]
       55 NAMECALL                         R9 R9 K14 ["setName"]
       57 CALL                             R9 2 1
       58 LOADK                            R11 K15 ["Upload a batch of images from http server to Roblox Asset Server, returning imagePath to assetId map, such as {\"http://localhost/image.png\" : \"rbxassetid://12345678\", \"https://www.figma.com/api/mcp/asset/6dcff81e-b394-4640-b3b1-123456789\" : \"rbxassetid://12345679\"}."]
       59 NAMECALL                         R9 R9 K16 ["setDescription"]
       61 CALL                             R9 2 1
       62 LOADK                            R11 K17 ["imagePaths"]
       63 DUPTABLE                         R12 K23 [{["type"] = "array", ["description"] = "An array of image paths to be uploaded.", ["items"]}]
       64 DUPTABLE                         R13 K25 [{["type"] = "string"}]
       65 SETTABLEKS                       R13 R12 K22 ["items"]
       67 NAMECALL                         R9 R9 K26 ["addArgument"]
       69 CALL                             R9 3 1
       70 LOADK                            R11 K27 ["Upload Image"]
       71 NAMECALL                         R9 R9 K28 ["setTitle"]
       73 CALL                             R9 2 1
       74 DUPTABLE                         R11 K36 [{["title"] = "Upload Image", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       75 NAMECALL                         R9 R9 K37 ["setAnnotations"]
       77 CALL                             R9 2 1
       78 MOVE                             R11 R8
       79 NAMECALL                         R9 R9 K38 ["setHandler"]
       81 CALL                             R9 2 1
       82 NAMECALL                         R9 R9 K39 ["build"]
       84 CALL                             R9 1 1
       85 DUPTABLE                         R10 K43 [{"toolCallOptions", "definition", "getPreExecuteWarning"}]
       86 DUPTABLE                         R11 K46 [{["timeout"] = 200000000}]
       87 SETTABLEKS                       R11 R10 K40 ["toolCallOptions"]
       89 SETTABLEKS                       R9 R10 K41 ["definition"]
       91 DUPCLOSURE                       R11 K47 [PROTO_7]
       92 SETTABLEKS                       R11 R10 K42 ["getPreExecuteWarning"]
       94 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Tools"]
       28 GETTABLEKS                       R6 R6 K11 ["ToolTypes"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["ToolUtils"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["Remote"]
       40 GETTABLEKS                       R8 R4 K12 ["Util"]
       42 GETTABLEKS                       R8 R8 K15 ["ToolBuilder"]
       44 GETTABLEKS                       R9 R4 K12 ["Util"]
       46 GETTABLEKS                       R9 R9 K16 ["ToolResult"]
       48 GETTABLEKS                       R10 R5 K17 ["ToolNames"]
       50 DUPCLOSURE                       R11 K18 [PROTO_8]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R10
       58 RETURN                           R11 1
