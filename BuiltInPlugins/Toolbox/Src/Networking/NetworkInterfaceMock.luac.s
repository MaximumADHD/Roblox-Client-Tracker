PROTO_0:
        0 DUPTABLE                         R2 K1 [{"assetCount"}]
        1 ORK                              R3 R0 K2 [10]
        2 SETTABLEKS                       R3 R2 K0 ["assetCount"]
        4 GETUPVAL                         R3 0
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K4 [setmetatable]
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"asset", "creator", "thumbnail", "voting"}]
        1 DUPTABLE                         R2 K20 [{["id"], ["name"], ["duration"] = 0, ["typeId"] = 10, ["isEndorsed"] = True, ["description"] = "mocked asset item", ["createdUtc"] = "2018-05-10T02:28:14.227Z", ["updatedUtc"] = "2018-06-10T02:28:14.24Z", ["assetGenres"]}]
        2 SETTABLEKS                       R0 R2 K5 ["id"]
        4 LOADK                            R4 K21 ["Observation Tower Mock"]
        5 MOVE                             R5 R0
        6 CONCAT                           R3 R4 R5
        7 SETTABLEKS                       R3 R2 K6 ["name"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K19 ["assetGenres"]
       13 SETTABLEKS                       R2 R1 K0 ["asset"]
       15 DUPTABLE                         R2 K25 [{["id"], ["name"] = "JUSTforTEST", ["type"] = 1}]
       16 SETTABLEKS                       R0 R2 K5 ["id"]
       18 SETTABLEKS                       R2 R1 K1 ["creator"]
       20 DUPTABLE                         R2 K34 [{["final"] = True, ["Url"] = "rbxasset://textures/StudioToolbox/Animation.png", ["retryUrl"] = , ["userId"] = 0, ["endpointType"] = "Avatar"}]
       21 SETTABLEKS                       R2 R1 K2 ["thumbnail"]
       23 DUPTABLE                         R2 K46 [{["showVotes"] = True, ["upVotes"] = 4506, ["downVotes"] = 581, ["canVote"] = True, ["userVote"] = "", ["hasVoted"] = False, ["reasonForNotVoteable"] = ""}]
       24 SETTABLEKS                       R2 R1 K3 ["voting"]
       26 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1], ["itemType"] = "Asset"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R2 K3 [{[1], ["itemType"] = "Asset"}]
        1 SETTABLEKS                       R1 R2 K0 ["id"]
        3 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{[1], ["name"] = "Dummy"}]
        1 SETTABLEKS                       R0 R1 K0 ["assetId"]
        3 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETIMPORT                        R3 K3 [game]
        4 GETTABLEKS                       R3 R3 K4 ["CoreGui"]
        6 NAMECALL                         R3 R3 K5 ["GetChildren"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 3
       10 FORGPREP_INEXT                   R2
       11 GETTABLEKS                       R7 R6 K6 ["Name"]
       13 JUMPIFNOTEQKS                    R7 K7 ["CategoryVerification"] ; [+4]
       15 NAMECALL                         R7 R6 K8 ["Destroy"]
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 [inext] ; [-8]
       20 GETIMPORT                        R2 K11 [Instance.new]
       22 LOADK                            R3 K12 ["StringValue"]
       23 GETIMPORT                        R4 K3 [game]
       25 GETTABLEKS                       R4 R4 K4 ["CoreGui"]
       27 CALL                             R2 2 1
       28 LOADK                            R3 K7 ["CategoryVerification"]
       29 SETTABLEKS                       R3 R2 K6 ["Name"]
       31 GETIMPORT                        R3 K11 [Instance.new]
       33 LOADK                            R4 K12 ["StringValue"]
       34 GETIMPORT                        R5 K3 [game]
       36 GETTABLEKS                       R5 R5 K4 ["CoreGui"]
       38 GETTABLEKS                       R5 R5 K7 ["CategoryVerification"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R0 R3 K13 ["Value"]
       43 LOADK                            R4 K14 ["Category"]
       44 SETTABLEKS                       R4 R3 K6 ["Name"]
       46 JUMPIFNOT                        R1 ; [+15]
       47 GETIMPORT                        R4 K11 [Instance.new]
       49 LOADK                            R5 K12 ["StringValue"]
       50 GETIMPORT                        R6 K3 [game]
       52 GETTABLEKS                       R6 R6 K4 ["CoreGui"]
       54 GETTABLEKS                       R6 R6 K7 ["CategoryVerification"]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R1 R4 K13 ["Value"]
       59 LOADK                            R5 K15 ["Sort"]
       60 SETTABLEKS                       R5 R4 K6 ["Name"]
       62 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"responseBody"}]
        1 DUPTABLE                         R3 K3 [{"TotalResults"}]
        2 GETTABLEKS                       R4 R0 K4 ["assetCount"]
        4 SETTABLEKS                       R4 R3 K2 ["TotalResults"]
        6 SETTABLEKS                       R3 R2 K0 ["responseBody"]
        8 NEWTABLE                         R3 0 0
       10 LOADN                            R6 1
       11 LOADN                            R4 10
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 SETTABLE                         R7 R3 R6
       18 FORNLOOP                         R4
       19 GETTABLEKS                       R4 R2 K0 ["responseBody"]
       21 SETTABLEKS                       R3 R4 K5 ["Results"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["resolve"]
       26 MOVE                             R5 R2
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

PROTO_8:
        0 DUPTABLE                         R3 K1 [{"responseBody"}]
        1 DUPTABLE                         R4 K4 [{["TotalResults"] = 11}]
        2 SETTABLEKS                       R4 R3 K0 ["responseBody"]
        4 NEWTABLE                         R4 0 11
        6 DUPTABLE                         R5 K11 [{["action"] = "Use", ["assetId"] = 7327, ["status"] = "HasPermission"}]
        7 DUPTABLE                         R6 K13 [{["action"] = "Edit", ["assetId"] = 7327, ["status"] = "HasPermission"}]
        8 DUPTABLE                         R7 K15 [{["action"] = "GrantAssetPermissions", ["assetId"] = 7327, ["status"] = "HasPermission"}]
        9 DUPTABLE                         R8 K17 [{["action"] = "Use", ["assetId"] = 3127, ["status"] = "HasPermission"}]
       10 DUPTABLE                         R9 K18 [{["action"] = "Edit", ["assetId"] = 3127, ["status"] = "HasPermission"}]
       11 DUPTABLE                         R10 K20 [{["action"] = "GrantAssetPermissions", ["assetId"] = 3127, ["status"] = "NoPermission"}]
       12 DUPTABLE                         R11 K23 [{["action"] = "GrantAssetPermissions", ["assetId"] = 2134, ["status"] = "AssetNotFound"}]
       13 DUPTABLE                         R12 K26 [{["action"] = "Edit", ["assetId"] = 9765, ["status"] = "UnknownError"}]
       14 DUPTABLE                         R13 K28 [{["action"] = "Use", ["assetId"] = 7340, ["status"] = "NoPermission"}]
       15 DUPTABLE                         R14 K29 [{["action"] = "Edit", ["assetId"] = 7340, ["status"] = "NoPermission"}]
       16 DUPTABLE                         R15 K30 [{["action"] = "GrantAssetPermissions", ["assetId"] = 7340, ["status"] = "NoPermission"}]
       17 SETLIST                          R4 R5 11 [1]
       19 GETTABLEKS                       R5 R3 K0 ["responseBody"]
       21 SETTABLEKS                       R4 R5 K31 ["results"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K32 ["resolve"]
       26 MOVE                             R6 R3
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["categoryName"]
        2 GETTABLEKS                       R3 R1 K1 ["sortType"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R2
        6 MOVE                             R6 R3
        7 CALL                             R4 2 0
        8 DUPTABLE                         R4 K3 [{"responseBody"}]
        9 DUPTABLE                         R5 K6 [{["totalResults"], ["nextPageCursor"] = "nextPageCursor"}]
       10 GETTABLEKS                       R6 R0 K7 ["assetCount"]
       12 SETTABLEKS                       R6 R5 K4 ["totalResults"]
       14 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       16 NEWTABLE                         R5 0 0
       18 LOADN                            R8 1
       19 GETTABLEKS                       R6 R0 K7 ["assetCount"]
       21 LOADN                            R7 1
       22 FORNPREP                         R6
       23 DUPTABLE                         R9 K11 [{["id"], ["itemType"] = "Asset"}]
       24 SETTABLEKS                       R8 R9 K8 ["id"]
       26 SETTABLE                         R9 R5 R8
       27 FORNLOOP                         R6
       28 GETTABLEKS                       R6 R4 K2 ["responseBody"]
       30 SETTABLEKS                       R5 R6 K12 ["data"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K13 ["resolve"]
       35 MOVE                             R7 R4
       36 CALL                             R6 1 -1
       37 RETURN                           R6 -1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R9 R7 K2 ["id"]
       10 CALL                             R8 1 1
       11 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       13 MOVE                             R10 R2
       14 MOVE                             R11 R8
       15 GETIMPORT                        R9 K5 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R3 2 [inext] ; [-12]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["resolve"]
       23 DUPTABLE                         R4 K8 [{"responseBody"}]
       24 DUPTABLE                         R5 K10 [{"data"}]
       25 SETTABLEKS                       R2 R5 K9 ["data"]
       27 SETTABLEKS                       R5 R4 K7 ["responseBody"]
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       12 MOVE                             R10 R2
       13 MOVE                             R11 R8
       14 GETIMPORT                        R9 K4 [table.insert]
       16 CALL                             R9 2 0
       17 FORGLOOP                         R3 2 [inext] ; [-11]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["resolve"]
       22 DUPTABLE                         R4 K7 [{"responseBody"}]
       23 DUPTABLE                         R5 K9 [{"data"}]
       24 SETTABLEKS                       R2 R5 K8 ["data"]
       26 SETTABLEKS                       R5 R4 K6 ["responseBody"]
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"responseBody"}]
        1 DUPTABLE                         R3 K4 [{"totalResults", "results"}]
        2 GETTABLEKS                       R4 R0 K5 ["assetCount"]
        4 SETTABLEKS                       R4 R3 K2 ["totalResults"]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K3 ["results"]
       10 SETTABLEKS                       R3 R2 K0 ["responseBody"]
       12 NEWTABLE                         R3 0 0
       14 LOADN                            R6 1
       15 GETTABLEKS                       R4 R0 K5 ["assetCount"]
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 DUPTABLE                         R7 K9 [{["id"], ["itemType"] = "Asset"}]
       20 SETTABLEKS                       R6 R7 K6 ["id"]
       22 SETTABLE                         R7 R3 R6
       23 FORNLOOP                         R4
       24 GETTABLEKS                       R4 R2 K0 ["responseBody"]
       26 GETTABLEKS                       R4 R4 K3 ["results"]
       28 SETTABLEKS                       R3 R4 K10 ["data"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K11 ["resolve"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 -1
       35 RETURN                           R4 -1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"responseBody"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 NEWTABLE                         R1 0 0
        7 LOADN                            R4 1
        8 LOADN                            R2 10
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 DUPTABLE                         R5 K5 [{["assetId"], ["name"] = "Dummy"}]
       12 SETTABLEKS                       R4 R5 K2 ["assetId"]
       14 SETTABLE                         R5 R1 R4
       15 FORNLOOP                         R2
       16 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       18 SETTABLEKS                       R1 R2 K6 ["data"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K7 ["resolve"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_16:
        0 NEWTABLE                         R1 0 5
        2 LOADN                            R4 1
        3 LOADN                            R2 5
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R5 K1 [{"assetItem"}]
        7 DUPTABLE                         R6 K3 [{"asset"}]
        8 DUPTABLE                         R7 K6 [{"assetId", "displayName"}]
        9 SETTABLEKS                       R4 R7 K4 ["assetId"]
       11 LOADK                            R9 K7 ["Asset "]
       12 MOVE                             R10 R4
       13 CONCAT                           R8 R9 R10
       14 SETTABLEKS                       R8 R7 K5 ["displayName"]
       16 SETTABLEKS                       R7 R6 K2 ["asset"]
       18 SETTABLEKS                       R6 R5 K0 ["assetItem"]
       20 SETTABLE                         R5 R1 R4
       21 FORNLOOP                         R2
       22 LOADN                            R4 6
       23 LOADN                            R2 10
       24 LOADN                            R3 1
       25 FORNPREP                         R2
       26 DUPTABLE                         R5 K1 [{"assetItem"}]
       27 DUPTABLE                         R6 K3 [{"asset"}]
       28 DUPTABLE                         R7 K10 [{["assetId"], ["displayName"], ["assetSubType"] = "AnimationGraph"}]
       29 SETTABLEKS                       R4 R7 K4 ["assetId"]
       31 LOADK                            R9 K7 ["Asset "]
       32 MOVE                             R10 R4
       33 CONCAT                           R8 R9 R10
       34 SETTABLEKS                       R8 R7 K5 ["displayName"]
       36 SETTABLEKS                       R7 R6 K2 ["asset"]
       38 SETTABLEKS                       R6 R5 K0 ["assetItem"]
       40 SETTABLE                         R5 R1 R4
       41 FORNLOOP                         R2
       42 MOVE                             R2 R1
       43 JUMPIFNOTEQKS                    R0 K11 ["Animation"] ; [+25]
       45 NEWTABLE                         R2 0 0
       47 MOVE                             R3 R1
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETTABLEKS                       R8 R7 K0 ["assetItem"]
       53 GETTABLEKS                       R8 R8 K2 ["asset"]
       55 GETTABLEKS                       R8 R8 K8 ["assetSubType"]
       57 JUMPIFNOTEQKNIL                  R8 ; [+8]
       59 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       61 MOVE                             R9 R2
       62 MOVE                             R10 R7
       63 GETIMPORT                        R8 K14 [table.insert]
       65 CALL                             R8 2 0
       66 FORGLOOP                         R3 2 ; [-16]
       68 JUMP                             ; [+25]
       69 JUMPIFNOTEQKS                    R0 K9 ["AnimationGraph"] ; [+24]
       71 NEWTABLE                         R2 0 0
       73 MOVE                             R3 R1
       74 LOADNIL                          R4
       75 LOADNIL                          R5
       76 FORGPREP                         R3
       77 GETTABLEKS                       R8 R7 K0 ["assetItem"]
       79 GETTABLEKS                       R8 R8 K2 ["asset"]
       81 GETTABLEKS                       R8 R8 K8 ["assetSubType"]
       83 JUMPIFNOTEQKS                    R8 K9 ["AnimationGraph"] ; [+8]
       85 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       87 MOVE                             R9 R2
       88 MOVE                             R10 R7
       89 GETIMPORT                        R8 K14 [table.insert]
       91 CALL                             R8 2 0
       92 FORGLOOP                         R3 2 ; [-16]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K15 ["resolve"]
       97 DUPTABLE                         R4 K17 [{"responseBody"}]
       98 DUPTABLE                         R5 K19 [{"items"}]
       99 SETTABLEKS                       R2 R5 K18 ["items"]
      101 SETTABLEKS                       R5 R4 K16 ["responseBody"]
      103 CALL                             R3 1 -1
      104 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["assetType"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_18:
        0 DUPTABLE                         R3 K1 [{"responseBody"}]
        1 DUPTABLE                         R4 K6 [{["id"] = "1010101", ["name"] = "testAccount"}]
        2 SETTABLEKS                       R4 R3 K0 ["responseBody"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K7 ["resolve"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 -1
        9 RETURN                           R4 -1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
        3 NEWTABLE                         R5 0 0
        5 CALL                             R4 1 -1
        6 RETURN                           R4 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
        3 DUPTABLE                         R5 K2 [{"responseBody"}]
        4 DUPTABLE                         R6 K6 [{"TotalResults", "Results", "nextPageCursor"}]
        5 MOVE                             R7 R2
        6 JUMPIF                           R7 ; [+1]
        7 LENGTH                           R7 R1
        8 SETTABLEKS                       R7 R6 K3 ["TotalResults"]
       10 SETTABLEKS                       R1 R6 K4 ["Results"]
       12 SETTABLEKS                       R3 R6 K5 ["nextPageCursor"]
       14 SETTABLEKS                       R6 R5 K1 ["responseBody"]
       16 CALL                             R4 1 -1
       17 RETURN                           R4 -1

PROTO_22:
        0 DUPTABLE                         R3 K2 [{[1] = True}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["resolve"]
        4 MOVE                             R5 R3
        5 CALL                             R4 1 -1
        6 RETURN                           R4 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K6 [{["model"], ["success"] = True, ["message"] = "This is a test message"}]
        4 DUPTABLE                         R4 K15 [{["HasVoted"] = True, ["CanVote"] = True, ["upVotes"] = 4507, ["UserVote"] = True, ["DownVote"] = 581, ["ShowVotes"] = True}]
        5 SETTABLEKS                       R4 R3 K1 ["model"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K6 [{["model"], ["success"] = True, ["message"] = "This is a test message"}]
        4 DUPTABLE                         R4 K17 [{["HasVoted"] = False, ["CanVote"] = True, ["upVotes"] = 4506, ["UserVote"] = "", ["DownVote"] = 581, ["ShowVotes"] = True}]
        5 SETTABLEKS                       R4 R3 K1 ["model"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_28:
        0 DUPTABLE                         R1 K1 [{"responseBody"}]
        1 DUPTABLE                         R2 K3 [{"groups"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K2 ["groups"]
        6 SETTABLEKS                       R2 R1 K0 ["responseBody"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["resolve"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 LOADB                            R4 1
        4 CALL                             R3 1 -1
        5 RETURN                           R3 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K5 [{["robux"] = "16"}]
        5 SETTABLEKS                       R4 R3 K1 ["responseBody"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K3 [{["responseBody"] = "10"}]
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 DUPTABLE                         R5 K5 [{["totalCount"] = 0}]
        5 SETTABLEKS                       R5 R4 K1 ["responseBody"]
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_36:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["resolve"]
        3 NEWTABLE                         R9 0 0
        5 CALL                             R8 1 -1
        6 RETURN                           R8 -1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K4 [{"data"}]
        5 NEWTABLE                         R5 0 1
        7 DUPTABLE                         R6 K11 [{["imageUrl"] = "fake_image_url", ["state"] = "Completed", ["targetId"] = 12345}]
        8 SETTABLEN                        R6 R5 1
        9 SETTABLEKS                       R5 R4 K3 ["data"]
       11 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 DUPTABLE                         R2 K2 [{"responseBody"}]
        4 DUPTABLE                         R3 K5 [{["isVerifiedCreator"] = True}]
        5 SETTABLEKS                       R3 R2 K1 ["responseBody"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_41:
        0 GETIMPORT                        R2 K3 [Enum.AssetType.Audio]
        2 JUMPIFNOTEQ                      R1 R2 ; [+72]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["resolve"]
        7 DUPTABLE                         R3 K6 [{"responseBody"}]
        8 DUPTABLE                         R4 K9 [{"topKeywords", "sections"}]
        9 NEWTABLE                         R5 0 0
       11 SETTABLEKS                       R5 R4 K7 ["topKeywords"]
       13 NEWTABLE                         R5 0 1
       15 DUPTABLE                         R6 K15 [{["displayName"] = "Categories", ["name"] = "categories", ["subcategory"]}]
       16 DUPTABLE                         R7 K27 [{["name"] = "audio", ["displayName"] = "Audio", ["hidden"] = False, ["searchKeywords"] = "audio", ["queryParams"], ["path"], ["index"] = 0, ["children"], ["childCount"] = 2}]
       17 DUPTABLE                         R8 K34 [{["keyword"] = "audio", ["assetSubTypes"] = , ["creatorTargetId"] = , ["creatorType"] = , ["excludeAssetSubTypes"] = }]
       18 SETTABLEKS                       R8 R7 K20 ["queryParams"]
       20 NEWTABLE                         R8 0 1
       22 LOADK                            R9 K16 ["audio"]
       23 SETTABLEN                        R9 R8 1
       24 SETTABLEKS                       R8 R7 K21 ["path"]
       26 NEWTABLE                         R8 2 0
       28 DUPTABLE                         R9 K37 [{["name"] = "music", ["displayName"] = "Music", ["hidden"] = False, ["searchKeywords"] = "music", ["queryParams"], ["path"], ["index"] = 0, ["children"], ["childCount"] = 0}]
       29 DUPTABLE                         R10 K38 [{["keyword"] = "music", ["assetSubTypes"] = , ["creatorTargetId"] = , ["creatorType"] = , ["excludeAssetSubTypes"] = }]
       30 SETTABLEKS                       R10 R9 K20 ["queryParams"]
       32 NEWTABLE                         R10 0 2
       34 LOADK                            R11 K16 ["audio"]
       35 SETTABLEN                        R11 R10 1
       36 LOADK                            R11 K35 ["music"]
       37 SETTABLEN                        R11 R10 2
       38 SETTABLEKS                       R10 R9 K21 ["path"]
       40 NEWTABLE                         R10 0 0
       42 SETTABLEKS                       R10 R9 K24 ["children"]
       44 SETTABLEKS                       R9 R8 K35 ["music"]
       46 DUPTABLE                         R9 K42 [{["name"] = "sound-effect", ["displayName"] = "Sound Effect", ["hidden"] = False, ["searchKeywords"] = "sound-effect", ["queryParams"], ["path"], ["index"] = 1, ["children"], ["childCount"] = 0}]
       47 DUPTABLE                         R10 K43 [{["keyword"] = "sound-effect", ["assetSubTypes"] = , ["creatorTargetId"] = , ["creatorType"] = , ["excludeAssetSubTypes"] = }]
       48 SETTABLEKS                       R10 R9 K20 ["queryParams"]
       50 NEWTABLE                         R10 0 2
       52 LOADK                            R11 K16 ["audio"]
       53 SETTABLEN                        R11 R10 1
       54 LOADK                            R11 K39 ["sound-effect"]
       55 SETTABLEN                        R11 R10 2
       56 SETTABLEKS                       R10 R9 K21 ["path"]
       58 NEWTABLE                         R10 0 0
       60 SETTABLEKS                       R10 R9 K24 ["children"]
       62 SETTABLEKS                       R9 R8 K39 ["sound-effect"]
       64 SETTABLEKS                       R8 R7 K24 ["children"]
       66 SETTABLEKS                       R7 R6 K14 ["subcategory"]
       68 SETTABLEN                        R6 R5 1
       69 SETTABLEKS                       R5 R4 K8 ["sections"]
       71 SETTABLEKS                       R4 R3 K5 ["responseBody"]
       73 CALL                             R2 1 -1
       74 RETURN                           R2 -1
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R2 R2 K4 ["resolve"]
       78 DUPTABLE                         R3 K6 [{"responseBody"}]
       79 DUPTABLE                         R4 K9 [{"topKeywords", "sections"}]
       80 NEWTABLE                         R5 0 0
       82 SETTABLEKS                       R5 R4 K7 ["topKeywords"]
       84 NEWTABLE                         R5 0 0
       86 SETTABLEKS                       R5 R4 K8 ["sections"]
       88 SETTABLEKS                       R4 R3 K5 ["responseBody"]
       90 CALL                             R2 1 -1
       91 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K7 [{["name"] = "Universe", ["rootPlaceId"] = 12345}]
        5 SETTABLEKS                       R4 R3 K1 ["responseBody"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOT                        R1 ; [+15]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["resolve"]
        4 DUPTABLE                         R5 K5 [{["actualPrice"], ["checkoutUrl"] = "http://create.roblox.com", ["purchaseTransactionStatus"]}]
        5 GETTABLEKS                       R6 R2 K6 ["expectedPrice"]
        7 SETTABLEKS                       R6 R5 K1 ["actualPrice"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K7 ["Success"]
       12 SETTABLEKS                       R6 R5 K4 ["purchaseTransactionStatus"]
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["resolve"]
       19 DUPTABLE                         R5 K9 [{"responseBody"}]
       20 DUPTABLE                         R6 K12 [{["purchased"] = True}]
       21 SETTABLEKS                       R6 R5 K8 ["responseBody"]
       23 CALL                             R4 1 -1
       24 RETURN                           R4 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K6 [{["isEligible"] = True, ["configurations"]}]
        5 NEWTABLE                         R5 0 1
        7 DUPTABLE                         R6 K11 [{["type"] = "AvatarBundles", ["isOptOut"] = False}]
        8 SETTABLEN                        R6 R5 1
        9 SETTABLEKS                       R5 R4 K5 ["configurations"]
       11 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K3 [{["responseCode"] = 200}]
        4 CALL                             R3 1 -1
        5 RETURN                           R3 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 DUPTABLE                         R2 K2 [{"responseBody"}]
        4 DUPTABLE                         R3 K4 [{"purchaserStatus"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K5 ["Allowed"]
        8 SETTABLEKS                       R4 R3 K3 ["purchaserStatus"]
       10 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K3 ["getDefaultFiatProduct"]
        7 CALL                             R5 0 1
        8 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K3 [{["responseBody"] = False}]
        4 CALL                             R3 1 -1
        5 RETURN                           R3 -1

PROTO_49:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 DUPTABLE                         R2 K2 [{"responseBody"}]
        4 DUPTABLE                         R3 K4 [{"data"}]
        5 NEWTABLE                         R4 0 1
        7 DUPTABLE                         R5 K7 [{["versionId"] = 1}]
        8 SETTABLEN                        R5 R4 1
        9 SETTABLEKS                       R4 R3 K3 ["data"]
       11 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K7 [{["price"] = 750, ["canAfford"] = True}]
        5 SETTABLEKS                       R4 R3 K1 ["responseBody"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 DUPTABLE                         R5 K4 [{"metadataPermissions"}]
        5 NEWTABLE                         R6 0 0
        7 SETTABLEKS                       R6 R5 K3 ["metadataPermissions"]
        9 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_53:
        0 DUPTABLE                         R2 K1 [{"data"}]
        1 NEWTABLE                         R3 0 1
        3 DUPTABLE                         R4 K13 [{["assetId"], ["name"] = "Test Asset", ["description"] = "Test Description", ["assetType"] = "Models", ["created"] = "2019-08-09T21:41:51.97Z", ["updated"] = "2021-05-06T19:56:54.437Z"}]
        4 SETTABLEKS                       R1 R4 K2 ["assetId"]
        6 SETLIST                          R3 R4 1 [1]
        8 SETTABLEKS                       R3 R2 K0 ["data"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K14 ["resolve"]
       13 DUPTABLE                         R4 K16 [{"responseBody"}]
       14 GETUPVAL                         R5 1
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R5 K17 ["JSONEncode"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K15 ["responseBody"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 NEWTABLE                         R5 0 1
        6 DUPTABLE                         R6 K14 [{["assetId"], ["name"] = "Test Asset", ["description"] = "Test Description", ["assetType"] = "Models", ["created"] = "2019-08-09T21:41:51.97Z", ["updated"] = "2021-05-06T19:56:54.437Z"}]
        7 FASTCALL1                        TONUMBER R2 ; [+3]
        8 MOVE                             R8 R2
        9 GETIMPORT                        R7 K16 [tonumber]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R7 R6 K3 ["assetId"]
       14 SETLIST                          R5 R6 1 [1]
       16 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K4 [{"results"}]
        5 NEWTABLE                         R5 0 2
        7 DUPTABLE                         R6 K10 [{["action"] = "Use", ["assetId"], ["status"] = "HasPermission"}]
        8 SETTABLEKS                       R1 R6 K7 ["assetId"]
       10 DUPTABLE                         R7 K12 [{["action"] = "Edit", ["assetId"], ["status"] = "HasPermission"}]
       11 SETTABLEKS                       R1 R7 K7 ["assetId"]
       13 SETLIST                          R5 R6 2 [1]
       15 SETTABLEKS                       R5 R4 K3 ["results"]
       17 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["HttpService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R2 R0 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Framework"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K11 ["Util"]
       24 GETTABLEKS                       R3 R3 K12 ["Promise"]
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 GETTABLEKS                       R5 R5 K15 ["AssetQuotaTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Src"]
       39 GETTABLEKS                       R6 R6 K14 ["Types"]
       41 GETTABLEKS                       R6 R6 K16 ["BuyerStatus"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K17 ["FiatUtil"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K9 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Src"]
       57 GETTABLEKS                       R8 R8 K14 ["Types"]
       59 GETTABLEKS                       R8 R8 K18 ["PurchaseTransactionStatus"]
       61 CALL                             R7 1 1
       62 NEWTABLE                         R8 64 0
       64 SETTABLEKS                       R8 R8 K19 ["__index"]
       66 DUPCLOSURE                       R9 K20 [PROTO_0]
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R9 R8 K21 ["new"]
       70 DUPCLOSURE                       R9 K22 [PROTO_1]
       71 DUPCLOSURE                       R10 K23 [PROTO_2]
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R10 R8 K24 ["fakeAssetFactory"]
       75 DUPCLOSURE                       R10 K25 [PROTO_3]
       76 DUPCLOSURE                       R11 K26 [PROTO_4]
       77 SETTABLEKS                       R11 R8 K27 ["fakeToolboxItemFactory"]
       79 DUPCLOSURE                       R11 K28 [PROTO_5]
       80 DUPCLOSURE                       R12 K29 [PROTO_6]
       81 DUPCLOSURE                       R13 K30 [PROTO_7]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R13 R8 K31 ["getAssets"]
       86 DUPCLOSURE                       R13 K32 [PROTO_8]
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R13 R8 K33 ["postAssetCheckPermissions"]
       90 DUPCLOSURE                       R13 K34 [PROTO_9]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R13 R8 K35 ["getToolboxItems"]
       95 DUPCLOSURE                       R13 K36 [PROTO_10]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R13 R8 K37 ["getItemDetails"]
      100 DUPCLOSURE                       R13 K38 [PROTO_11]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R13 R8 K39 ["getItemDetailsAssetIds"]
      105 DUPCLOSURE                       R13 K40 [PROTO_12]
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R13 R8 K41 ["getDevelopAsset"]
      109 DUPCLOSURE                       R13 K42 [PROTO_13]
      110 CAPTURE                          VAL R3
      111 DUPCLOSURE                       R14 K43 [PROTO_14]
      112 CAPTURE                          VAL R13
      113 SETTABLEKS                       R14 R8 K44 ["getAssetCreations"]
      115 DUPCLOSURE                       R14 K45 [PROTO_15]
      116 CAPTURE                          VAL R13
      117 SETTABLEKS                       R14 R8 K46 ["getAssetGroupCreations"]
      119 DUPCLOSURE                       R14 K47 [PROTO_16]
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R15 K48 [PROTO_17]
      122 CAPTURE                          VAL R14
      123 SETTABLEKS                       R15 R8 K49 ["requestCreatorInventoryAssets"]
      125 DUPCLOSURE                       R15 K50 [PROTO_18]
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R15 R8 K51 ["getCreatorInfo"]
      129 DUPCLOSURE                       R15 K52 [PROTO_19]
      130 CAPTURE                          VAL R3
      131 SETTABLEKS                       R15 R8 K53 ["configureSales"]
      133 DUPCLOSURE                       R15 K54 [PROTO_20]
      134 CAPTURE                          VAL R3
      135 SETTABLEKS                       R15 R8 K55 ["updateSales"]
      137 DUPCLOSURE                       R15 K56 [PROTO_21]
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R15 R8 K57 ["resolveAssets"]
      141 DUPCLOSURE                       R15 K58 [PROTO_22]
      142 CAPTURE                          VAL R3
      143 SETTABLEKS                       R15 R8 K59 ["getVote"]
      145 DUPCLOSURE                       R15 K60 [PROTO_23]
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R15 R8 K61 ["postVote"]
      149 DUPCLOSURE                       R15 K62 [PROTO_24]
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R15 R8 K63 ["postUnvote"]
      153 DUPCLOSURE                       R15 K64 [PROTO_25]
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R15 R8 K65 ["postFavorite"]
      157 DUPCLOSURE                       R15 K66 [PROTO_26]
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R15 R8 K67 ["deleteFavorite"]
      161 DUPCLOSURE                       R15 K68 [PROTO_27]
      162 CAPTURE                          VAL R3
      163 SETTABLEKS                       R15 R8 K69 ["postInsertAsset"]
      165 DUPCLOSURE                       R15 K70 [PROTO_28]
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R15 R8 K71 ["getManageableGroups"]
      169 DUPCLOSURE                       R15 K72 [PROTO_29]
      170 CAPTURE                          VAL R3
      171 SETTABLEKS                       R15 R8 K73 ["getUsers"]
      173 DUPCLOSURE                       R15 K74 [PROTO_30]
      174 CAPTURE                          VAL R3
      175 SETTABLEKS                       R15 R8 K75 ["getHasEditPermissionForAsset"]
      177 DUPCLOSURE                       R15 K76 [PROTO_31]
      178 CAPTURE                          VAL R3
      179 SETTABLEKS                       R15 R8 K77 ["getRobuxBalance"]
      181 DUPCLOSURE                       R15 K78 [PROTO_32]
      182 CAPTURE                          VAL R3
      183 SETTABLEKS                       R15 R8 K79 ["getFavoriteCounts"]
      185 DUPCLOSURE                       R15 K80 [PROTO_33]
      186 CAPTURE                          VAL R3
      187 SETTABLEKS                       R15 R8 K81 ["getSave"]
      189 DUPCLOSURE                       R15 K82 [PROTO_34]
      190 CAPTURE                          VAL R3
      191 SETTABLEKS                       R15 R8 K83 ["getAllowedItemTypes"]
      193 DUPCLOSURE                       R15 K84 [PROTO_35]
      194 CAPTURE                          VAL R3
      195 SETTABLEKS                       R15 R8 K85 ["uploadCatalogItem"]
      197 DUPCLOSURE                       R15 K86 [PROTO_36]
      198 CAPTURE                          VAL R3
      199 SETTABLEKS                       R15 R8 K87 ["uploadCatalogItemFormat"]
      201 DUPCLOSURE                       R15 K88 [PROTO_37]
      202 CAPTURE                          VAL R3
      203 SETTABLEKS                       R15 R8 K89 ["getCreatorMarketplaceQuotas"]
      205 DUPCLOSURE                       R15 K90 [PROTO_38]
      206 CAPTURE                          VAL R3
      207 SETTABLEKS                       R15 R8 K91 ["getPublishingRequirements"]
      209 DUPCLOSURE                       R15 K92 [PROTO_39]
      210 CAPTURE                          VAL R3
      211 SETTABLEKS                       R15 R8 K93 ["getThumbnailStatus"]
      213 DUPCLOSURE                       R15 K94 [PROTO_40]
      214 CAPTURE                          VAL R3
      215 SETTABLEKS                       R15 R8 K95 ["getIsVerifiedCreator"]
      217 DUPCLOSURE                       R15 K96 [PROTO_41]
      218 CAPTURE                          VAL R3
      219 SETTABLEKS                       R15 R8 K97 ["getHomeConfiguration"]
      221 DUPCLOSURE                       R15 K98 [PROTO_42]
      222 CAPTURE                          VAL R3
      223 SETTABLEKS                       R15 R8 K99 ["getUniverseInfo"]
      225 DUPCLOSURE                       R15 K100 [PROTO_43]
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R7
      228 SETTABLEKS                       R15 R8 K101 ["purchaseAsset"]
      230 DUPCLOSURE                       R15 K102 [PROTO_44]
      231 CAPTURE                          VAL R3
      232 SETTABLEKS                       R15 R8 K103 ["getDefaultCreateBundleDataSharing"]
      234 DUPCLOSURE                       R15 K104 [PROTO_45]
      235 CAPTURE                          VAL R3
      236 SETTABLEKS                       R15 R8 K105 ["postCreateBundleDataSharing"]
      238 DUPCLOSURE                       R15 K106 [PROTO_46]
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R5
      241 SETTABLEKS                       R15 R8 K107 ["getPurchaserStatus"]
      243 DUPCLOSURE                       R15 K108 [PROTO_47]
      244 CAPTURE                          VAL R3
      245 CAPTURE                          VAL R6
      246 SETTABLEKS                       R15 R8 K109 ["getFiatProduct"]
      248 DUPCLOSURE                       R15 K110 [PROTO_48]
      249 CAPTURE                          VAL R3
      250 SETTABLEKS                       R15 R8 K111 ["getIsOwnedByUser"]
      252 DUPCLOSURE                       R15 K112 [PROTO_49]
      253 SETTABLEKS                       R15 R8 K113 ["getIsAssetOpenForUse"]
      255 DUPCLOSURE                       R15 K114 [PROTO_50]
      256 CAPTURE                          VAL R3
      257 SETTABLEKS                       R15 R8 K115 ["getPluginInfo"]
      259 DUPCLOSURE                       R15 K116 [PROTO_51]
      260 CAPTURE                          VAL R3
      261 SETTABLEKS                       R15 R8 K117 ["getItemUploadFee"]
      263 DUPCLOSURE                       R15 K118 [PROTO_52]
      264 CAPTURE                          VAL R3
      265 SETTABLEKS                       R15 R8 K119 ["getMetadataPermissions"]
      267 DUPCLOSURE                       R15 K120 [PROTO_53]
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R1
      270 SETTABLEKS                       R15 R8 K121 ["getDevelopAssetMetadata"]
      272 DUPCLOSURE                       R15 K122 [PROTO_54]
      273 CAPTURE                          VAL R3
      274 SETTABLEKS                       R15 R8 K123 ["getItem"]
      276 DUPCLOSURE                       R15 K124 [PROTO_55]
      277 CAPTURE                          VAL R3
      278 SETTABLEKS                       R15 R8 K125 ["getAssetPermissions"]
      280 RETURN                           R8 1
