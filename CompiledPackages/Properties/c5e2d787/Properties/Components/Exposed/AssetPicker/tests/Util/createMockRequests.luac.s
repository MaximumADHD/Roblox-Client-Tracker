PROTO_0:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K2 [tonumber]
        4 CALL                             R4 1 1
        5 ORK                              R3 R4 K0 [1]
        6 ADD                              R6 R3 R2
        7 SUBK                             R5 R6 K0 [1]
        8 LENGTH                           R6 R0
        9 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       11 GETIMPORT                        R4 K5 [math.min]
       13 CALL                             R4 2 1
       14 NEWTABLE                         R5 0 0
       16 MOVE                             R8 R3
       17 MOVE                             R6 R4
       18 LOADN                            R7 1
       19 FORNPREP                         R6
       20 GETTABLE                         R11 R0 R8
       21 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       23 MOVE                             R10 R5
       24 GETIMPORT                        R9 K8 [table.insert]
       26 CALL                             R9 2 0
       27 FORNLOOP                         R6
       28 LENGTH                           R7 R0
       29 JUMPIFNOTLT                      R4 R7 ; [+7]
       31 ADDK                             R7 R4 K0 [1]
       32 FASTCALL1                        TOSTRING R7 ; [+2]
       33 GETIMPORT                        R6 K10 [tostring]
       35 CALL                             R6 1 1
       36 RETURN                           R5 2
       37 LOADNIL                          R6
       38 RETURN                           R5 2

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 NAMECALL                         R2 R0 K3 ["lower"]
        4 CALL                             R2 1 1
        5 LOADK                            R3 K4 ["%s+"]
        6 LOADK                            R4 K5 [""]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K9 [{["name"] = "", ["creatorType"] = "User", ["creatorTargetId"] = 0}]
        7 SETTABLEKS                       R3 R2 K1 ["responseBody"]
        9 RETURN                           R1 2
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K10 ["requestToYield"]
       13 JUMPIFEQKS                       R1 K11 ["All"] ; [+6]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K10 ["requestToYield"]
       18 JUMPIFNOTEQKS                    R1 K12 ["Scope"] ; [+4]
       20 GETIMPORT                        R1 K15 [coroutine.yield]
       22 CALL                             R1 0 0
       23 LOADK                            R1 K4 [""]
       24 GETUPVAL                         R2 1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLEKS                       R7 R6 K16 ["type"]
       30 JUMPIFNOTEQKS                    R7 K17 ["Universe"] ; [+9]
       32 GETTABLEKS                       R7 R6 K18 ["id"]
       34 GETTABLEKS                       R8 R0 K19 ["gameId"]
       36 JUMPIFNOTEQ                      R7 R8 ; [+3]
       38 GETTABLEKS                       R1 R6 K3 ["name"]
       40 FORGLOOP                         R2 2 ; [-13]
       42 LOADK                            R2 K6 ["User"]
       43 LOADN                            R3 0
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K20 ["universeInfo"]
       47 GETTABLEKS                       R5 R0 K19 ["gameId"]
       49 GETTABLEKS                       R6 R4 K19 ["gameId"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+9]
       53 GETTABLEKS                       R5 R4 K21 ["creatorInfo"]
       55 GETTABLEKS                       R2 R5 K16 ["type"]
       57 GETTABLEKS                       R5 R4 K21 ["creatorInfo"]
       59 GETTABLEKS                       R3 R5 K18 ["id"]
       61 LOADB                            R5 1
       62 DUPTABLE                         R6 K2 [{"responseBody"}]
       63 DUPTABLE                         R7 K22 [{"name", "creatorType", "creatorTargetId"}]
       64 SETTABLEKS                       R1 R7 K3 ["name"]
       66 SETTABLEKS                       R2 R7 K5 ["creatorType"]
       68 SETTABLEKS                       R3 R7 K7 ["creatorTargetId"]
       70 SETTABLEKS                       R7 R6 K1 ["responseBody"]
       72 RETURN                           R5 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K4 [{"groups"}]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["groups"]
       11 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       13 RETURN                           R1 2
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["requestToYield"]
       17 JUMPIFEQKS                       R1 K6 ["All"] ; [+6]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["requestToYield"]
       22 JUMPIFNOTEQKS                    R1 K7 ["Scope"] ; [+4]
       24 GETIMPORT                        R1 K10 [coroutine.yield]
       26 CALL                             R1 0 0
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R2 1
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETTABLEKS                       R7 R6 K11 ["type"]
       35 JUMPIFNOTEQKS                    R7 K12 ["Group"] ; [+16]
       37 DUPTABLE                         R9 K15 [{"id", "name"}]
       38 GETTABLEKS                       R10 R6 K13 ["id"]
       40 SETTABLEKS                       R10 R9 K13 ["id"]
       42 GETTABLEKS                       R10 R6 K14 ["name"]
       44 SETTABLEKS                       R10 R9 K14 ["name"]
       46 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       48 MOVE                             R8 R1
       49 GETIMPORT                        R7 K18 [table.insert]
       51 CALL                             R7 2 0
       52 FORGLOOP                         R2 2 ; [-20]
       54 LOADB                            R2 1
       55 DUPTABLE                         R3 K2 [{"responseBody"}]
       56 DUPTABLE                         R4 K4 [{"groups"}]
       57 SETTABLEKS                       R1 R4 K3 ["groups"]
       59 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       61 RETURN                           R2 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K5 [{["displayName"] = ""}]
        7 SETTABLEKS                       R3 R2 K1 ["responseBody"]
        9 RETURN                           R1 2
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       13 JUMPIFEQKS                       R1 K7 ["All"] ; [+6]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       18 JUMPIFNOTEQKS                    R1 K8 ["Scope"] ; [+4]
       20 GETIMPORT                        R1 K11 [coroutine.yield]
       22 CALL                             R1 0 0
       23 GETUPVAL                         R1 1
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETTABLEKS                       R6 R5 K12 ["type"]
       29 JUMPIFNOTEQKS                    R6 K13 ["User"] ; [+17]
       31 GETTABLEKS                       R6 R5 K14 ["id"]
       33 GETTABLEKS                       R7 R0 K15 ["userId"]
       35 JUMPIFNOTEQ                      R6 R7 ; [+11]
       37 LOADB                            R6 1
       38 DUPTABLE                         R7 K2 [{"responseBody"}]
       39 DUPTABLE                         R8 K16 [{"displayName"}]
       40 GETTABLEKS                       R9 R5 K17 ["name"]
       42 SETTABLEKS                       R9 R8 K3 ["displayName"]
       44 SETTABLEKS                       R8 R7 K1 ["responseBody"]
       46 RETURN                           R6 2
       47 FORGLOOP                         R1 2 ; [-21]
       49 LOADB                            R1 1
       50 DUPTABLE                         R2 K2 [{"responseBody"}]
       51 DUPTABLE                         R3 K5 [{["displayName"] = ""}]
       52 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       54 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K6 [{["items"], ["nextPageToken"] = }]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["items"]
       11 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       13 RETURN                           R1 2
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K7 ["requestToYield"]
       17 JUMPIFEQKS                       R1 K8 ["All"] ; [+6]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K7 ["requestToYield"]
       22 JUMPIFNOTEQKS                    R1 K9 ["Asset"] ; [+4]
       24 GETIMPORT                        R1 K12 [coroutine.yield]
       26 CALL                             R1 0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R2 R0 K13 ["scopeParams"]
       30 GETTABLEKS                       R2 R2 K14 ["Type"]
       32 GETTABLEKS                       R3 R0 K13 ["scopeParams"]
       34 GETTABLEKS                       R3 R3 K15 ["Id"]
       36 CALL                             R1 2 1
       37 GETUPVAL                         R3 2
       38 GETTABLE                         R2 R3 R1
       39 JUMPIF                           R2 ; [+2]
       40 NEWTABLE                         R2 0 0
       42 GETTABLEKS                       R3 R0 K16 ["query"]
       44 JUMPIFEQKS                       R3 K17 [""] ; [+84]
       46 NEWTABLE                         R3 0 0
       48 GETTABLEKS                       R5 R0 K16 ["query"]
       50 GETIMPORT                        R6 K20 [string.gsub]
       52 NAMECALL                         R7 R5 K21 ["lower"]
       54 CALL                             R7 1 1
       55 LOADK                            R8 K22 ["%s+"]
       56 LOADK                            R9 K17 [""]
       57 CALL                             R6 3 1
       58 MOVE                             R4 R6
       59 LOADNIL                          R5
       60 LOADK                            R8 K23 ["^rbxassetid://(.+)$"]
       61 NAMECALL                         R6 R4 K24 ["match"]
       63 CALL                             R6 2 1
       64 JUMPIFNOT                        R6 ; [+7]
       65 FASTCALL1                        TONUMBER R6 ; [+3]
       66 MOVE                             R8 R6
       67 GETIMPORT                        R7 K26 [tonumber]
       69 CALL                             R7 1 1
       70 MOVE                             R5 R7
       71 JUMP                             ; [+6]
       72 FASTCALL1                        TONUMBER R4 ; [+3]
       73 MOVE                             R8 R4
       74 GETIMPORT                        R7 K26 [tonumber]
       76 CALL                             R7 1 1
       77 MOVE                             R5 R7
       78 MOVE                             R7 R2
       79 LOADNIL                          R8
       80 LOADNIL                          R9
       81 FORGPREP                         R7
       82 GETTABLEKS                       R12 R11 K27 ["assetItem"]
       84 GETTABLEKS                       R12 R12 K28 ["asset"]
       86 GETTABLEKS                       R14 R12 K29 ["displayName"]
       88 GETIMPORT                        R15 K20 [string.gsub]
       90 NAMECALL                         R16 R14 K21 ["lower"]
       92 CALL                             R16 1 1
       93 LOADK                            R17 K22 ["%s+"]
       94 LOADK                            R18 K17 [""]
       95 CALL                             R15 3 1
       96 MOVE                             R13 R15
       97 GETIMPORT                        R15 K31 [string.find]
       99 MOVE                             R16 R13
      100 MOVE                             R17 R4
      101 LOADN                            R18 1
      102 LOADB                            R19 1
      103 CALL                             R15 4 1
      104 JUMPIFNOTEQKNIL                  R15 ; [+2]
      106 LOADB                            R14 0 +1
      107 LOADB                            R14 1
      108 LOADB                            R15 0
      109 JUMPIFEQKNIL                     R5 ; [+7]
      111 GETTABLEKS                       R16 R12 K32 ["assetId"]
      113 JUMPIFEQ                         R16 R5 ; [+2]
      115 LOADB                            R15 0 +1
      116 LOADB                            R15 1
      117 JUMPIF                           R14 ; [+1]
      118 JUMPIFNOT                        R15 ; [+7]
      119 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      121 MOVE                             R17 R3
      122 MOVE                             R18 R11
      123 GETIMPORT                        R16 K35 [table.insert]
      125 CALL                             R16 2 0
      126 FORGLOOP                         R7 2 ; [-45]
      128 MOVE                             R2 R3
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K36 ["pageSize"]
      132 JUMPIFEQKNIL                     R3 ; [+19]
      134 GETUPVAL                         R3 3
      135 MOVE                             R4 R2
      136 GETTABLEKS                       R5 R0 K37 ["pageToken"]
      138 GETUPVAL                         R6 0
      139 GETTABLEKS                       R6 R6 K36 ["pageSize"]
      141 CALL                             R3 3 2
      142 LOADB                            R5 1
      143 DUPTABLE                         R6 K2 [{"responseBody"}]
      144 DUPTABLE                         R7 K38 [{"items", "nextPageToken"}]
      145 SETTABLEKS                       R3 R7 K3 ["items"]
      147 SETTABLEKS                       R4 R7 K4 ["nextPageToken"]
      149 SETTABLEKS                       R7 R6 K1 ["responseBody"]
      151 RETURN                           R5 2
      152 LOADB                            R3 1
      153 DUPTABLE                         R4 K2 [{"responseBody"}]
      154 DUPTABLE                         R5 K6 [{["items"], ["nextPageToken"] = }]
      155 SETTABLEKS                       R2 R5 K3 ["items"]
      157 SETTABLEKS                       R5 R4 K1 ["responseBody"]
      159 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["assetItem"]
       10 GETTABLEKS                       R11 R11 K1 ["asset"]
       12 GETTABLEKS                       R12 R11 K2 ["assetId"]
       14 GETTABLEKS                       R13 R0 K2 ["assetId"]
       16 JUMPIFNOTEQ                      R12 R13 ; [+44]
       18 GETTABLEKS                       R12 R11 K3 ["creationContext"]
       20 GETTABLEKS                       R12 R12 K4 ["creator"]
       22 DUPTABLE                         R13 K12 [{"AssetId", "AssetTypeId", "Creator", "Created", "Description", "Name", "Updated"}]
       23 GETTABLEKS                       R14 R11 K2 ["assetId"]
       25 SETTABLEKS                       R14 R13 K5 ["AssetId"]
       27 GETIMPORT                        R14 K16 [Enum.AssetType.Image]
       29 GETTABLEKS                       R14 R14 K17 ["Value"]
       31 SETTABLEKS                       R14 R13 K6 ["AssetTypeId"]
       33 DUPTABLE                         R14 K19 [{"Name", "Id"}]
       34 GETTABLEKS                       R15 R12 K20 ["name"]
       36 SETTABLEKS                       R15 R14 K10 ["Name"]
       38 GETTABLEKS                       R15 R12 K21 ["userId"]
       40 SETTABLEKS                       R15 R14 K18 ["Id"]
       42 SETTABLEKS                       R14 R13 K7 ["Creator"]
       44 GETTABLEKS                       R14 R11 K22 ["createTime"]
       46 SETTABLEKS                       R14 R13 K8 ["Created"]
       48 GETTABLEKS                       R14 R11 K23 ["description"]
       50 SETTABLEKS                       R14 R13 K9 ["Description"]
       52 GETTABLEKS                       R14 R11 K24 ["displayName"]
       54 SETTABLEKS                       R14 R13 K10 ["Name"]
       56 GETTABLEKS                       R14 R11 K25 ["updateTime"]
       58 SETTABLEKS                       R14 R13 K11 ["Updated"]
       60 RETURN                           R13 1
       61 FORGLOOP                         R6 2 ; [-54]
       63 FORGLOOP                         R1 2 ; [-60]
       65 GETIMPORT                        R1 K27 [error]
       67 LOADK                            R3 K28 ["No mock asset found for assetId: %*"]
       68 GETTABLEKS                       R5 R0 K2 ["assetId"]
       70 NAMECALL                         R3 R3 K29 ["format"]
       72 CALL                             R3 2 1
       73 MOVE                             R2 R3
       74 CALL                             R1 1 0
       75 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["inventories"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R10 R7 K1 ["scope"]
       11 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K4 [table.insert]
       16 CALL                             R8 2 0
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R9 R7 K1 ["scope"]
       20 GETTABLEKS                       R9 R9 K5 ["type"]
       22 GETTABLEKS                       R10 R7 K1 ["scope"]
       24 GETTABLEKS                       R10 R10 K6 ["id"]
       26 CALL                             R8 2 1
       27 GETTABLE                         R9 R1 R8
       28 JUMPIFNOTEQKNIL                  R9 ; [+4]
       30 NEWTABLE                         R9 0 0
       32 SETTABLE                         R9 R1 R8
       33 GETTABLEKS                       R9 R7 K7 ["assets"]
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 FORGPREP                         R9
       38 GETUPVAL                         R14 1
       39 MOVE                             R15 R13
       40 CALL                             R14 1 1
       41 GETTABLE                         R16 R1 R8
       42 DUPTABLE                         R17 K9 [{"assetItem"}]
       43 DUPTABLE                         R18 K11 [{"asset"}]
       44 SETTABLEKS                       R14 R18 K10 ["asset"]
       46 SETTABLEKS                       R18 R17 K8 ["assetItem"]
       48 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
       50 GETIMPORT                        R15 K4 [table.insert]
       52 CALL                             R15 2 0
       53 FORGLOOP                         R9 2 ; [-16]
       55 FORGLOOP                         R3 2 ; [-47]
       57 NEWCLOSURE                       R3 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R2
       60 NEWCLOSURE                       R4 P1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 NEWCLOSURE                       R5 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 NEWCLOSURE                       R6 P3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U2
       71 NEWCLOSURE                       R7 P4
       72 CAPTURE                          VAL R1
       73 DUPTABLE                         R8 K17 [{"requestUniverseInfoAsync", "requestGroupsAsync", "requestUserDisplayNameAsync", "requestAssetItemsAsync", "getAssetProductInfoAsync"}]
       74 SETTABLEKS                       R3 R8 K12 ["requestUniverseInfoAsync"]
       76 SETTABLEKS                       R4 R8 K13 ["requestGroupsAsync"]
       78 SETTABLEKS                       R5 R8 K14 ["requestUserDisplayNameAsync"]
       80 SETTABLEKS                       R6 R8 K15 ["requestAssetItemsAsync"]
       82 SETTABLEKS                       R7 R8 K16 ["getAssetProductInfoAsync"]
       84 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["tests"]
       16 GETTABLEKS                       R3 R3 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["createAssetFromMock"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["createScopeUniqueId"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 DUPCLOSURE                       R5 K12 [PROTO_1]
       30 DUPCLOSURE                       R6 K13 [PROTO_7]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 RETURN                           R6 1
