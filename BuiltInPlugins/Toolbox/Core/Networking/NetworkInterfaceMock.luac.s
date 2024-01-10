PROTO_0:
  DUPTABLE R2 K1 [{"assetCount"}]
  ORK R3 R0 K2 [10]
  SETTABLEKS R3 R2 K0 ["assetCount"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K4 [{"asset", "creator", "thumbnail", "voting"}]
  DUPTABLE R2 K14 [{"id", "name", "duration", "typeId", "isEndorsed", "description", "createdUtc", "updatedUtc", "assetGenres"}]
  SETTABLEKS R0 R2 K5 ["id"]
  LOADK R4 K15 ["Observation Tower Mock"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K6 ["name"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["duration"]
  LOADN R3 10
  SETTABLEKS R3 R2 K8 ["typeId"]
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["isEndorsed"]
  LOADK R3 K16 ["mocked asset item"]
  SETTABLEKS R3 R2 K10 ["description"]
  LOADK R3 K17 ["2018-05-10T02:28:14.227Z"]
  SETTABLEKS R3 R2 K11 ["createdUtc"]
  LOADK R3 K18 ["2018-06-10T02:28:14.24Z"]
  SETTABLEKS R3 R2 K12 ["updatedUtc"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K13 ["assetGenres"]
  SETTABLEKS R2 R1 K0 ["asset"]
  DUPTABLE R2 K20 [{"id", "name", "type"}]
  SETTABLEKS R0 R2 K5 ["id"]
  LOADK R3 K21 ["JUSTforTEST"]
  SETTABLEKS R3 R2 K6 ["name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K19 ["type"]
  SETTABLEKS R2 R1 K1 ["creator"]
  DUPTABLE R2 K27 [{"final", "Url", "retryUrl", "userId", "endpointType"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K22 ["final"]
  LOADK R3 K28 ["rbxasset://textures/StudioToolbox/Animation.png"]
  SETTABLEKS R3 R2 K23 ["Url"]
  LOADNIL R3
  SETTABLEKS R3 R2 K24 ["retryUrl"]
  LOADN R3 0
  SETTABLEKS R3 R2 K25 ["userId"]
  LOADK R3 K29 ["Avatar"]
  SETTABLEKS R3 R2 K26 ["endpointType"]
  SETTABLEKS R2 R1 K2 ["thumbnail"]
  DUPTABLE R2 K37 [{"showVotes", "upVotes", "downVotes", "canVote", "userVote", "hasVoted", "reasonForNotVoteable"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K30 ["showVotes"]
  LOADN R3 154
  SETTABLEKS R3 R2 K31 ["upVotes"]
  LOADN R3 69
  SETTABLEKS R3 R2 K32 ["downVotes"]
  LOADB R3 1
  SETTABLEKS R3 R2 K33 ["canVote"]
  LOADK R3 K38 [""]
  SETTABLEKS R3 R2 K34 ["userVote"]
  LOADB R3 0
  SETTABLEKS R3 R2 K35 ["hasVoted"]
  LOADK R3 K38 [""]
  SETTABLEKS R3 R2 K36 ["reasonForNotVoteable"]
  SETTABLEKS R2 R1 K3 ["voting"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1

PROTO_3:
  DUPTABLE R1 K10 [{"assetId", "assetType", "created", "creatorType", "name", "creatorTargetId", "status", "description", "updated", "priceConfiguration"}]
  SETTABLEKS R0 R1 K0 ["assetId"]
  LOADK R2 K11 ["Models"]
  SETTABLEKS R2 R1 K1 ["assetType"]
  LOADK R2 K12 ["2019-08-09T21:41:51.97Z"]
  SETTABLEKS R2 R1 K2 ["created"]
  LOADK R2 K13 ["User"]
  SETTABLEKS R2 R1 K3 ["creatorType"]
  LOADK R3 K14 ["Dummy"]
  MOVE R4 R0
  CONCAT R2 R3 R4
  SETTABLEKS R2 R1 K4 ["name"]
  LOADK R2 K15 [1010101]
  SETTABLEKS R2 R1 K5 ["creatorTargetId"]
  LOADK R2 K16 ["Free"]
  SETTABLEKS R2 R1 K6 ["status"]
  LOADK R2 K17 ["mocked asset item"]
  SETTABLEKS R2 R1 K7 ["description"]
  LOADK R2 K18 ["2021-05-06T19:56:54.437Z"]
  SETTABLEKS R2 R1 K8 ["updated"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K9 ["priceConfiguration"]
  RETURN R1 1

PROTO_4:
  DUPTABLE R1 K2 [{"id", "itemType"}]
  SETTABLEKS R0 R1 K0 ["id"]
  LOADK R2 K3 ["Asset"]
  SETTABLEKS R2 R1 K1 ["itemType"]
  RETURN R1 1

PROTO_5:
  DUPTABLE R2 K2 [{"id", "itemType"}]
  SETTABLEKS R1 R2 K0 ["id"]
  LOADK R3 K3 ["Asset"]
  SETTABLEKS R3 R2 K1 ["itemType"]
  RETURN R2 1

PROTO_6:
  DUPTABLE R1 K2 [{"assetId", "name"}]
  SETTABLEKS R0 R1 K0 ["assetId"]
  LOADK R2 K3 ["Dummy"]
  SETTABLEKS R2 R1 K1 ["name"]
  RETURN R1 1

PROTO_7:
  GETIMPORT R2 K1 [ipairs]
  GETIMPORT R4 K3 [game]
  GETTABLEKS R3 R4 K4 ["CoreGui"]
  NAMECALL R3 R3 K5 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_INEXT R2
  GETTABLEKS R7 R6 K6 ["Name"]
  JUMPIFNOTEQKS R7 K7 ["CategoryVerification"] [+4]
  NAMECALL R7 R6 K8 ["Destroy"]
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-8]
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K12 ["StringValue"]
  GETIMPORT R5 K3 [game]
  GETTABLEKS R4 R5 K4 ["CoreGui"]
  CALL R2 2 1
  LOADK R3 K7 ["CategoryVerification"]
  SETTABLEKS R3 R2 K6 ["Name"]
  GETIMPORT R3 K11 [Instance.new]
  LOADK R4 K12 ["StringValue"]
  GETIMPORT R7 K3 [game]
  GETTABLEKS R6 R7 K4 ["CoreGui"]
  GETTABLEKS R5 R6 K7 ["CategoryVerification"]
  CALL R3 2 1
  SETTABLEKS R0 R3 K13 ["Value"]
  LOADK R4 K14 ["Category"]
  SETTABLEKS R4 R3 K6 ["Name"]
  JUMPIFNOT R1 [+15]
  GETIMPORT R4 K11 [Instance.new]
  LOADK R5 K12 ["StringValue"]
  GETIMPORT R8 K3 [game]
  GETTABLEKS R7 R8 K4 ["CoreGui"]
  GETTABLEKS R6 R7 K7 ["CategoryVerification"]
  CALL R4 2 1
  SETTABLEKS R1 R4 K13 ["Value"]
  LOADK R5 K15 ["Sort"]
  SETTABLEKS R5 R4 K6 ["Name"]
  RETURN R2 1

PROTO_8:
  DUPTABLE R2 K1 [{"responseBody"}]
  DUPTABLE R3 K3 [{"TotalResults"}]
  GETTABLEKS R4 R0 K4 ["assetCount"]
  SETTABLEKS R4 R3 K2 ["TotalResults"]
  SETTABLEKS R3 R2 K0 ["responseBody"]
  NEWTABLE R3 0 0
  LOADN R6 1
  LOADN R4 10
  LOADN R5 1
  FORNPREP R4
  GETUPVAL R7 0
  MOVE R8 R6
  CALL R7 1 1
  SETTABLE R7 R3 R6
  FORNLOOP R4
  GETTABLEKS R4 R2 K0 ["responseBody"]
  SETTABLEKS R3 R4 K5 ["Results"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["resolve"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

PROTO_9:
  DUPTABLE R3 K1 [{"responseBody"}]
  DUPTABLE R4 K3 [{"TotalResults"}]
  LOADN R5 11
  SETTABLEKS R5 R4 K2 ["TotalResults"]
  SETTABLEKS R4 R3 K0 ["responseBody"]
  NEWTABLE R4 0 11
  DUPTABLE R5 K7 [{"action", "assetId", "status"}]
  LOADK R6 K8 ["Use"]
  SETTABLEKS R6 R5 K4 ["action"]
  LOADN R6 159
  SETTABLEKS R6 R5 K5 ["assetId"]
  LOADK R6 K9 ["HasPermission"]
  SETTABLEKS R6 R5 K6 ["status"]
  DUPTABLE R6 K7 [{"action", "assetId", "status"}]
  LOADK R7 K10 ["Edit"]
  SETTABLEKS R7 R6 K4 ["action"]
  LOADN R7 159
  SETTABLEKS R7 R6 K5 ["assetId"]
  LOADK R7 K9 ["HasPermission"]
  SETTABLEKS R7 R6 K6 ["status"]
  DUPTABLE R7 K7 [{"action", "assetId", "status"}]
  LOADK R8 K11 ["GrantAssetPermissions"]
  SETTABLEKS R8 R7 K4 ["action"]
  LOADN R8 159
  SETTABLEKS R8 R7 K5 ["assetId"]
  LOADK R8 K9 ["HasPermission"]
  SETTABLEKS R8 R7 K6 ["status"]
  DUPTABLE R8 K7 [{"action", "assetId", "status"}]
  LOADK R9 K8 ["Use"]
  SETTABLEKS R9 R8 K4 ["action"]
  LOADN R9 55
  SETTABLEKS R9 R8 K5 ["assetId"]
  LOADK R9 K9 ["HasPermission"]
  SETTABLEKS R9 R8 K6 ["status"]
  DUPTABLE R9 K7 [{"action", "assetId", "status"}]
  LOADK R10 K10 ["Edit"]
  SETTABLEKS R10 R9 K4 ["action"]
  LOADN R10 55
  SETTABLEKS R10 R9 K5 ["assetId"]
  LOADK R10 K9 ["HasPermission"]
  SETTABLEKS R10 R9 K6 ["status"]
  DUPTABLE R10 K7 [{"action", "assetId", "status"}]
  LOADK R11 K11 ["GrantAssetPermissions"]
  SETTABLEKS R11 R10 K4 ["action"]
  LOADN R11 55
  SETTABLEKS R11 R10 K5 ["assetId"]
  LOADK R11 K12 ["NoPermission"]
  SETTABLEKS R11 R10 K6 ["status"]
  DUPTABLE R11 K7 [{"action", "assetId", "status"}]
  LOADK R12 K11 ["GrantAssetPermissions"]
  SETTABLEKS R12 R11 K4 ["action"]
  LOADN R12 86
  SETTABLEKS R12 R11 K5 ["assetId"]
  LOADK R12 K13 ["AssetNotFound"]
  SETTABLEKS R12 R11 K6 ["status"]
  DUPTABLE R12 K7 [{"action", "assetId", "status"}]
  LOADK R13 K10 ["Edit"]
  SETTABLEKS R13 R12 K4 ["action"]
  LOADN R13 37
  SETTABLEKS R13 R12 K5 ["assetId"]
  LOADK R13 K14 ["UnknownError"]
  SETTABLEKS R13 R12 K6 ["status"]
  DUPTABLE R13 K7 [{"action", "assetId", "status"}]
  LOADK R14 K8 ["Use"]
  SETTABLEKS R14 R13 K4 ["action"]
  LOADN R14 172
  SETTABLEKS R14 R13 K5 ["assetId"]
  LOADK R14 K12 ["NoPermission"]
  SETTABLEKS R14 R13 K6 ["status"]
  DUPTABLE R14 K7 [{"action", "assetId", "status"}]
  LOADK R15 K10 ["Edit"]
  SETTABLEKS R15 R14 K4 ["action"]
  LOADN R15 172
  SETTABLEKS R15 R14 K5 ["assetId"]
  LOADK R15 K12 ["NoPermission"]
  SETTABLEKS R15 R14 K6 ["status"]
  DUPTABLE R15 K7 [{"action", "assetId", "status"}]
  LOADK R16 K11 ["GrantAssetPermissions"]
  SETTABLEKS R16 R15 K4 ["action"]
  LOADN R16 172
  SETTABLEKS R16 R15 K5 ["assetId"]
  LOADK R16 K12 ["NoPermission"]
  SETTABLEKS R16 R15 K6 ["status"]
  SETLIST R4 R5 11 [1]
  GETTABLEKS R5 R3 K0 ["responseBody"]
  SETTABLEKS R4 R5 K15 ["results"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K16 ["resolve"]
  MOVE R6 R3
  CALL R5 1 -1
  RETURN R5 -1

PROTO_10:
  GETTABLEKS R2 R1 K0 ["categoryName"]
  GETTABLEKS R3 R1 K1 ["sortType"]
  GETUPVAL R4 0
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  DUPTABLE R4 K3 [{"responseBody"}]
  DUPTABLE R5 K5 [{"totalResults"}]
  GETTABLEKS R6 R0 K6 ["assetCount"]
  SETTABLEKS R6 R5 K4 ["totalResults"]
  SETTABLEKS R5 R4 K2 ["responseBody"]
  NEWTABLE R5 0 0
  LOADN R8 1
  GETTABLEKS R6 R0 K6 ["assetCount"]
  LOADN R7 1
  FORNPREP R6
  DUPTABLE R9 K9 [{"id", "itemType"}]
  SETTABLEKS R8 R9 K7 ["id"]
  LOADK R10 K10 ["Asset"]
  SETTABLEKS R10 R9 K8 ["itemType"]
  SETTABLE R9 R5 R8
  FORNLOOP R6
  GETTABLEKS R6 R4 K2 ["responseBody"]
  SETTABLEKS R5 R6 K11 ["data"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["resolve"]
  MOVE R7 R4
  CALL R6 1 -1
  RETURN R6 -1

PROTO_11:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 0
  GETTABLEKS R9 R7 K2 ["id"]
  CALL R8 1 1
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K5 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [inext] [-12]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["resolve"]
  DUPTABLE R4 K8 [{"responseBody"}]
  DUPTABLE R5 K10 [{"data"}]
  SETTABLEKS R2 R5 K9 ["data"]
  SETTABLEKS R5 R4 K7 ["responseBody"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_12:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 0
  MOVE R9 R7
  CALL R8 1 1
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K4 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [inext] [-11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["resolve"]
  DUPTABLE R4 K7 [{"responseBody"}]
  DUPTABLE R5 K9 [{"data"}]
  SETTABLEKS R2 R5 K8 ["data"]
  SETTABLEKS R5 R4 K6 ["responseBody"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_13:
  DUPTABLE R2 K1 [{"responseBody"}]
  DUPTABLE R3 K4 [{"totalResults", "results"}]
  GETTABLEKS R4 R0 K5 ["assetCount"]
  SETTABLEKS R4 R3 K2 ["totalResults"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["results"]
  SETTABLEKS R3 R2 K0 ["responseBody"]
  NEWTABLE R3 0 0
  LOADN R6 1
  GETTABLEKS R4 R0 K5 ["assetCount"]
  LOADN R5 1
  FORNPREP R4
  DUPTABLE R7 K8 [{"id", "itemType"}]
  SETTABLEKS R6 R7 K6 ["id"]
  LOADK R8 K9 ["Asset"]
  SETTABLEKS R8 R7 K7 ["itemType"]
  SETTABLE R7 R3 R6
  FORNLOOP R4
  GETTABLEKS R5 R2 K0 ["responseBody"]
  GETTABLEKS R4 R5 K3 ["results"]
  SETTABLEKS R3 R4 K10 ["data"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["resolve"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

PROTO_14:
  DUPTABLE R0 K1 [{"responseBody"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["responseBody"]
  NEWTABLE R1 0 0
  LOADN R4 1
  LOADN R2 10
  LOADN R3 1
  FORNPREP R2
  DUPTABLE R5 K4 [{"assetId", "name"}]
  SETTABLEKS R4 R5 K2 ["assetId"]
  LOADK R6 K5 ["Dummy"]
  SETTABLEKS R6 R5 K3 ["name"]
  SETTABLE R5 R1 R4
  FORNLOOP R2
  GETTABLEKS R2 R0 K0 ["responseBody"]
  SETTABLEKS R1 R2 K6 ["data"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["resolve"]
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R2 0
  CALL R2 0 -1
  RETURN R2 -1

PROTO_16:
  GETUPVAL R2 0
  CALL R2 0 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_18:
  NEWTABLE R2 0 0
  LOADN R5 1
  LENGTH R3 R1
  LOADN R4 1
  FORNPREP R3
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 1
  SETTABLE R6 R2 R5
  FORNLOOP R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["resolve"]
  DUPTABLE R4 K2 [{"responseBody"}]
  SETTABLEKS R2 R4 K1 ["responseBody"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_19:
  LOADNIL R3
  GETUPVAL R4 0
  JUMPIFNOT R4 [+12]
  DUPTABLE R4 K1 [{"responseBody"}]
  DUPTABLE R5 K4 [{"id", "name"}]
  LOADK R6 K5 ["1010101"]
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K6 ["testAccount"]
  SETTABLEKS R6 R5 K3 ["name"]
  SETTABLEKS R5 R4 K0 ["responseBody"]
  MOVE R3 R4
  JUMP [+17]
  DUPTABLE R4 K1 [{"responseBody"}]
  DUPTABLE R5 K11 [{"AvatarFinal", "Id", "IsOnline", "Username"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["AvatarFinal"]
  LOADK R6 K5 ["1010101"]
  SETTABLEKS R6 R5 K8 ["Id"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["IsOnline"]
  LOADK R6 K6 ["testAccount"]
  SETTABLEKS R6 R5 K10 ["Username"]
  SETTABLEKS R5 R4 K0 ["responseBody"]
  MOVE R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["resolve"]
  MOVE R5 R3
  CALL R4 1 -1
  RETURN R4 -1

PROTO_20:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["resolve"]
  NEWTABLE R5 0 0
  CALL R4 1 -1
  RETURN R4 -1

PROTO_21:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_22:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["resolve"]
  DUPTABLE R5 K2 [{"responseBody"}]
  DUPTABLE R6 K6 [{"TotalResults", "Results", "nextPageCursor"}]
  MOVE R7 R2
  JUMPIF R7 [+1]
  LENGTH R7 R1
  SETTABLEKS R7 R6 K3 ["TotalResults"]
  SETTABLEKS R1 R6 K4 ["Results"]
  SETTABLEKS R3 R6 K5 ["nextPageCursor"]
  SETTABLEKS R6 R5 K1 ["responseBody"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_23:
  DUPTABLE R3 K1 [{"userVote"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["userVote"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["resolve"]
  MOVE R5 R3
  CALL R4 1 -1
  RETURN R4 -1

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K4 [{"model", "success", "message"}]
  DUPTABLE R4 K11 [{"HasVoted", "CanVote", "upVotes", "UserVote", "DownVote", "ShowVotes"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["HasVoted"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CanVote"]
  LOADN R5 155
  SETTABLEKS R5 R4 K7 ["upVotes"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["UserVote"]
  LOADN R5 69
  SETTABLEKS R5 R4 K9 ["DownVote"]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["ShowVotes"]
  SETTABLEKS R4 R3 K1 ["model"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["success"]
  LOADK R4 K12 ["This is a test message"]
  SETTABLEKS R4 R3 K3 ["message"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_25:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K4 [{"model", "success", "message"}]
  DUPTABLE R4 K11 [{"HasVoted", "CanVote", "upVotes", "UserVote", "DownVote", "ShowVotes"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["HasVoted"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CanVote"]
  LOADN R5 154
  SETTABLEKS R5 R4 K7 ["upVotes"]
  LOADK R5 K12 [""]
  SETTABLEKS R5 R4 K8 ["UserVote"]
  LOADN R5 69
  SETTABLEKS R5 R4 K9 ["DownVote"]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["ShowVotes"]
  SETTABLEKS R4 R3 K1 ["model"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["success"]
  LOADK R4 K13 ["This is a test message"]
  SETTABLEKS R4 R3 K3 ["message"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_26:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_27:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_28:
  LOADB R2 1
  RETURN R2 1

PROTO_29:
  DUPTABLE R1 K1 [{"responseBody"}]
  DUPTABLE R2 K3 [{"data"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["data"]
  SETTABLEKS R2 R1 K0 ["responseBody"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["resolve"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_30:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_31:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  LOADB R4 1
  CALL R3 1 -1
  RETURN R3 -1

PROTO_32:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  DUPTABLE R4 K2 [{"responseBody"}]
  DUPTABLE R5 K5 [{"CanManage", "Success"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["CanManage"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["Success"]
  SETTABLEKS R5 R4 K1 ["responseBody"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_33:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K2 [{"responseBody"}]
  DUPTABLE R4 K4 [{"robux"}]
  LOADK R5 K5 ["16"]
  SETTABLEKS R5 R4 K3 ["robux"]
  SETTABLEKS R4 R3 K1 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_34:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K2 [{"responseBody"}]
  LOADK R4 K3 ["10"]
  SETTABLEKS R4 R3 K1 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_35:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K2 [{"responseBody"}]
  LOADK R4 K3 ["null"]
  SETTABLEKS R4 R3 K1 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_36:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  NEWTABLE R2 0 0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_37:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  NEWTABLE R2 0 0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_38:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_39:
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["resolve"]
  NEWTABLE R9 0 0
  CALL R8 1 -1
  RETURN R8 -1

PROTO_40:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  NEWTABLE R4 0 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_41:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  NEWTABLE R2 0 0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_42:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K2 [{"responseBody"}]
  DUPTABLE R4 K4 [{"data"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K8 [{"imageUrl", "state", "targetId"}]
  LOADK R7 K9 ["fake_image_url"]
  SETTABLEKS R7 R6 K5 ["imageUrl"]
  LOADK R7 K10 ["Completed"]
  SETTABLEKS R7 R6 K6 ["state"]
  LOADN R7 57
  SETTABLEKS R7 R6 K7 ["targetId"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K3 ["data"]
  SETTABLEKS R4 R3 K1 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_43:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  DUPTABLE R2 K2 [{"responseBody"}]
  DUPTABLE R3 K4 [{"isVerifiedCreator"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["isVerifiedCreator"]
  SETTABLEKS R3 R2 K1 ["responseBody"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_44:
  GETIMPORT R2 K3 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R1 R2 [+177]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["resolve"]
  DUPTABLE R3 K6 [{"responseBody"}]
  DUPTABLE R4 K9 [{"topKeywords", "sections"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["topKeywords"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K13 [{"displayName", "name", "subcategory"}]
  LOADK R7 K14 ["Categories"]
  SETTABLEKS R7 R6 K10 ["displayName"]
  LOADK R7 K15 ["categories"]
  SETTABLEKS R7 R6 K11 ["name"]
  DUPTABLE R7 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
  LOADK R8 K24 ["audio"]
  SETTABLEKS R8 R7 K11 ["name"]
  LOADK R8 K2 ["Audio"]
  SETTABLEKS R8 R7 K10 ["displayName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["hidden"]
  LOADK R8 K24 ["audio"]
  SETTABLEKS R8 R7 K17 ["searchKeywords"]
  DUPTABLE R8 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
  LOADK R9 K24 ["audio"]
  SETTABLEKS R9 R8 K25 ["keyword"]
  LOADNIL R9
  SETTABLEKS R9 R8 K26 ["assetSubTypes"]
  LOADNIL R9
  SETTABLEKS R9 R8 K27 ["creatorTargetId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K28 ["creatorType"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["excludeAssetSubTypes"]
  SETTABLEKS R8 R7 K18 ["queryParams"]
  NEWTABLE R8 0 1
  LOADK R9 K24 ["audio"]
  SETTABLEN R9 R8 1
  SETTABLEKS R8 R7 K19 ["path"]
  LOADN R8 0
  SETTABLEKS R8 R7 K20 ["index"]
  NEWTABLE R8 2 0
  DUPTABLE R9 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
  LOADK R10 K31 ["music"]
  SETTABLEKS R10 R9 K11 ["name"]
  LOADK R10 K32 ["Music"]
  SETTABLEKS R10 R9 K10 ["displayName"]
  LOADB R10 0
  SETTABLEKS R10 R9 K16 ["hidden"]
  LOADK R10 K31 ["music"]
  SETTABLEKS R10 R9 K17 ["searchKeywords"]
  DUPTABLE R10 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
  LOADK R11 K31 ["music"]
  SETTABLEKS R11 R10 K25 ["keyword"]
  LOADNIL R11
  SETTABLEKS R11 R10 K26 ["assetSubTypes"]
  LOADNIL R11
  SETTABLEKS R11 R10 K27 ["creatorTargetId"]
  LOADNIL R11
  SETTABLEKS R11 R10 K28 ["creatorType"]
  LOADNIL R11
  SETTABLEKS R11 R10 K29 ["excludeAssetSubTypes"]
  SETTABLEKS R10 R9 K18 ["queryParams"]
  NEWTABLE R10 0 2
  LOADK R11 K24 ["audio"]
  SETTABLEN R11 R10 1
  LOADK R11 K31 ["music"]
  SETTABLEN R11 R10 2
  SETTABLEKS R10 R9 K19 ["path"]
  LOADN R10 0
  SETTABLEKS R10 R9 K20 ["index"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K21 ["children"]
  LOADN R10 0
  SETTABLEKS R10 R9 K22 ["childCount"]
  SETTABLEKS R9 R8 K31 ["music"]
  DUPTABLE R9 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
  LOADK R10 K33 ["sound-effect"]
  SETTABLEKS R10 R9 K11 ["name"]
  LOADK R10 K34 ["Sound Effect"]
  SETTABLEKS R10 R9 K10 ["displayName"]
  LOADB R10 0
  SETTABLEKS R10 R9 K16 ["hidden"]
  LOADK R10 K33 ["sound-effect"]
  SETTABLEKS R10 R9 K17 ["searchKeywords"]
  DUPTABLE R10 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
  LOADK R11 K33 ["sound-effect"]
  SETTABLEKS R11 R10 K25 ["keyword"]
  LOADNIL R11
  SETTABLEKS R11 R10 K26 ["assetSubTypes"]
  LOADNIL R11
  SETTABLEKS R11 R10 K27 ["creatorTargetId"]
  LOADNIL R11
  SETTABLEKS R11 R10 K28 ["creatorType"]
  LOADNIL R11
  SETTABLEKS R11 R10 K29 ["excludeAssetSubTypes"]
  SETTABLEKS R10 R9 K18 ["queryParams"]
  NEWTABLE R10 0 2
  LOADK R11 K24 ["audio"]
  SETTABLEN R11 R10 1
  LOADK R11 K33 ["sound-effect"]
  SETTABLEN R11 R10 2
  SETTABLEKS R10 R9 K19 ["path"]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["index"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K21 ["children"]
  LOADN R10 0
  SETTABLEKS R10 R9 K22 ["childCount"]
  SETTABLEKS R9 R8 K33 ["sound-effect"]
  SETTABLEKS R8 R7 K21 ["children"]
  LOADN R8 2
  SETTABLEKS R8 R7 K22 ["childCount"]
  SETTABLEKS R7 R6 K12 ["subcategory"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K8 ["sections"]
  SETTABLEKS R4 R3 K5 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["resolve"]
  DUPTABLE R3 K6 [{"responseBody"}]
  DUPTABLE R4 K9 [{"topKeywords", "sections"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["topKeywords"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K8 ["sections"]
  SETTABLEKS R4 R3 K5 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_45:
  GETIMPORT R2 K3 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["resolve"]
  DUPTABLE R3 K6 [{"responseBody"}]
  GETUPVAL R4 1
  GETUPVAL R6 2
  NAMECALL R4 R4 K7 ["JSONDecode"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["resolve"]
  DUPTABLE R3 K6 [{"responseBody"}]
  DUPTABLE R4 K10 [{"topKeywords", "sections"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K8 ["topKeywords"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["sections"]
  SETTABLEKS R4 R3 K5 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_46:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K2 [{"responseBody"}]
  DUPTABLE R4 K5 [{"name", "rootPlaceId"}]
  LOADK R5 K6 ["Universe"]
  SETTABLEKS R5 R4 K3 ["name"]
  LOADN R5 57
  SETTABLEKS R5 R4 K4 ["rootPlaceId"]
  SETTABLEKS R4 R3 K1 ["responseBody"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_47:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  DUPTABLE R4 K2 [{"responseCode"}]
  LOADN R5 200
  SETTABLEKS R5 R4 K1 ["responseCode"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["HttpService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K7 ["Packages"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Promise"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Core"]
  GETTABLEKS R6 R7 K14 ["Types"]
  GETTABLEKS R5 R6 K15 ["AssetQuotaTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K16 ["ToolboxUseAssetPermissionsApiForCanManage"]
  NAMECALL R5 R5 K17 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K4 [game]
  LOADK R8 K18 ["ToolboxRemoveApiProxy"]
  NAMECALL R6 R6 K19 ["getFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R11 R0 K13 ["Core"]
  GETTABLEKS R10 R11 K11 ["Util"]
  GETTABLEKS R9 R10 K20 ["SharedFlags"]
  GETTABLEKS R8 R9 K21 ["getFFlagToolboxMigrateOffItemConfig"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R12 R0 K13 ["Core"]
  GETTABLEKS R11 R12 K11 ["Util"]
  GETTABLEKS R10 R11 K20 ["SharedFlags"]
  GETTABLEKS R9 R10 K22 ["getFFlagEnableUGCUploadingDataSharing"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R13 R0 K13 ["Core"]
  GETTABLEKS R12 R13 K23 ["Networking"]
  GETTABLEKS R11 R12 K24 ["__snapshots__"]
  GETTABLEKS R10 R11 K25 ["HomeAudioConfiguration"]
  CALL R9 1 1
  NEWTABLE R10 64 0
  SETTABLEKS R10 R10 K26 ["__index"]
  DUPCLOSURE R11 K27 [PROTO_0]
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K28 ["new"]
  DUPCLOSURE R11 K29 [PROTO_1]
  DUPCLOSURE R12 K30 [PROTO_2]
  CAPTURE VAL R11
  SETTABLEKS R12 R10 K31 ["fakeAssetFactory"]
  DUPCLOSURE R12 K32 [PROTO_3]
  DUPCLOSURE R13 K33 [PROTO_4]
  DUPCLOSURE R14 K34 [PROTO_5]
  SETTABLEKS R14 R10 K35 ["fakeToolboxItemFactory"]
  DUPCLOSURE R14 K36 [PROTO_6]
  DUPCLOSURE R15 K37 [PROTO_7]
  DUPCLOSURE R16 K38 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K39 ["getAssets"]
  DUPCLOSURE R16 K40 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K41 ["postAssetCheckPermissions"]
  DUPCLOSURE R16 K42 [PROTO_10]
  CAPTURE VAL R15
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K43 ["getToolboxItems"]
  DUPCLOSURE R16 K44 [PROTO_11]
  CAPTURE VAL R11
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K45 ["getItemDetails"]
  DUPCLOSURE R16 K46 [PROTO_12]
  CAPTURE VAL R11
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K47 ["getItemDetailsAssetIds"]
  DUPCLOSURE R16 K48 [PROTO_13]
  CAPTURE VAL R3
  SETTABLEKS R16 R10 K49 ["getDevelopAsset"]
  DUPCLOSURE R16 K50 [PROTO_14]
  CAPTURE VAL R3
  DUPCLOSURE R17 K51 [PROTO_15]
  CAPTURE VAL R16
  SETTABLEKS R17 R10 K52 ["getAssetCreations"]
  DUPCLOSURE R17 K53 [PROTO_16]
  CAPTURE VAL R16
  SETTABLEKS R17 R10 K54 ["getAssetGroupCreations"]
  MOVE R17 R7
  CALL R17 0 1
  JUMPIF R17 [+4]
  DUPCLOSURE R17 K55 [PROTO_17]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K56 ["getGroupAnimations"]
  DUPCLOSURE R17 K57 [PROTO_18]
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K58 ["getAssetCreationDetails"]
  DUPCLOSURE R17 K59 [PROTO_19]
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K60 ["getCreatorInfo"]
  DUPCLOSURE R17 K61 [PROTO_20]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K62 ["configureSales"]
  DUPCLOSURE R17 K63 [PROTO_21]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K64 ["updateSales"]
  DUPCLOSURE R17 K65 [PROTO_22]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K66 ["resolveAssets"]
  DUPCLOSURE R17 K67 [PROTO_23]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K68 ["getVote"]
  DUPCLOSURE R17 K69 [PROTO_24]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K70 ["postVote"]
  DUPCLOSURE R17 K71 [PROTO_25]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K72 ["postUnvote"]
  DUPCLOSURE R17 K73 [PROTO_26]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K74 ["postFavorite"]
  DUPCLOSURE R17 K75 [PROTO_27]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K76 ["deleteFavorite"]
  DUPCLOSURE R17 K77 [PROTO_28]
  SETTABLEKS R17 R10 K78 ["postInsertAsset"]
  DUPCLOSURE R17 K79 [PROTO_29]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K80 ["getManageableGroups"]
  DUPCLOSURE R17 K81 [PROTO_30]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K82 ["getUsers"]
  JUMPIFNOT R5 [+5]
  DUPCLOSURE R17 K83 [PROTO_31]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K84 ["getHasEditPermissionForAsset"]
  JUMP [+4]
  DUPCLOSURE R17 K85 [PROTO_32]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K86 ["getCanManageAsset"]
  DUPCLOSURE R17 K87 [PROTO_33]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K88 ["getRobuxBalance"]
  DUPCLOSURE R17 K89 [PROTO_34]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K90 ["getFavoriteCounts"]
  DUPCLOSURE R17 K91 [PROTO_35]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K92 ["getFavorited"]
  DUPCLOSURE R17 K93 [PROTO_36]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K94 ["getMetaData"]
  DUPCLOSURE R17 K95 [PROTO_37]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K96 ["getTagsMetadata"]
  DUPCLOSURE R17 K97 [PROTO_38]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K98 ["uploadCatalogItem"]
  DUPCLOSURE R17 K99 [PROTO_39]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K100 ["uploadCatalogItemFormat"]
  DUPCLOSURE R17 K101 [PROTO_40]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K102 ["getCreatorMarketplaceQuotas"]
  DUPCLOSURE R17 K103 [PROTO_41]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K104 ["getPublishingRequirements"]
  DUPCLOSURE R17 K105 [PROTO_42]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K106 ["getThumbnailStatus"]
  DUPCLOSURE R17 K107 [PROTO_43]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K108 ["getIsVerifiedCreator"]
  DUPCLOSURE R17 K109 [PROTO_44]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K110 ["getHomeConfiguration"]
  DUPCLOSURE R17 K111 [PROTO_45]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R17 R10 K112 ["getAudioConfiguration"]
  DUPCLOSURE R17 K113 [PROTO_46]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K114 ["getUniverseInfo"]
  MOVE R17 R8
  CALL R17 0 1
  JUMPIFNOT R17 [+4]
  DUPCLOSURE R17 K115 [PROTO_47]
  CAPTURE VAL R3
  SETTABLEKS R17 R10 K116 ["postCreateBundleDataSharing"]
  RETURN R10 1
