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
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["imagePaths"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETIMPORT                        R7 K2 [pcall]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R6
       12 CALL                             R7 1 2
       13 JUMPIFNOT                        R7 ; [+6]
       14 LOADK                            R10 K3 ["rbxassetid://"]
       15 GETTABLEKS                       R11 R8 K4 ["AssetId"]
       17 CONCAT                           R9 R10 R11
       18 SETTABLE                         R9 R1 R6
       19 JUMP                             ; [+8]
       20 LOADK                            R10 K5 ["Error Upload: "]
       21 FASTCALL1                        TOSTRING R8 ; [+3]
       22 MOVE                             R12 R8
       23 GETIMPORT                        R11 K7 [tostring]
       25 CALL                             R11 1 1
       26 CONCAT                           R9 R10 R11
       27 SETTABLE                         R9 R1 R6
       28 FORGLOOP                         R2 2 ; [-22]
       30 RETURN                           R1 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["FOCUSED"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
       12 CALL                             R2 3 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 4
       21 CALL                             R2 0 1
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R4 R4 K3 ["toString"]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 -1
       27 NAMECALL                         R2 R2 K4 ["addText"]
       29 CALL                             R2 -1 1
       30 NAMECALL                         R2 R2 K5 ["build"]
       32 CALL                             R2 1 1
       33 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R4
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K3 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIFNOT                        R8 ; [+35]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K4 ["invoke"]
       19 MOVE                             R9 R2
       20 LOADK                            R10 K5 ["UploadImageTool.UploadImage"]
       21 CALL                             R8 2 1
       22 MOVE                             R7 R8
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K6 ["new"]
       26 CALL                             R8 0 1
       27 NAMECALL                         R9 R2 K7 ["GetIdentity"]
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K8 ["Identity"]
       33 GETTABLEKS                       R10 R10 K9 ["Standalone"]
       35 JUMPIFEQ                         R9 R10 ; [+9]
       37 NEWCLOSURE                       R13 P2
       38 CAPTURE                          VAL R5
       39 NAMECALL                         R11 R7 K10 ["Connect"]
       41 CALL                             R11 2 -1
       42 NAMECALL                         R9 R8 K11 ["Add"]
       44 CALL                             R9 -1 0
       45 NEWCLOSURE                       R11 P3
       46 CAPTURE                          VAL R8
       47 NAMECALL                         R9 R3 K12 ["Once"]
       49 CALL                             R9 2 0
       50 JUMP                             ; [+9]
       51 GETTABLEKS                       R8 R0 K13 ["networkingOLD"]
       53 LOADK                            R11 K14 ["UploadImageTool_UploadImage"]
       54 NEWCLOSURE                       R12 P4
       55 CAPTURE                          VAL R5
       56 NAMECALL                         R9 R8 K15 ["OnHostInvokeAsync"]
       58 CALL                             R9 3 1
       59 MOVE                             R6 R9
       60 NEWCLOSURE                       R8 P5
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          REF R7
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          REF R6
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R9 R9 K16 ["define"]
       70 CALL                             R9 0 1
       71 GETUPVAL                         R11 7
       72 GETTABLEKS                       R11 R11 K17 ["UploadImage"]
       74 NAMECALL                         R9 R9 K18 ["setName"]
       76 CALL                             R9 2 1
       77 LOADK                            R11 K19 ["Upload a batch of images from http server to Roblox Asset Server, returning imagePath to assetId map, such as {\"http://localhost/image.png\" : \"rbxassetid://12345678\", \"https://www.figma.com/api/mcp/asset/6dcff81e-b394-4640-b3b1-123456789\" : \"rbxassetid://12345679\"}."]
       78 NAMECALL                         R9 R9 K20 ["setDescription"]
       80 CALL                             R9 2 1
       81 LOADK                            R11 K21 ["imagePaths"]
       82 DUPTABLE                         R12 K27 [{["type"] = "array", ["description"] = "An array of image paths to be uploaded.", ["items"]}]
       83 DUPTABLE                         R13 K29 [{["type"] = "string"}]
       84 SETTABLEKS                       R13 R12 K26 ["items"]
       86 NAMECALL                         R9 R9 K30 ["addArgument"]
       88 CALL                             R9 3 1
       89 DUPTABLE                         R11 K38 [{["title"] = "Upload Image", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       90 NAMECALL                         R9 R9 K39 ["setAnnotations"]
       92 CALL                             R9 2 1
       93 MOVE                             R11 R8
       94 NAMECALL                         R9 R9 K40 ["setHandler"]
       96 CALL                             R9 2 1
       97 NAMECALL                         R9 R9 K41 ["build"]
       99 CALL                             R9 1 1
      100 DUPTABLE                         R10 K45 [{"toolCallOptions", "definition", "getPreExecuteWarning"}]
      101 DUPTABLE                         R11 K48 [{["timeout"] = 200000000}]
      102 SETTABLEKS                       R11 R10 K42 ["toolCallOptions"]
      104 SETTABLEKS                       R9 R10 K43 ["definition"]
      106 DUPCLOSURE                       R11 K49 [PROTO_8]
      107 SETTABLEKS                       R11 R10 K44 ["getPreExecuteWarning"]
      109 CLOSEUPVALS                      R6
      110 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolUtils"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R2 K15 ["Remote"]
       49 GETTABLEKS                       R8 R4 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["ToolBuilder"]
       53 GETTABLEKS                       R9 R4 K6 ["Util"]
       55 GETTABLEKS                       R9 R9 K17 ["ToolResult"]
       57 GETTABLEKS                       R10 R5 K18 ["ToolNames"]
       59 DUPCLOSURE                       R11 K19 [PROTO_9]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 RETURN                           R11 1
