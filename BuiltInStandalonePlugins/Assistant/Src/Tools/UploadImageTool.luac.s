PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["searchAssetAsync"]
  GETUPVAL R1 1
  LOADK R2 K1 ["Image"]
  GETUPVAL R3 2
  LOADN R4 1
  CALL R0 4 1
  GETTABLEKS R2 R0 K2 ["items"]
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+11]
  GETTABLEKS R2 R0 K2 ["items"]
  GETTABLEN R1 R2 1
  GETTABLEKS R4 R1 K5 ["assetItem"]
  GETTABLEKS R3 R4 K4 ["asset"]
  GETTABLEKS R2 R3 K3 ["assetId"]
  RETURN R2 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["get"]
  CALL R1 0 1
  GETTABLEKS R2 R1 K1 ["loadImageAsync"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"maxSize"}]
  GETIMPORT R5 K6 [Vector2.new]
  LOADN R6 128
  LOADN R7 128
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["maxSize"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K7 ["getUserId"]
  CALL R3 0 1
  LOADK R5 K8 ["Assistant_"]
  GETTABLEKS R6 R2 K9 ["md5"]
  LOADK R7 K10 [".png"]
  CONCAT R4 R5 R7
  GETIMPORT R5 K12 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CALL R5 1 2
  JUMPIF R5 [+5]
  GETIMPORT R7 K14 [warn]
  LOADK R8 K15 ["Failed to search asset"]
  MOVE R9 R6
  CALL R7 2 0
  JUMPIFNOT R5 [+5]
  JUMPIFNOT R6 [+4]
  DUPTABLE R7 K17 [{"AssetId"}]
  SETTABLEKS R6 R7 K16 ["AssetId"]
  RETURN R7 1
  DUPTABLE R7 K26 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
  LOADK R8 K27 ["Image"]
  SETTABLEKS R8 R7 K18 ["AssetType"]
  SETTABLEKS R4 R7 K19 ["AssetName"]
  LOADK R8 K28 ["This asset is uploaded by Roblox Assistant"]
  SETTABLEKS R8 R7 K20 ["Description"]
  LOADNIL R8
  SETTABLEKS R8 R7 K16 ["AssetId"]
  SETTABLEKS R3 R7 K21 ["CreatorId"]
  GETIMPORT R8 K32 [Enum.AssetCreatorType.User]
  SETTABLEKS R8 R7 K22 ["CreatorType"]
  LOADK R8 K33 [""]
  SETTABLEKS R8 R7 K23 ["ContentType"]
  LOADK R8 K33 [""]
  SETTABLEKS R8 R7 K24 ["Token"]
  DUPTABLE R8 K35 [{"PublishAsPackage"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K34 ["PublishAsPackage"]
  SETTABLEKS R8 R7 K25 ["AdditionalParameters"]
  GETTABLEKS R8 R1 K36 ["publishAssetAsync"]
  GETTABLEKS R9 R2 K37 ["data"]
  MOVE R10 R7
  CALL R8 2 1
  RETURN R8 1

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
  DUPTABLE R2 K1 [{"shouldConfirm"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["shouldConfirm"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["UploadImage"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_7:
  DUPCLOSURE R1 K0 [PROTO_1]
  CAPTURE UPVAL U0
  GETTABLEKS R2 R0 K1 ["networking"]
  LOADK R5 K2 ["UploadImageTool_UploadImage"]
  DUPCLOSURE R6 K3 [PROTO_3]
  CAPTURE VAL R1
  NAMECALL R3 R2 K4 ["OnHostInvokeAsync"]
  CALL R3 3 1
  NEWCLOSURE R4 P2
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["define"]
  CALL R5 0 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["UploadImage"]
  NAMECALL R5 R5 K7 ["setName"]
  CALL R5 2 1
  LOADK R7 K8 ["Upload a batch of images from filesystem to Roblox Asset Server, returning filePath to assetId map, such as {\"http://localhost/image.png\" : \"rbxassetid://12345678\"}."]
  NAMECALL R5 R5 K9 ["setDescription"]
  CALL R5 2 1
  LOADK R7 K10 ["imagePaths"]
  DUPTABLE R8 K14 [{"type", "description", "items"}]
  LOADK R9 K15 ["array"]
  SETTABLEKS R9 R8 K11 ["type"]
  LOADK R9 K16 ["An array of image paths to be uploaded."]
  SETTABLEKS R9 R8 K12 ["description"]
  DUPTABLE R9 K17 [{"type"}]
  LOADK R10 K18 ["string"]
  SETTABLEKS R10 R9 K11 ["type"]
  SETTABLEKS R9 R8 K13 ["items"]
  NAMECALL R5 R5 K19 ["addArgument"]
  CALL R5 3 1
  MOVE R7 R4
  NAMECALL R5 R5 K20 ["setHandler"]
  CALL R5 2 1
  NAMECALL R5 R5 K21 ["build"]
  CALL R5 1 1
  DUPTABLE R6 K26 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
  DUPTABLE R7 K28 [{"timeout"}]
  LOADK R8 K29 [200000000]
  SETTABLEKS R8 R7 K27 ["timeout"]
  SETTABLEKS R7 R6 K22 ["toolCallOptions"]
  SETTABLEKS R5 R6 K23 ["definition"]
  DUPCLOSURE R7 K30 [PROTO_5]
  SETTABLEKS R7 R6 K24 ["getPreExecuteWarning"]
  DUPCLOSURE R7 K31 [PROTO_6]
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K25 ["displayNameFunction"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Tools"]
  GETTABLEKS R4 R5 K11 ["ToolTypes"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["Guest"]
  GETTABLEKS R4 R5 K13 ["Environment"]
  GETTABLEKS R6 R1 K14 ["Utils"]
  GETTABLEKS R5 R6 K10 ["Tools"]
  GETTABLEKS R7 R2 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["ToolBuilder"]
  GETTABLEKS R8 R2 K15 ["Util"]
  GETTABLEKS R7 R8 K17 ["ToolResult"]
  GETTABLEKS R10 R1 K18 ["Resources"]
  GETTABLEKS R9 R10 K19 ["Localization"]
  GETTABLEKS R8 R9 K20 ["Translator"]
  GETTABLEKS R9 R3 K21 ["ToolNames"]
  DUPCLOSURE R10 K22 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R10 1
