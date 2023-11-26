PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["apis"]
  LOADK R8 K2 ["/developer-subscriptions/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/plans"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Params"}]
  SETTABLEKS R2 R8 K4 ["Params"]
  NAMECALL R4 R3 K6 ["get"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["apis"]
  LOADK R6 K2 ["/developer-subscriptions/v1/universes/plans/check-name-and-description"]
  DUPTABLE R7 K5 [{"Params", "CachePolicy"}]
  DUPTABLE R8 K7 [{"name"}]
  SETTABLEKS R1 R8 K6 ["name"]
  SETTABLEKS R8 R7 K3 ["Params"]
  GETIMPORT R8 K11 [Enum.HttpCachePolicy.None]
  SETTABLEKS R8 R7 K4 ["CachePolicy"]
  NAMECALL R3 R2 K12 ["get"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["www"]
  LOADK R6 K2 ["/ide/publish/UploadNewImage"]
  DUPTABLE R7 K7 [{"Params", "Body", "CachePolicy", "Headers"}]
  DUPTABLE R8 K10 [{"name", "description"}]
  LOADK R9 K11 ["DevSubImage"]
  SETTABLEKS R9 R8 K8 ["name"]
  LOADK R9 K12 ["None"]
  SETTABLEKS R9 R8 K9 ["description"]
  SETTABLEKS R8 R7 K3 ["Params"]
  NAMECALL R8 R1 K13 ["GetBinaryContents"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K4 ["Body"]
  GETIMPORT R8 K16 [Enum.HttpCachePolicy.None]
  SETTABLEKS R8 R7 K5 ["CachePolicy"]
  NEWTABLE R8 1 0
  LOADK R9 K17 ["multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
  SETTABLEKS R9 R8 K18 ["Content-Type"]
  SETTABLEKS R8 R7 K6 ["Headers"]
  NAMECALL R3 R2 K19 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R6 R0 K0 ["__networking"]
  LOADK R9 K1 ["apis"]
  LOADK R11 K2 ["/developer-subscriptions/v1/universes/"]
  MOVE R12 R1
  LOADK R13 K3 ["/plans"]
  CONCAT R10 R11 R13
  DUPTABLE R11 K6 [{"Body", "CachePolicy"}]
  DUPTABLE R12 K11 [{"imageAssetId", "name", "prepaidOptions", "priceInRobux"}]
  SETTABLEKS R5 R12 K7 ["imageAssetId"]
  SETTABLEKS R2 R12 K8 ["name"]
  SETTABLEKS R3 R12 K9 ["prepaidOptions"]
  SETTABLEKS R4 R12 K10 ["priceInRobux"]
  SETTABLEKS R12 R11 K4 ["Body"]
  GETIMPORT R12 K15 [Enum.HttpCachePolicy.None]
  SETTABLEKS R12 R11 K5 ["CachePolicy"]
  NAMECALL R7 R6 K16 ["post"]
  CALL R7 4 -1
  RETURN R7 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["apis"]
  LOADK R7 K2 ["/developer-subscriptions/v1/universes/plans/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  DUPTABLE R7 K5 [{"Body", "CachePolicy"}]
  DUPTABLE R8 K7 [{"status"}]
  LOADK R9 K8 ["Closed"]
  SETTABLEKS R9 R8 K6 ["status"]
  SETTABLEKS R8 R7 K3 ["Body"]
  GETIMPORT R8 K12 [Enum.HttpCachePolicy.None]
  SETTABLEKS R8 R7 K4 ["CachePolicy"]
  NAMECALL R3 R2 K13 ["patch"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R8 R0 K0 ["__networking"]
  JUMPIFNOTEQKNIL R7 [+7]
  GETIMPORT R9 K3 [string.match]
  MOVE R10 R4
  LOADK R11 K4 ["%d+"]
  CALL R9 2 1
  MOVE R7 R9
  DUPTABLE R9 K8 [{"imageAssetId", "name", "prepaidOptions"}]
  SETTABLEKS R7 R9 K5 ["imageAssetId"]
  OR R10 R5 R2
  SETTABLEKS R10 R9 K6 ["name"]
  OR R10 R6 R3
  SETTABLEKS R10 R9 K7 ["prepaidOptions"]
  LOADK R12 K9 ["apis"]
  LOADK R14 K10 ["/developer-subscriptions/v1/universes/plans/"]
  MOVE R15 R1
  CONCAT R13 R14 R15
  DUPTABLE R14 K13 [{"Body", "CachePolicy"}]
  SETTABLEKS R9 R14 K11 ["Body"]
  GETIMPORT R15 K17 [Enum.HttpCachePolicy.None]
  SETTABLEKS R15 R14 K12 ["CachePolicy"]
  NAMECALL R10 R8 K18 ["patch"]
  CALL R10 4 -1
  RETURN R10 -1

PROTO_7:
  NEWTABLE R4 0 0
  DUPTABLE R5 K3 [{"status", "sortOrder", "cursor"}]
  JUMPIFNOT R2 [+2]
  LOADK R6 K4 ["Open"]
  JUMP [+1]
  LOADK R6 K5 ["Closed"]
  SETTABLEKS R6 R5 K0 ["status"]
  LOADK R6 K6 ["Asc"]
  SETTABLEKS R6 R5 K1 ["sortOrder"]
  SETTABLEKS R3 R5 K2 ["cursor"]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K7 ["devSubsV1GET"]
  CALL R6 3 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K9 ["responseBody"]
  GETIMPORT R8 K11 [pairs]
  GETTABLEKS R9 R7 K12 ["data"]
  CALL R8 1 3
  FORGPREP_NEXT R8
  DUPTABLE R13 K24 [{"IsNew", "Key", "Id", "Image", "Name", "Price", "CreationDate", "Active", "Subscribers", "PendingEarning", "Prepaid"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K13 ["IsNew"]
  GETTABLEKS R15 R12 K25 ["id"]
  FASTCALL1 TOSTRING R15 [+2]
  GETIMPORT R14 K27 [tostring]
  CALL R14 1 1
  SETTABLEKS R14 R13 K14 ["Key"]
  GETTABLEKS R14 R12 K25 ["id"]
  SETTABLEKS R14 R13 K15 ["Id"]
  LOADK R15 K28 ["rbxassetid://"]
  GETTABLEKS R16 R12 K29 ["imageAssetId"]
  CONCAT R14 R15 R16
  SETTABLEKS R14 R13 K16 ["Image"]
  GETTABLEKS R14 R12 K30 ["name"]
  SETTABLEKS R14 R13 K17 ["Name"]
  GETTABLEKS R14 R12 K31 ["priceInRobux"]
  SETTABLEKS R14 R13 K18 ["Price"]
  GETTABLEKS R14 R12 K32 ["created"]
  SETTABLEKS R14 R13 K19 ["CreationDate"]
  GETTABLEKS R15 R12 K0 ["status"]
  JUMPIFEQKS R15 K4 ["Open"] [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLEKS R14 R13 K20 ["Active"]
  LOADN R14 231
  SETTABLEKS R14 R13 K21 ["Subscribers"]
  LOADN R14 15
  SETTABLEKS R14 R13 K22 ["PendingEarning"]
  LOADN R14 6
  SETTABLEKS R14 R13 K23 ["Prepaid"]
  GETTABLEKS R14 R13 K14 ["Key"]
  SETTABLE R13 R4 R14
  FORGLOOP R8 2 [-55]
  GETTABLEKS R8 R7 K33 ["nextPageCursor"]
  JUMPIFNOTEQKNIL R8 [+2]
  LOADK R8 K34 [""]
  MOVE R9 R4
  MOVE R10 R8
  RETURN R9 2

PROTO_8:
  GETTABLEKS R5 R2 K0 ["Image"]
  NAMECALL R3 R0 K1 ["uploadImagePOST"]
  CALL R3 2 1
  NAMECALL R3 R3 K2 ["await"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K3 ["responseBody"]
  MOVE R7 R1
  GETTABLEKS R8 R2 K4 ["Name"]
  GETTABLEKS R9 R2 K5 ["Prepaid"]
  GETTABLEKS R10 R2 K6 ["Price"]
  MOVE R11 R4
  NAMECALL R5 R0 K7 ["devSubsCreateV1POST"]
  CALL R5 6 1
  NAMECALL R5 R5 K2 ["await"]
  CALL R5 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R2 K0 ["Image"]
  JUMPIFNOT R3 [+30]
  GETTABLEKS R5 R2 K0 ["Image"]
  NAMECALL R3 R0 K1 ["uploadImagePOST"]
  CALL R3 2 1
  NAMECALL R3 R3 K2 ["await"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K3 ["responseBody"]
  GETTABLEKS R7 R1 K4 ["Id"]
  GETTABLEKS R8 R1 K5 ["Name"]
  GETTABLEKS R9 R1 K6 ["Prepaid"]
  GETTABLEKS R10 R1 K0 ["Image"]
  GETTABLEKS R11 R2 K5 ["Name"]
  GETTABLEKS R12 R2 K6 ["Prepaid"]
  MOVE R13 R4
  NAMECALL R5 R0 K7 ["devSubsChangeV1PATCH"]
  CALL R5 8 1
  NAMECALL R5 R5 K2 ["await"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R5 R1 K4 ["Id"]
  GETTABLEKS R6 R1 K5 ["Name"]
  GETTABLEKS R7 R1 K6 ["Prepaid"]
  GETTABLEKS R8 R1 K0 ["Image"]
  GETTABLEKS R9 R2 K5 ["Name"]
  GETTABLEKS R10 R2 K6 ["Prepaid"]
  NAMECALL R3 R0 K7 ["devSubsChangeV1PATCH"]
  CALL R3 7 1
  NAMECALL R3 R3 K2 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R4 R1 K0 ["Id"]
  NAMECALL R2 R0 K1 ["devSubsDiscontinueV1PATCH"]
  CALL R2 2 1
  NAMECALL R2 R2 K2 ["await"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R1 K0 ["Name"]
  JUMPIFEQKNIL R2 [+5]
  GETTABLEKS R2 R1 K0 ["Name"]
  JUMPIFNOTEQKS R2 K1 [""] [+5]
  LOADB R2 1
  LOADNIL R3
  LOADNIL R4
  RETURN R2 3
  GETTABLEKS R4 R1 K0 ["Name"]
  NAMECALL R2 R0 K2 ["moderationV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K3 ["await"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K4 ["responseBody"]
  GETTABLEKS R4 R3 K5 ["isAcceptable"]
  GETTABLEKS R5 R3 K6 ["filteredName"]
  JUMPIFNOTEQKS R5 K1 [""] [+2]
  LOADNIL R5
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["devSubsV1GET"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["moderationV1GET"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["uploadImagePOST"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["devSubsCreateV1POST"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["devSubsDiscontinueV1PATCH"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["devSubsChangeV1PATCH"]
  DUPCLOSURE R1 K15 [PROTO_7]
  SETTABLEKS R1 R0 K16 ["getDevSubs"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["createDevSub"]
  DUPCLOSURE R1 K19 [PROTO_9]
  SETTABLEKS R1 R0 K20 ["changeDevSub"]
  DUPCLOSURE R1 K21 [PROTO_10]
  SETTABLEKS R1 R0 K22 ["discontinueDevSub"]
  DUPCLOSURE R1 K23 [PROTO_11]
  SETTABLEKS R1 R0 K24 ["getFilteredDevSub"]
  RETURN R0 1
