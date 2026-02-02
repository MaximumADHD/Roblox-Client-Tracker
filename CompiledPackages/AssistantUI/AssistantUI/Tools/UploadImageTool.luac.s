PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["tools"]
  GETTABLEKS R1 R2 K1 ["uploadImage"]
  GETTABLEKS R0 R1 K2 ["searchAssetAsync"]
  GETUPVAL R1 1
  LOADK R2 K3 ["Image"]
  GETUPVAL R3 2
  LOADN R4 1
  CALL R0 4 1
  GETTABLEKS R2 R0 K4 ["items"]
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+11]
  GETTABLEKS R2 R0 K4 ["items"]
  GETTABLEN R1 R2 1
  GETTABLEKS R4 R1 K7 ["assetItem"]
  GETTABLEKS R3 R4 K6 ["asset"]
  GETTABLEKS R2 R3 K5 ["assetId"]
  RETURN R2 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["tools"]
  GETTABLEKS R2 R3 K1 ["uploadImage"]
  GETTABLEKS R1 R2 K2 ["loadImageAsync"]
  MOVE R2 R0
  DUPTABLE R3 K4 [{"maxSize"}]
  GETIMPORT R4 K7 [Vector2.new]
  LOADN R5 128
  LOADN R6 128
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["maxSize"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["getUserId"]
  CALL R2 0 1
  LOADK R4 K9 ["Assistant_"]
  GETTABLEKS R5 R1 K10 ["md5"]
  LOADK R6 K11 [".png"]
  CONCAT R3 R4 R6
  GETIMPORT R4 K13 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CALL R4 1 2
  JUMPIF R4 [+5]
  GETIMPORT R6 K15 [warn]
  LOADK R7 K16 ["Failed to search asset"]
  MOVE R8 R5
  CALL R6 2 0
  JUMPIFNOT R4 [+5]
  JUMPIFNOT R5 [+4]
  DUPTABLE R6 K18 [{"AssetId"}]
  SETTABLEKS R5 R6 K17 ["AssetId"]
  RETURN R6 1
  DUPTABLE R6 K27 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
  LOADK R7 K28 ["Image"]
  SETTABLEKS R7 R6 K19 ["AssetType"]
  SETTABLEKS R3 R6 K20 ["AssetName"]
  LOADK R7 K29 ["This asset is uploaded by Roblox Assistant"]
  SETTABLEKS R7 R6 K21 ["Description"]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["AssetId"]
  SETTABLEKS R2 R6 K22 ["CreatorId"]
  GETIMPORT R7 K33 [Enum.AssetCreatorType.User]
  SETTABLEKS R7 R6 K23 ["CreatorType"]
  LOADK R7 K34 [""]
  SETTABLEKS R7 R6 K24 ["ContentType"]
  LOADK R7 K34 [""]
  SETTABLEKS R7 R6 K25 ["Token"]
  DUPTABLE R7 K36 [{"PublishAsPackage"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K35 ["PublishAsPackage"]
  SETTABLEKS R7 R6 K26 ["AdditionalParameters"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["tools"]
  GETTABLEKS R8 R9 K1 ["uploadImage"]
  GETTABLEKS R7 R8 K37 ["publishAssetAsync"]
  GETTABLEKS R8 R1 K38 ["data"]
  MOVE R9 R6
  CALL R7 2 1
  RETURN R7 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  RETURN R0 1

PROTO_3:
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K0 ["imagePaths"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+6]
  LOADK R11 K3 ["rbxassetid://"]
  GETTABLEKS R12 R9 K4 ["AssetId"]
  CONCAT R10 R11 R12
  SETTABLE R10 R2 R7
  JUMP [+8]
  LOADK R11 K5 ["Error Upload: "]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R13 R9
  GETIMPORT R12 K7 [tostring]
  CALL R12 1 1
  CONCAT R10 R11 R12
  SETTABLE R10 R2 R7
  FORGLOOP R3 2 [-22]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["toString"]
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["addText"]
  CALL R2 -1 1
  NAMECALL R2 R2 K2 ["build"]
  CALL R2 1 1
  RETURN R2 1

PROTO_5:
  DUPTABLE R0 K1 [{"shouldConfirm"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["shouldConfirm"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["UploadImage"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["environment"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  GETTABLEKS R3 R0 K1 ["networking"]
  LOADK R6 K2 ["UploadImageTool_UploadImage"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  NAMECALL R4 R3 K3 ["OnHostInvokeAsync"]
  CALL R4 3 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["define"]
  CALL R6 0 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["UploadImage"]
  NAMECALL R6 R6 K6 ["setName"]
  CALL R6 2 1
  LOADK R8 K7 ["Upload a batch of images from http server to Roblox Asset Server, returning imagePath to assetId map, such as {\"http://localhost/image.png\" : \"rbxassetid://12345678\", \"https://www.figma.com/api/mcp/asset/6dcff81e-b394-4640-b3b1-123456789\" : \"rbxassetid://12345679\"}."]
  NAMECALL R6 R6 K8 ["setDescription"]
  CALL R6 2 1
  LOADK R8 K9 ["imagePaths"]
  DUPTABLE R9 K13 [{"type", "description", "items"}]
  LOADK R10 K14 ["array"]
  SETTABLEKS R10 R9 K10 ["type"]
  LOADK R10 K15 ["An array of image paths to be uploaded."]
  SETTABLEKS R10 R9 K11 ["description"]
  DUPTABLE R10 K16 [{"type"}]
  LOADK R11 K17 ["string"]
  SETTABLEKS R11 R10 K10 ["type"]
  SETTABLEKS R10 R9 K12 ["items"]
  NAMECALL R6 R6 K18 ["addArgument"]
  CALL R6 3 1
  MOVE R8 R5
  NAMECALL R6 R6 K19 ["setHandler"]
  CALL R6 2 1
  NAMECALL R6 R6 K20 ["build"]
  CALL R6 1 1
  DUPTABLE R7 K25 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
  DUPTABLE R8 K27 [{"timeout"}]
  LOADK R9 K28 [200000000]
  SETTABLEKS R9 R8 K26 ["timeout"]
  SETTABLEKS R8 R7 K21 ["toolCallOptions"]
  SETTABLEKS R6 R7 K22 ["definition"]
  DUPCLOSURE R8 K29 [PROTO_5]
  SETTABLEKS R8 R7 K23 ["getPreExecuteWarning"]
  DUPCLOSURE R8 K30 [PROTO_6]
  CAPTURE UPVAL U4
  SETTABLEKS R8 R7 K24 ["displayNameFunction"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Tools"]
  GETTABLEKS R3 R4 K9 ["ToolTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["ToolUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Resources"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  GETTABLEKS R5 R6 K14 ["Translator"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K10 ["Util"]
  GETTABLEKS R5 R6 K15 ["ToolBuilder"]
  GETTABLEKS R7 R1 K10 ["Util"]
  GETTABLEKS R6 R7 K16 ["ToolResult"]
  GETTABLEKS R7 R2 K17 ["ToolNames"]
  DUPCLOSURE R8 K18 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  RETURN R8 1
