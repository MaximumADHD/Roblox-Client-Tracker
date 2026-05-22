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
        3 JUMPIFNOT                        R1 ; [+15]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K6 [{"name", "creatorType", "creatorTargetId"}]
        7 LOADK                            R4 K7 [""]
        8 SETTABLEKS                       R4 R3 K3 ["name"]
       10 LOADK                            R4 K8 ["User"]
       11 SETTABLEKS                       R4 R3 K4 ["creatorType"]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K5 ["creatorTargetId"]
       16 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       18 RETURN                           R1 2
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K9 ["requestToYield"]
       22 JUMPIFEQKS                       R1 K10 ["All"] ; [+6]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K9 ["requestToYield"]
       27 JUMPIFNOTEQKS                    R1 K11 ["Scope"] ; [+4]
       29 GETIMPORT                        R1 K14 [coroutine.yield]
       31 CALL                             R1 0 0
       32 LOADK                            R1 K7 [""]
       33 GETUPVAL                         R2 1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETTABLEKS                       R7 R6 K15 ["type"]
       39 JUMPIFNOTEQKS                    R7 K16 ["Universe"] ; [+9]
       41 GETTABLEKS                       R7 R6 K17 ["id"]
       43 GETTABLEKS                       R8 R0 K18 ["gameId"]
       45 JUMPIFNOTEQ                      R7 R8 ; [+3]
       47 GETTABLEKS                       R1 R6 K3 ["name"]
       49 FORGLOOP                         R2 2 ; [-13]
       51 LOADK                            R2 K8 ["User"]
       52 LOADN                            R3 0
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K19 ["universeInfo"]
       56 GETTABLEKS                       R5 R0 K18 ["gameId"]
       58 GETTABLEKS                       R6 R4 K18 ["gameId"]
       60 JUMPIFNOTEQ                      R5 R6 ; [+9]
       62 GETTABLEKS                       R5 R4 K20 ["creatorInfo"]
       64 GETTABLEKS                       R2 R5 K15 ["type"]
       66 GETTABLEKS                       R5 R4 K20 ["creatorInfo"]
       68 GETTABLEKS                       R3 R5 K17 ["id"]
       70 LOADB                            R5 1
       71 DUPTABLE                         R6 K2 [{"responseBody"}]
       72 DUPTABLE                         R7 K6 [{"name", "creatorType", "creatorTargetId"}]
       73 SETTABLEKS                       R1 R7 K3 ["name"]
       75 SETTABLEKS                       R2 R7 K4 ["creatorType"]
       77 SETTABLEKS                       R3 R7 K5 ["creatorTargetId"]
       79 SETTABLEKS                       R7 R6 K1 ["responseBody"]
       81 RETURN                           R5 2

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
        3 JUMPIFNOT                        R1 ; [+9]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K4 [{"displayName"}]
        7 LOADK                            R4 K5 [""]
        8 SETTABLEKS                       R4 R3 K3 ["displayName"]
       10 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       12 RETURN                           R1 2
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       16 JUMPIFEQKS                       R1 K7 ["All"] ; [+6]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       21 JUMPIFNOTEQKS                    R1 K8 ["Scope"] ; [+4]
       23 GETIMPORT                        R1 K11 [coroutine.yield]
       25 CALL                             R1 0 0
       26 GETUPVAL                         R1 1
       27 LOADNIL                          R2
       28 LOADNIL                          R3
       29 FORGPREP                         R1
       30 GETTABLEKS                       R6 R5 K12 ["type"]
       32 JUMPIFNOTEQKS                    R6 K13 ["User"] ; [+17]
       34 GETTABLEKS                       R6 R5 K14 ["id"]
       36 GETTABLEKS                       R7 R0 K15 ["userId"]
       38 JUMPIFNOTEQ                      R6 R7 ; [+11]
       40 LOADB                            R6 1
       41 DUPTABLE                         R7 K2 [{"responseBody"}]
       42 DUPTABLE                         R8 K4 [{"displayName"}]
       43 GETTABLEKS                       R9 R5 K16 ["name"]
       45 SETTABLEKS                       R9 R8 K3 ["displayName"]
       47 SETTABLEKS                       R8 R7 K1 ["responseBody"]
       49 RETURN                           R6 2
       50 FORGLOOP                         R1 2 ; [-21]
       52 LOADB                            R1 1
       53 DUPTABLE                         R2 K2 [{"responseBody"}]
       54 DUPTABLE                         R3 K4 [{"displayName"}]
       55 LOADK                            R4 K5 [""]
       56 SETTABLEKS                       R4 R3 K3 ["displayName"]
       58 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       60 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K5 [{"items", "nextPageToken"}]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["items"]
       11 LOADNIL                          R4
       12 SETTABLEKS                       R4 R3 K4 ["nextPageToken"]
       14 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       16 RETURN                           R1 2
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       20 JUMPIFEQKS                       R1 K7 ["All"] ; [+6]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K6 ["requestToYield"]
       25 JUMPIFNOTEQKS                    R1 K8 ["Asset"] ; [+4]
       27 GETIMPORT                        R1 K11 [coroutine.yield]
       29 CALL                             R1 0 0
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R2 R0 K12 ["scopeParams"]
       33 GETTABLEKS                       R2 R2 K13 ["Type"]
       35 GETTABLEKS                       R3 R0 K12 ["scopeParams"]
       37 GETTABLEKS                       R3 R3 K14 ["Id"]
       39 CALL                             R1 2 1
       40 GETUPVAL                         R3 2
       41 GETTABLE                         R2 R3 R1
       42 JUMPIF                           R2 ; [+2]
       43 NEWTABLE                         R2 0 0
       45 GETTABLEKS                       R3 R0 K15 ["query"]
       47 JUMPIFEQKS                       R3 K16 [""] ; [+84]
       49 NEWTABLE                         R3 0 0
       51 GETTABLEKS                       R5 R0 K15 ["query"]
       53 GETIMPORT                        R6 K19 [string.gsub]
       55 NAMECALL                         R7 R5 K20 ["lower"]
       57 CALL                             R7 1 1
       58 LOADK                            R8 K21 ["%s+"]
       59 LOADK                            R9 K16 [""]
       60 CALL                             R6 3 1
       61 MOVE                             R4 R6
       62 LOADNIL                          R5
       63 LOADK                            R8 K22 ["^rbxassetid://(.+)$"]
       64 NAMECALL                         R6 R4 K23 ["match"]
       66 CALL                             R6 2 1
       67 JUMPIFNOT                        R6 ; [+7]
       68 FASTCALL1                        TONUMBER R6 ; [+3]
       69 MOVE                             R8 R6
       70 GETIMPORT                        R7 K25 [tonumber]
       72 CALL                             R7 1 1
       73 MOVE                             R5 R7
       74 JUMP                             ; [+6]
       75 FASTCALL1                        TONUMBER R4 ; [+3]
       76 MOVE                             R8 R4
       77 GETIMPORT                        R7 K25 [tonumber]
       79 CALL                             R7 1 1
       80 MOVE                             R5 R7
       81 MOVE                             R7 R2
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 GETTABLEKS                       R12 R11 K26 ["assetItem"]
       87 GETTABLEKS                       R12 R12 K27 ["asset"]
       89 GETTABLEKS                       R14 R12 K28 ["displayName"]
       91 GETIMPORT                        R15 K19 [string.gsub]
       93 NAMECALL                         R16 R14 K20 ["lower"]
       95 CALL                             R16 1 1
       96 LOADK                            R17 K21 ["%s+"]
       97 LOADK                            R18 K16 [""]
       98 CALL                             R15 3 1
       99 MOVE                             R13 R15
      100 GETIMPORT                        R15 K30 [string.find]
      102 MOVE                             R16 R13
      103 MOVE                             R17 R4
      104 LOADN                            R18 1
      105 LOADB                            R19 1
      106 CALL                             R15 4 1
      107 JUMPIFNOTEQKNIL                  R15 ; [+2]
      109 LOADB                            R14 0 +1
      110 LOADB                            R14 1
      111 LOADB                            R15 0
      112 JUMPIFEQKNIL                     R5 ; [+7]
      114 GETTABLEKS                       R16 R12 K31 ["assetId"]
      116 JUMPIFEQ                         R16 R5 ; [+2]
      118 LOADB                            R15 0 +1
      119 LOADB                            R15 1
      120 JUMPIF                           R14 ; [+1]
      121 JUMPIFNOT                        R15 ; [+7]
      122 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      124 MOVE                             R17 R3
      125 MOVE                             R18 R11
      126 GETIMPORT                        R16 K34 [table.insert]
      128 CALL                             R16 2 0
      129 FORGLOOP                         R7 2 ; [-45]
      131 MOVE                             R2 R3
      132 GETUPVAL                         R3 0
      133 GETTABLEKS                       R3 R3 K35 ["pageSize"]
      135 JUMPIFEQKNIL                     R3 ; [+19]
      137 GETUPVAL                         R3 3
      138 MOVE                             R4 R2
      139 GETTABLEKS                       R5 R0 K36 ["pageToken"]
      141 GETUPVAL                         R6 0
      142 GETTABLEKS                       R6 R6 K35 ["pageSize"]
      144 CALL                             R3 3 2
      145 LOADB                            R5 1
      146 DUPTABLE                         R6 K2 [{"responseBody"}]
      147 DUPTABLE                         R7 K5 [{"items", "nextPageToken"}]
      148 SETTABLEKS                       R3 R7 K3 ["items"]
      150 SETTABLEKS                       R4 R7 K4 ["nextPageToken"]
      152 SETTABLEKS                       R7 R6 K1 ["responseBody"]
      154 RETURN                           R5 2
      155 LOADB                            R3 1
      156 DUPTABLE                         R4 K2 [{"responseBody"}]
      157 DUPTABLE                         R5 K5 [{"items", "nextPageToken"}]
      158 SETTABLEKS                       R2 R5 K3 ["items"]
      160 LOADNIL                          R6
      161 SETTABLEKS                       R6 R5 K4 ["nextPageToken"]
      163 SETTABLEKS                       R5 R4 K1 ["responseBody"]
      165 RETURN                           R3 2

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
