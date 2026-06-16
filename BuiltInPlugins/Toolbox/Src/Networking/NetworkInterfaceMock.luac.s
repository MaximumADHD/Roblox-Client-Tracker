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
        1 DUPTABLE                         R2 K14 [{"id", "name", "duration", "typeId", "isEndorsed", "description", "createdUtc", "updatedUtc", "assetGenres"}]
        2 SETTABLEKS                       R0 R2 K5 ["id"]
        4 LOADK                            R4 K15 ["Observation Tower Mock"]
        5 MOVE                             R5 R0
        6 CONCAT                           R3 R4 R5
        7 SETTABLEKS                       R3 R2 K6 ["name"]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K7 ["duration"]
       12 LOADN                            R3 10
       13 SETTABLEKS                       R3 R2 K8 ["typeId"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K9 ["isEndorsed"]
       18 LOADK                            R3 K16 ["mocked asset item"]
       19 SETTABLEKS                       R3 R2 K10 ["description"]
       21 LOADK                            R3 K17 ["2018-05-10T02:28:14.227Z"]
       22 SETTABLEKS                       R3 R2 K11 ["createdUtc"]
       24 LOADK                            R3 K18 ["2018-06-10T02:28:14.24Z"]
       25 SETTABLEKS                       R3 R2 K12 ["updatedUtc"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K13 ["assetGenres"]
       31 SETTABLEKS                       R2 R1 K0 ["asset"]
       33 DUPTABLE                         R2 K20 [{"id", "name", "type"}]
       34 SETTABLEKS                       R0 R2 K5 ["id"]
       36 LOADK                            R3 K21 ["JUSTforTEST"]
       37 SETTABLEKS                       R3 R2 K6 ["name"]
       39 LOADN                            R3 1
       40 SETTABLEKS                       R3 R2 K19 ["type"]
       42 SETTABLEKS                       R2 R1 K1 ["creator"]
       44 DUPTABLE                         R2 K27 [{"final", "Url", "retryUrl", "userId", "endpointType"}]
       45 LOADB                            R3 1
       46 SETTABLEKS                       R3 R2 K22 ["final"]
       48 LOADK                            R3 K28 ["rbxasset://textures/StudioToolbox/Animation.png"]
       49 SETTABLEKS                       R3 R2 K23 ["Url"]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K24 ["retryUrl"]
       54 LOADN                            R3 0
       55 SETTABLEKS                       R3 R2 K25 ["userId"]
       57 LOADK                            R3 K29 ["Avatar"]
       58 SETTABLEKS                       R3 R2 K26 ["endpointType"]
       60 SETTABLEKS                       R2 R1 K2 ["thumbnail"]
       62 DUPTABLE                         R2 K37 [{"showVotes", "upVotes", "downVotes", "canVote", "userVote", "hasVoted", "reasonForNotVoteable"}]
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R2 K30 ["showVotes"]
       66 LOADN                            R3 154
       67 SETTABLEKS                       R3 R2 K31 ["upVotes"]
       69 LOADN                            R3 69
       70 SETTABLEKS                       R3 R2 K32 ["downVotes"]
       72 LOADB                            R3 1
       73 SETTABLEKS                       R3 R2 K33 ["canVote"]
       75 LOADK                            R3 K38 [""]
       76 SETTABLEKS                       R3 R2 K34 ["userVote"]
       78 LOADB                            R3 0
       79 SETTABLEKS                       R3 R2 K35 ["hasVoted"]
       81 LOADK                            R3 K38 [""]
       82 SETTABLEKS                       R3 R2 K36 ["reasonForNotVoteable"]
       84 SETTABLEKS                       R2 R1 K3 ["voting"]
       86 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"id", "itemType"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 LOADK                            R2 K3 ["Asset"]
        4 SETTABLEKS                       R2 R1 K1 ["itemType"]
        6 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"id", "itemType"}]
        1 SETTABLEKS                       R1 R2 K0 ["id"]
        3 LOADK                            R3 K3 ["Asset"]
        4 SETTABLEKS                       R3 R2 K1 ["itemType"]
        6 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"assetId", "name"}]
        1 SETTABLEKS                       R0 R1 K0 ["assetId"]
        3 LOADK                            R2 K3 ["Dummy"]
        4 SETTABLEKS                       R2 R1 K1 ["name"]
        6 RETURN                           R1 1

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
        1 DUPTABLE                         R4 K3 [{"TotalResults"}]
        2 LOADN                            R5 11
        3 SETTABLEKS                       R5 R4 K2 ["TotalResults"]
        5 SETTABLEKS                       R4 R3 K0 ["responseBody"]
        7 NEWTABLE                         R4 0 11
        9 DUPTABLE                         R5 K7 [{"action", "assetId", "status"}]
       10 LOADK                            R6 K8 ["Use"]
       11 SETTABLEKS                       R6 R5 K4 ["action"]
       13 LOADN                            R6 159
       14 SETTABLEKS                       R6 R5 K5 ["assetId"]
       16 LOADK                            R6 K9 ["HasPermission"]
       17 SETTABLEKS                       R6 R5 K6 ["status"]
       19 DUPTABLE                         R6 K7 [{"action", "assetId", "status"}]
       20 LOADK                            R7 K10 ["Edit"]
       21 SETTABLEKS                       R7 R6 K4 ["action"]
       23 LOADN                            R7 159
       24 SETTABLEKS                       R7 R6 K5 ["assetId"]
       26 LOADK                            R7 K9 ["HasPermission"]
       27 SETTABLEKS                       R7 R6 K6 ["status"]
       29 DUPTABLE                         R7 K7 [{"action", "assetId", "status"}]
       30 LOADK                            R8 K11 ["GrantAssetPermissions"]
       31 SETTABLEKS                       R8 R7 K4 ["action"]
       33 LOADN                            R8 159
       34 SETTABLEKS                       R8 R7 K5 ["assetId"]
       36 LOADK                            R8 K9 ["HasPermission"]
       37 SETTABLEKS                       R8 R7 K6 ["status"]
       39 DUPTABLE                         R8 K7 [{"action", "assetId", "status"}]
       40 LOADK                            R9 K8 ["Use"]
       41 SETTABLEKS                       R9 R8 K4 ["action"]
       43 LOADN                            R9 55
       44 SETTABLEKS                       R9 R8 K5 ["assetId"]
       46 LOADK                            R9 K9 ["HasPermission"]
       47 SETTABLEKS                       R9 R8 K6 ["status"]
       49 DUPTABLE                         R9 K7 [{"action", "assetId", "status"}]
       50 LOADK                            R10 K10 ["Edit"]
       51 SETTABLEKS                       R10 R9 K4 ["action"]
       53 LOADN                            R10 55
       54 SETTABLEKS                       R10 R9 K5 ["assetId"]
       56 LOADK                            R10 K9 ["HasPermission"]
       57 SETTABLEKS                       R10 R9 K6 ["status"]
       59 DUPTABLE                         R10 K7 [{"action", "assetId", "status"}]
       60 LOADK                            R11 K11 ["GrantAssetPermissions"]
       61 SETTABLEKS                       R11 R10 K4 ["action"]
       63 LOADN                            R11 55
       64 SETTABLEKS                       R11 R10 K5 ["assetId"]
       66 LOADK                            R11 K12 ["NoPermission"]
       67 SETTABLEKS                       R11 R10 K6 ["status"]
       69 DUPTABLE                         R11 K7 [{"action", "assetId", "status"}]
       70 LOADK                            R12 K11 ["GrantAssetPermissions"]
       71 SETTABLEKS                       R12 R11 K4 ["action"]
       73 LOADN                            R12 86
       74 SETTABLEKS                       R12 R11 K5 ["assetId"]
       76 LOADK                            R12 K13 ["AssetNotFound"]
       77 SETTABLEKS                       R12 R11 K6 ["status"]
       79 DUPTABLE                         R12 K7 [{"action", "assetId", "status"}]
       80 LOADK                            R13 K10 ["Edit"]
       81 SETTABLEKS                       R13 R12 K4 ["action"]
       83 LOADN                            R13 37
       84 SETTABLEKS                       R13 R12 K5 ["assetId"]
       86 LOADK                            R13 K14 ["UnknownError"]
       87 SETTABLEKS                       R13 R12 K6 ["status"]
       89 DUPTABLE                         R13 K7 [{"action", "assetId", "status"}]
       90 LOADK                            R14 K8 ["Use"]
       91 SETTABLEKS                       R14 R13 K4 ["action"]
       93 LOADN                            R14 172
       94 SETTABLEKS                       R14 R13 K5 ["assetId"]
       96 LOADK                            R14 K12 ["NoPermission"]
       97 SETTABLEKS                       R14 R13 K6 ["status"]
       99 DUPTABLE                         R14 K7 [{"action", "assetId", "status"}]
      100 LOADK                            R15 K10 ["Edit"]
      101 SETTABLEKS                       R15 R14 K4 ["action"]
      103 LOADN                            R15 172
      104 SETTABLEKS                       R15 R14 K5 ["assetId"]
      106 LOADK                            R15 K12 ["NoPermission"]
      107 SETTABLEKS                       R15 R14 K6 ["status"]
      109 DUPTABLE                         R15 K7 [{"action", "assetId", "status"}]
      110 LOADK                            R16 K11 ["GrantAssetPermissions"]
      111 SETTABLEKS                       R16 R15 K4 ["action"]
      113 LOADN                            R16 172
      114 SETTABLEKS                       R16 R15 K5 ["assetId"]
      116 LOADK                            R16 K12 ["NoPermission"]
      117 SETTABLEKS                       R16 R15 K6 ["status"]
      119 SETLIST                          R4 R5 11 [1]
      121 GETTABLEKS                       R5 R3 K0 ["responseBody"]
      123 SETTABLEKS                       R4 R5 K15 ["results"]
      125 GETUPVAL                         R5 0
      126 GETTABLEKS                       R5 R5 K16 ["resolve"]
      128 MOVE                             R6 R3
      129 CALL                             R5 1 -1
      130 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["categoryName"]
        2 GETTABLEKS                       R3 R1 K1 ["sortType"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R2
        6 MOVE                             R6 R3
        7 CALL                             R4 2 0
        8 DUPTABLE                         R4 K3 [{"responseBody"}]
        9 DUPTABLE                         R5 K6 [{"totalResults", "nextPageCursor"}]
       10 GETTABLEKS                       R6 R0 K7 ["assetCount"]
       12 SETTABLEKS                       R6 R5 K4 ["totalResults"]
       14 LOADK                            R6 K5 ["nextPageCursor"]
       15 SETTABLEKS                       R6 R5 K5 ["nextPageCursor"]
       17 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       19 NEWTABLE                         R5 0 0
       21 LOADN                            R8 1
       22 GETTABLEKS                       R6 R0 K7 ["assetCount"]
       24 LOADN                            R7 1
       25 FORNPREP                         R6
       26 DUPTABLE                         R9 K10 [{"id", "itemType"}]
       27 SETTABLEKS                       R8 R9 K8 ["id"]
       29 LOADK                            R10 K11 ["Asset"]
       30 SETTABLEKS                       R10 R9 K9 ["itemType"]
       32 SETTABLE                         R9 R5 R8
       33 FORNLOOP                         R6
       34 GETTABLEKS                       R6 R4 K2 ["responseBody"]
       36 SETTABLEKS                       R5 R6 K12 ["data"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K13 ["resolve"]
       41 MOVE                             R7 R4
       42 CALL                             R6 1 -1
       43 RETURN                           R6 -1

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
       19 DUPTABLE                         R7 K8 [{"id", "itemType"}]
       20 SETTABLEKS                       R6 R7 K6 ["id"]
       22 LOADK                            R8 K9 ["Asset"]
       23 SETTABLEKS                       R8 R7 K7 ["itemType"]
       25 SETTABLE                         R7 R3 R6
       26 FORNLOOP                         R4
       27 GETTABLEKS                       R4 R2 K0 ["responseBody"]
       29 GETTABLEKS                       R4 R4 K3 ["results"]
       31 SETTABLEKS                       R3 R4 K10 ["data"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K11 ["resolve"]
       36 MOVE                             R5 R2
       37 CALL                             R4 1 -1
       38 RETURN                           R4 -1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"responseBody"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 NEWTABLE                         R1 0 0
        7 LOADN                            R4 1
        8 LOADN                            R2 10
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 DUPTABLE                         R5 K4 [{"assetId", "name"}]
       12 SETTABLEKS                       R4 R5 K2 ["assetId"]
       14 LOADK                            R6 K5 ["Dummy"]
       15 SETTABLEKS                       R6 R5 K3 ["name"]
       17 SETTABLE                         R5 R1 R4
       18 FORNLOOP                         R2
       19 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       21 SETTABLEKS                       R1 R2 K6 ["data"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["resolve"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

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
       28 DUPTABLE                         R7 K9 [{"assetId", "displayName", "assetSubType"}]
       29 SETTABLEKS                       R4 R7 K4 ["assetId"]
       31 LOADK                            R9 K7 ["Asset "]
       32 MOVE                             R10 R4
       33 CONCAT                           R8 R9 R10
       34 SETTABLEKS                       R8 R7 K5 ["displayName"]
       36 LOADK                            R8 K10 ["AnimationGraph"]
       37 SETTABLEKS                       R8 R7 K8 ["assetSubType"]
       39 SETTABLEKS                       R7 R6 K2 ["asset"]
       41 SETTABLEKS                       R6 R5 K0 ["assetItem"]
       43 SETTABLE                         R5 R1 R4
       44 FORNLOOP                         R2
       45 MOVE                             R2 R1
       46 JUMPIFNOTEQKS                    R0 K11 ["Animation"] ; [+25]
       48 NEWTABLE                         R2 0 0
       50 MOVE                             R3 R1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 GETTABLEKS                       R8 R7 K0 ["assetItem"]
       56 GETTABLEKS                       R8 R8 K2 ["asset"]
       58 GETTABLEKS                       R8 R8 K8 ["assetSubType"]
       60 JUMPIFNOTEQKNIL                  R8 ; [+8]
       62 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       64 MOVE                             R9 R2
       65 MOVE                             R10 R7
       66 GETIMPORT                        R8 K14 [table.insert]
       68 CALL                             R8 2 0
       69 FORGLOOP                         R3 2 ; [-16]
       71 JUMP                             ; [+25]
       72 JUMPIFNOTEQKS                    R0 K10 ["AnimationGraph"] ; [+24]
       74 NEWTABLE                         R2 0 0
       76 MOVE                             R3 R1
       77 LOADNIL                          R4
       78 LOADNIL                          R5
       79 FORGPREP                         R3
       80 GETTABLEKS                       R8 R7 K0 ["assetItem"]
       82 GETTABLEKS                       R8 R8 K2 ["asset"]
       84 GETTABLEKS                       R8 R8 K8 ["assetSubType"]
       86 JUMPIFNOTEQKS                    R8 K10 ["AnimationGraph"] ; [+8]
       88 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       90 MOVE                             R9 R2
       91 MOVE                             R10 R7
       92 GETIMPORT                        R8 K14 [table.insert]
       94 CALL                             R8 2 0
       95 FORGLOOP                         R3 2 ; [-16]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K15 ["resolve"]
      100 DUPTABLE                         R4 K17 [{"responseBody"}]
      101 DUPTABLE                         R5 K19 [{"items"}]
      102 SETTABLEKS                       R2 R5 K18 ["items"]
      104 SETTABLEKS                       R5 R4 K16 ["responseBody"]
      106 CALL                             R3 1 -1
      107 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["assetType"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_18:
        0 DUPTABLE                         R3 K1 [{"responseBody"}]
        1 DUPTABLE                         R4 K4 [{"id", "name"}]
        2 LOADK                            R5 K5 ["1010101"]
        3 SETTABLEKS                       R5 R4 K2 ["id"]
        5 LOADK                            R5 K6 ["testAccount"]
        6 SETTABLEKS                       R5 R4 K3 ["name"]
        8 SETTABLEKS                       R4 R3 K0 ["responseBody"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K7 ["resolve"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

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
        0 DUPTABLE                         R3 K1 [{"userVote"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["userVote"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["resolve"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 -1
        9 RETURN                           R4 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K4 [{"model", "success", "message"}]
        4 DUPTABLE                         R4 K11 [{"HasVoted", "CanVote", "upVotes", "UserVote", "DownVote", "ShowVotes"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K5 ["HasVoted"]
        8 LOADB                            R5 1
        9 SETTABLEKS                       R5 R4 K6 ["CanVote"]
       11 LOADN                            R5 155
       12 SETTABLEKS                       R5 R4 K7 ["upVotes"]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K8 ["UserVote"]
       17 LOADN                            R5 69
       18 SETTABLEKS                       R5 R4 K9 ["DownVote"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K10 ["ShowVotes"]
       23 SETTABLEKS                       R4 R3 K1 ["model"]
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K2 ["success"]
       28 LOADK                            R4 K12 ["This is a test message"]
       29 SETTABLEKS                       R4 R3 K3 ["message"]
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K4 [{"model", "success", "message"}]
        4 DUPTABLE                         R4 K11 [{"HasVoted", "CanVote", "upVotes", "UserVote", "DownVote", "ShowVotes"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K5 ["HasVoted"]
        8 LOADB                            R5 1
        9 SETTABLEKS                       R5 R4 K6 ["CanVote"]
       11 LOADN                            R5 154
       12 SETTABLEKS                       R5 R4 K7 ["upVotes"]
       14 LOADK                            R5 K12 [""]
       15 SETTABLEKS                       R5 R4 K8 ["UserVote"]
       17 LOADN                            R5 69
       18 SETTABLEKS                       R5 R4 K9 ["DownVote"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K10 ["ShowVotes"]
       23 SETTABLEKS                       R4 R3 K1 ["model"]
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K2 ["success"]
       28 LOADK                            R4 K13 ["This is a test message"]
       29 SETTABLEKS                       R4 R3 K3 ["message"]
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1

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
        4 DUPTABLE                         R4 K4 [{"robux"}]
        5 LOADK                            R5 K5 ["16"]
        6 SETTABLEKS                       R5 R4 K3 ["robux"]
        8 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 LOADK                            R4 K3 ["10"]
        5 SETTABLEKS                       R4 R3 K1 ["responseBody"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 DUPTABLE                         R5 K4 [{"totalCount"}]
        5 LOADN                            R6 0
        6 SETTABLEKS                       R6 R5 K3 ["totalCount"]
        8 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

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
        7 DUPTABLE                         R6 K8 [{"imageUrl", "state", "targetId"}]
        8 LOADK                            R7 K9 ["fake_image_url"]
        9 SETTABLEKS                       R7 R6 K5 ["imageUrl"]
       11 LOADK                            R7 K10 ["Completed"]
       12 SETTABLEKS                       R7 R6 K6 ["state"]
       14 LOADN                            R7 57
       15 SETTABLEKS                       R7 R6 K7 ["targetId"]
       17 SETTABLEN                        R6 R5 1
       18 SETTABLEKS                       R5 R4 K3 ["data"]
       20 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 DUPTABLE                         R2 K2 [{"responseBody"}]
        4 DUPTABLE                         R3 K4 [{"isVerifiedCreator"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K3 ["isVerifiedCreator"]
        8 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_41:
        0 GETIMPORT                        R2 K3 [Enum.AssetType.Audio]
        2 JUMPIFNOTEQ                      R1 R2 ; [+177]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["resolve"]
        7 DUPTABLE                         R3 K6 [{"responseBody"}]
        8 DUPTABLE                         R4 K9 [{"topKeywords", "sections"}]
        9 NEWTABLE                         R5 0 0
       11 SETTABLEKS                       R5 R4 K7 ["topKeywords"]
       13 NEWTABLE                         R5 0 1
       15 DUPTABLE                         R6 K13 [{"displayName", "name", "subcategory"}]
       16 LOADK                            R7 K14 ["Categories"]
       17 SETTABLEKS                       R7 R6 K10 ["displayName"]
       19 LOADK                            R7 K15 ["categories"]
       20 SETTABLEKS                       R7 R6 K11 ["name"]
       22 DUPTABLE                         R7 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
       23 LOADK                            R8 K24 ["audio"]
       24 SETTABLEKS                       R8 R7 K11 ["name"]
       26 LOADK                            R8 K2 ["Audio"]
       27 SETTABLEKS                       R8 R7 K10 ["displayName"]
       29 LOADB                            R8 0
       30 SETTABLEKS                       R8 R7 K16 ["hidden"]
       32 LOADK                            R8 K24 ["audio"]
       33 SETTABLEKS                       R8 R7 K17 ["searchKeywords"]
       35 DUPTABLE                         R8 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
       36 LOADK                            R9 K24 ["audio"]
       37 SETTABLEKS                       R9 R8 K25 ["keyword"]
       39 LOADNIL                          R9
       40 SETTABLEKS                       R9 R8 K26 ["assetSubTypes"]
       42 LOADNIL                          R9
       43 SETTABLEKS                       R9 R8 K27 ["creatorTargetId"]
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K28 ["creatorType"]
       48 LOADNIL                          R9
       49 SETTABLEKS                       R9 R8 K29 ["excludeAssetSubTypes"]
       51 SETTABLEKS                       R8 R7 K18 ["queryParams"]
       53 NEWTABLE                         R8 0 1
       55 LOADK                            R9 K24 ["audio"]
       56 SETTABLEN                        R9 R8 1
       57 SETTABLEKS                       R8 R7 K19 ["path"]
       59 LOADN                            R8 0
       60 SETTABLEKS                       R8 R7 K20 ["index"]
       62 NEWTABLE                         R8 2 0
       64 DUPTABLE                         R9 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
       65 LOADK                            R10 K31 ["music"]
       66 SETTABLEKS                       R10 R9 K11 ["name"]
       68 LOADK                            R10 K32 ["Music"]
       69 SETTABLEKS                       R10 R9 K10 ["displayName"]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K16 ["hidden"]
       74 LOADK                            R10 K31 ["music"]
       75 SETTABLEKS                       R10 R9 K17 ["searchKeywords"]
       77 DUPTABLE                         R10 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
       78 LOADK                            R11 K31 ["music"]
       79 SETTABLEKS                       R11 R10 K25 ["keyword"]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K26 ["assetSubTypes"]
       84 LOADNIL                          R11
       85 SETTABLEKS                       R11 R10 K27 ["creatorTargetId"]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K28 ["creatorType"]
       90 LOADNIL                          R11
       91 SETTABLEKS                       R11 R10 K29 ["excludeAssetSubTypes"]
       93 SETTABLEKS                       R10 R9 K18 ["queryParams"]
       95 NEWTABLE                         R10 0 2
       97 LOADK                            R11 K24 ["audio"]
       98 SETTABLEN                        R11 R10 1
       99 LOADK                            R11 K31 ["music"]
      100 SETTABLEN                        R11 R10 2
      101 SETTABLEKS                       R10 R9 K19 ["path"]
      103 LOADN                            R10 0
      104 SETTABLEKS                       R10 R9 K20 ["index"]
      106 NEWTABLE                         R10 0 0
      108 SETTABLEKS                       R10 R9 K21 ["children"]
      110 LOADN                            R10 0
      111 SETTABLEKS                       R10 R9 K22 ["childCount"]
      113 SETTABLEKS                       R9 R8 K31 ["music"]
      115 DUPTABLE                         R9 K23 [{"name", "displayName", "hidden", "searchKeywords", "queryParams", "path", "index", "children", "childCount"}]
      116 LOADK                            R10 K33 ["sound-effect"]
      117 SETTABLEKS                       R10 R9 K11 ["name"]
      119 LOADK                            R10 K34 ["Sound Effect"]
      120 SETTABLEKS                       R10 R9 K10 ["displayName"]
      122 LOADB                            R10 0
      123 SETTABLEKS                       R10 R9 K16 ["hidden"]
      125 LOADK                            R10 K33 ["sound-effect"]
      126 SETTABLEKS                       R10 R9 K17 ["searchKeywords"]
      128 DUPTABLE                         R10 K30 [{"keyword", "assetSubTypes", "creatorTargetId", "creatorType", "excludeAssetSubTypes"}]
      129 LOADK                            R11 K33 ["sound-effect"]
      130 SETTABLEKS                       R11 R10 K25 ["keyword"]
      132 LOADNIL                          R11
      133 SETTABLEKS                       R11 R10 K26 ["assetSubTypes"]
      135 LOADNIL                          R11
      136 SETTABLEKS                       R11 R10 K27 ["creatorTargetId"]
      138 LOADNIL                          R11
      139 SETTABLEKS                       R11 R10 K28 ["creatorType"]
      141 LOADNIL                          R11
      142 SETTABLEKS                       R11 R10 K29 ["excludeAssetSubTypes"]
      144 SETTABLEKS                       R10 R9 K18 ["queryParams"]
      146 NEWTABLE                         R10 0 2
      148 LOADK                            R11 K24 ["audio"]
      149 SETTABLEN                        R11 R10 1
      150 LOADK                            R11 K33 ["sound-effect"]
      151 SETTABLEN                        R11 R10 2
      152 SETTABLEKS                       R10 R9 K19 ["path"]
      154 LOADN                            R10 1
      155 SETTABLEKS                       R10 R9 K20 ["index"]
      157 NEWTABLE                         R10 0 0
      159 SETTABLEKS                       R10 R9 K21 ["children"]
      161 LOADN                            R10 0
      162 SETTABLEKS                       R10 R9 K22 ["childCount"]
      164 SETTABLEKS                       R9 R8 K33 ["sound-effect"]
      166 SETTABLEKS                       R8 R7 K21 ["children"]
      168 LOADN                            R8 2
      169 SETTABLEKS                       R8 R7 K22 ["childCount"]
      171 SETTABLEKS                       R7 R6 K12 ["subcategory"]
      173 SETTABLEN                        R6 R5 1
      174 SETTABLEKS                       R5 R4 K8 ["sections"]
      176 SETTABLEKS                       R4 R3 K5 ["responseBody"]
      178 CALL                             R2 1 -1
      179 RETURN                           R2 -1
      180 GETUPVAL                         R2 0
      181 GETTABLEKS                       R2 R2 K4 ["resolve"]
      183 DUPTABLE                         R3 K6 [{"responseBody"}]
      184 DUPTABLE                         R4 K9 [{"topKeywords", "sections"}]
      185 NEWTABLE                         R5 0 0
      187 SETTABLEKS                       R5 R4 K7 ["topKeywords"]
      189 NEWTABLE                         R5 0 0
      191 SETTABLEKS                       R5 R4 K8 ["sections"]
      193 SETTABLEKS                       R4 R3 K5 ["responseBody"]
      195 CALL                             R2 1 -1
      196 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K5 [{"name", "rootPlaceId"}]
        5 LOADK                            R5 K6 ["Universe"]
        6 SETTABLEKS                       R5 R4 K3 ["name"]
        8 LOADN                            R5 57
        9 SETTABLEKS                       R5 R4 K4 ["rootPlaceId"]
       11 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOT                        R1 ; [+18]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["resolve"]
        4 DUPTABLE                         R5 K4 [{"actualPrice", "checkoutUrl", "purchaseTransactionStatus"}]
        5 GETTABLEKS                       R6 R2 K5 ["expectedPrice"]
        7 SETTABLEKS                       R6 R5 K1 ["actualPrice"]
        9 LOADK                            R6 K6 ["http://create.roblox.com"]
       10 SETTABLEKS                       R6 R5 K2 ["checkoutUrl"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K7 ["Success"]
       15 SETTABLEKS                       R6 R5 K3 ["purchaseTransactionStatus"]
       17 CALL                             R4 1 -1
       18 RETURN                           R4 -1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["resolve"]
       22 DUPTABLE                         R5 K9 [{"responseBody"}]
       23 DUPTABLE                         R6 K11 [{"purchased"}]
       24 LOADB                            R7 1
       25 SETTABLEKS                       R7 R6 K10 ["purchased"]
       27 SETTABLEKS                       R6 R5 K8 ["responseBody"]
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K5 [{"isEligible", "configurations"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K3 ["isEligible"]
        8 NEWTABLE                         R5 0 1
       10 DUPTABLE                         R6 K8 [{"type", "isOptOut"}]
       11 LOADK                            R7 K9 ["AvatarBundles"]
       12 SETTABLEKS                       R7 R6 K6 ["type"]
       14 LOADB                            R7 0
       15 SETTABLEKS                       R7 R6 K7 ["isOptOut"]
       17 SETTABLEN                        R6 R5 1
       18 SETTABLEKS                       R5 R4 K4 ["configurations"]
       20 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseCode"}]
        4 LOADN                            R5 200
        5 SETTABLEKS                       R5 R4 K1 ["responseCode"]
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1

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
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 LOADB                            R5 0
        5 SETTABLEKS                       R5 R4 K1 ["responseBody"]
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1

PROTO_49:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 DUPTABLE                         R2 K2 [{"responseBody"}]
        4 DUPTABLE                         R3 K4 [{"data"}]
        5 NEWTABLE                         R4 0 1
        7 DUPTABLE                         R5 K6 [{"versionId"}]
        8 LOADN                            R6 1
        9 SETTABLEKS                       R6 R5 K5 ["versionId"]
       11 SETTABLEN                        R5 R4 1
       12 SETTABLEKS                       R4 R3 K3 ["data"]
       14 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K5 [{"price", "canAfford"}]
        5 LOADN                            R5 238
        6 SETTABLEKS                       R5 R4 K3 ["price"]
        8 LOADB                            R5 1
        9 SETTABLEKS                       R5 R4 K4 ["canAfford"]
       11 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_52:
        0 DUPTABLE                         R2 K1 [{"data"}]
        1 NEWTABLE                         R3 0 1
        3 DUPTABLE                         R4 K8 [{"assetId", "name", "description", "assetType", "created", "updated"}]
        4 SETTABLEKS                       R1 R4 K2 ["assetId"]
        6 LOADK                            R5 K9 ["Test Asset"]
        7 SETTABLEKS                       R5 R4 K3 ["name"]
        9 LOADK                            R5 K10 ["Test Description"]
       10 SETTABLEKS                       R5 R4 K4 ["description"]
       12 LOADK                            R5 K11 ["Models"]
       13 SETTABLEKS                       R5 R4 K5 ["assetType"]
       15 LOADK                            R5 K12 ["2019-08-09T21:41:51.97Z"]
       16 SETTABLEKS                       R5 R4 K6 ["created"]
       18 LOADK                            R5 K13 ["2021-05-06T19:56:54.437Z"]
       19 SETTABLEKS                       R5 R4 K7 ["updated"]
       21 SETLIST                          R3 R4 1 [1]
       23 SETTABLEKS                       R3 R2 K0 ["data"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K14 ["resolve"]
       28 DUPTABLE                         R4 K16 [{"responseBody"}]
       29 GETUPVAL                         R5 1
       30 MOVE                             R7 R2
       31 NAMECALL                         R5 R5 K17 ["JSONEncode"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K15 ["responseBody"]
       36 CALL                             R3 1 -1
       37 RETURN                           R3 -1

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 NEWTABLE                         R5 0 1
        6 DUPTABLE                         R6 K9 [{"assetId", "name", "description", "assetType", "created", "updated"}]
        7 FASTCALL1                        TONUMBER R2 ; [+3]
        8 MOVE                             R8 R2
        9 GETIMPORT                        R7 K11 [tonumber]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R7 R6 K3 ["assetId"]
       14 LOADK                            R7 K12 ["Test Asset"]
       15 SETTABLEKS                       R7 R6 K4 ["name"]
       17 LOADK                            R7 K13 ["Test Description"]
       18 SETTABLEKS                       R7 R6 K5 ["description"]
       20 LOADK                            R7 K14 ["Models"]
       21 SETTABLEKS                       R7 R6 K6 ["assetType"]
       23 LOADK                            R7 K15 ["2019-08-09T21:41:51.97Z"]
       24 SETTABLEKS                       R7 R6 K7 ["created"]
       26 LOADK                            R7 K16 ["2021-05-06T19:56:54.437Z"]
       27 SETTABLEKS                       R7 R6 K8 ["updated"]
       29 SETLIST                          R5 R6 1 [1]
       31 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 DUPTABLE                         R3 K2 [{"responseBody"}]
        4 DUPTABLE                         R4 K4 [{"results"}]
        5 NEWTABLE                         R5 0 2
        7 DUPTABLE                         R6 K8 [{"action", "assetId", "status"}]
        8 LOADK                            R7 K9 ["Use"]
        9 SETTABLEKS                       R7 R6 K5 ["action"]
       11 SETTABLEKS                       R1 R6 K6 ["assetId"]
       13 LOADK                            R7 K10 ["HasPermission"]
       14 SETTABLEKS                       R7 R6 K7 ["status"]
       16 DUPTABLE                         R7 K8 [{"action", "assetId", "status"}]
       17 LOADK                            R8 K11 ["Edit"]
       18 SETTABLEKS                       R8 R7 K5 ["action"]
       20 SETTABLEKS                       R1 R7 K6 ["assetId"]
       22 LOADK                            R8 K10 ["HasPermission"]
       23 SETTABLEKS                       R8 R7 K7 ["status"]
       25 SETLIST                          R5 R6 2 [1]
       27 SETTABLEKS                       R5 R4 K3 ["results"]
       29 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1

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
      265 CAPTURE                          VAL R1
      266 SETTABLEKS                       R15 R8 K119 ["getDevelopAssetMetadata"]
      268 DUPCLOSURE                       R15 K120 [PROTO_53]
      269 CAPTURE                          VAL R3
      270 SETTABLEKS                       R15 R8 K121 ["getItem"]
      272 DUPCLOSURE                       R15 K122 [PROTO_54]
      273 CAPTURE                          VAL R3
      274 SETTABLEKS                       R15 R8 K123 ["getAssetPermissions"]
      276 RETURN                           R8 1
