PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R2 K1 ["User"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["users"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R2 K3 ["Group"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["groups"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R2 K5 ["Universe"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["universe"]
       26 RETURN                           R1 1
       27 LOADK                            R1 K7 [""]
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_fetchTotalAssets"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
        7 ADDK                             R1 R1 K2 [1]
        8 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K1 ["_fetchScopeId"]
       13 JUMPIFNOTEQKN                    R0 K3 [∞] ; [+5]
       15 GETUPVAL                         R0 0
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K1 ["_fetchScopeId"]
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R3 K0 ["_fetchTotalAssets"]
        3 ADD                              R4 R4 R0
        4 SETTABLEKS                       R4 R3 K0 ["_fetchTotalAssets"]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+19]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K0 ["_fetchTotalAssets"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R8 R9 K1 ["_fetchLimit"]
       15 DIV                              R6 R7 R8
       16 LOADN                            R7 0
       17 LOADN                            R8 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R5 K4 [math.clamp]
       21 CALL                             R5 3 1
       22 LOADB                            R6 0
       23 MOVE                             R7 R1
       24 NAMECALL                         R3 R2 K5 ["Fire"]
       26 CALL                             R3 4 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K0 ["_fetchTotalAssets"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K1 ["_fetchLimit"]
       34 DIV                              R6 R7 R8
       35 LOADN                            R7 0
       36 LOADN                            R8 1
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R5 K4 [math.clamp]
       40 CALL                             R5 3 1
       41 NAMECALL                         R3 R2 K5 ["Fire"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+7]
       11 MOVE                             R4 R0
       12 GETTABLEN                        R6 R3 1
       13 GETTABLEKS                       R5 R6 K3 ["Username"]
       15 LOADB                            R6 0
       16 CALL                             R4 2 0
       17 RETURN                           R0 0
       18 MOVE                             R4 R0
       19 LOADK                            R5 K4 [""]
       20 LOADB                            R6 1
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetUniverseInfoRequest"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 NAMECALL                         R3 R3 K1 ["makeRequest"]
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          VAL R2
       12 NAMECALL                         R3 R3 K2 ["andThen"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["groups"]
        4 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R7 K4 [{"Name", "Id", "Type", "Uid"}]
        7 GETTABLEKS                       R8 R6 K5 ["name"]
        9 SETTABLEKS                       R8 R7 K0 ["Name"]
       11 GETTABLEKS                       R8 R6 K6 ["id"]
       13 SETTABLEKS                       R8 R7 K1 ["Id"]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K7 ["ScopeType"]
       18 GETTABLEKS                       R8 R9 K8 ["Group"]
       20 SETTABLEKS                       R8 R7 K2 ["Type"]
       22 GETUPVAL                         R8 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["ScopeType"]
       26 GETTABLEKS                       R9 R10 K8 ["Group"]
       28 GETTABLEKS                       R10 R6 K6 ["id"]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K3 ["Uid"]
       33 GETTABLEKS                       R8 R6 K6 ["id"]
       35 SETTABLE                         R7 R1 R8
       36 FORGLOOP                         R2 2 ; [-31]
       38 GETUPVAL                         R2 2
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CreateFetchGroupsRequest"]
        3 LOADK                            R3 K1 ["StudioAssetManager"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K2 ["makeRequest"]
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R4 K3 [PROTO_8]
        9 NAMECALL                         R2 R2 K4 ["andThen"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 MOVE                             R6 R1
       17 NAMECALL                         R3 R2 K4 ["andThen"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETUPVAL                         R9 0
        9 MOVE                             R10 R8
       10 CALL                             R9 1 1
       11 JUMPIF                           R9 ; [+13]
       12 GETUPVAL                         R9 1
       13 LOADK                            R11 K0 ["Could not convert asset response for asset %*"]
       14 GETUPVAL                         R14 2
       15 GETTABLEKS                       R13 R14 K1 ["pretty"]
       17 MOVE                             R14 R8
       18 CALL                             R13 1 1
       19 NAMECALL                         R11 R11 K2 ["format"]
       21 CALL                             R11 2 1
       22 MOVE                             R10 R11
       23 CALL                             R9 1 0
       24 JUMP                             ; [+175]
       25 GETTABLEKS                       R9 R8 K3 ["assetItem"]
       27 GETTABLEKS                       R10 R9 K4 ["asset"]
       29 GETTABLEKS                       R12 R9 K5 ["sources"]
       31 GETTABLEN                        R11 R12 1
       32 GETTABLEKS                       R14 R9 K4 ["asset"]
       34 GETTABLEKS                       R13 R14 K6 ["creationContext"]
       36 GETTABLEKS                       R12 R13 K7 ["creator"]
       38 GETTABLEKS                       R14 R12 K8 ["userId"]
       40 JUMPIFNOT                        R14 ; [+3]
       41 GETTABLEKS                       R13 R12 K8 ["userId"]
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R13 R12 K9 ["groupId"]
       46 GETTABLEKS                       R15 R12 K10 ["name"]
       48 JUMPIFNOT                        R15 ; [+3]
       49 GETTABLEKS                       R14 R12 K10 ["name"]
       51 JUMP                             ; [+5]
       52 FASTCALL1                        TOSTRING R13 ; [+3]
       53 MOVE                             R15 R13
       54 GETIMPORT                        R14 K12 [tostring]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R16 R12 K8 ["userId"]
       59 JUMPIFNOT                        R16 ; [+6]
       60 GETUPVAL                         R17 3
       61 GETTABLEKS                       R16 R17 K13 ["ScopeType"]
       63 GETTABLEKS                       R15 R16 K14 ["User"]
       65 JUMP                             ; [+5]
       66 GETUPVAL                         R17 3
       67 GETTABLEKS                       R16 R17 K13 ["ScopeType"]
       69 GETTABLEKS                       R15 R16 K15 ["Group"]
       71 GETTABLEKS                       R17 R10 K16 ["state"]
       73 JUMPIFEQKS                       R17 K17 ["STATE_ARCHIVED"] ; [+2]
       75 LOADB                            R16 0 +1
       76 LOADB                            R16 1
       77 GETTABLEKS                       R18 R11 K18 ["createdDetails"]
       79 JUMPIFNOT                        R18 ; [+6]
       80 GETUPVAL                         R19 3
       81 GETTABLEKS                       R18 R19 K19 ["AssetSource"]
       83 GETTABLEKS                       R17 R18 K20 ["Uploaded"]
       85 JUMP                             ; [+19]
       86 GETTABLEKS                       R18 R11 K21 ["purchasedDetails"]
       88 JUMPIFNOT                        R18 ; [+6]
       89 GETUPVAL                         R19 3
       90 GETTABLEKS                       R18 R19 K19 ["AssetSource"]
       92 GETTABLEKS                       R17 R18 K22 ["CreatorStore"]
       94 JUMP                             ; [+10]
       95 GETTABLEKS                       R18 R11 K23 ["sharedDetails"]
       97 JUMPIFNOT                        R18 ; [+6]
       98 GETUPVAL                         R19 3
       99 GETTABLEKS                       R18 R19 K19 ["AssetSource"]
      101 GETTABLEKS                       R17 R18 K24 ["SharedWithMe"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R17
      105 DUPTABLE                         R18 K37 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      106 GETUPVAL                         R20 4
      107 CALL                             R20 0 1
      108 JUMPIFNOT                        R20 ; [+16]
      109 GETTABLEKS                       R20 R8 K38 ["path"]
      111 JUMPIFNOT                        R20 ; [+7]
      112 GETTABLEKS                       R20 R8 K38 ["path"]
      114 JUMPIFEQKS                       R20 K39 [""] ; [+4]
      116 GETTABLEKS                       R19 R8 K38 ["path"]
      118 JUMP                             ; [+7]
      119 GETUPVAL                         R19 5
      120 MOVE                             R20 R1
      121 GETTABLEKS                       R21 R10 K40 ["assetId"]
      123 CALL                             R19 2 1
      124 JUMP                             ; [+1]
      125 LOADK                            R19 K39 [""]
      126 SETTABLEKS                       R19 R18 K25 ["Path"]
      128 GETTABLEKS                       R19 R10 K40 ["assetId"]
      130 SETTABLEKS                       R19 R18 K26 ["AssetId"]
      132 GETUPVAL                         R19 6
      133 GETTABLEKS                       R20 R10 K41 ["assetType"]
      135 CALL                             R19 1 1
      136 SETTABLEKS                       R19 R18 K27 ["AssetType"]
      138 GETTABLEKS                       R19 R10 K42 ["displayName"]
      140 SETTABLEKS                       R19 R18 K28 ["DisplayName"]
      142 GETTABLEKS                       R19 R10 K43 ["createTime"]
      144 SETTABLEKS                       R19 R18 K29 ["Created"]
      146 GETTABLEKS                       R19 R10 K44 ["updateTime"]
      148 SETTABLEKS                       R19 R18 K30 ["Modified"]
      150 GETUPVAL                         R21 3
      151 GETTABLEKS                       R20 R21 K31 ["ModerationStatus"]
      153 GETTABLEKS                       R19 R20 K45 ["Placeholder"]
      155 SETTABLEKS                       R19 R18 K31 ["ModerationStatus"]
      157 DUPTABLE                         R19 K50 [{"Id", "Name", "Type", "Uid"}]
      158 SETTABLEKS                       R13 R19 K46 ["Id"]
      160 SETTABLEKS                       R14 R19 K47 ["Name"]
      162 SETTABLEKS                       R15 R19 K48 ["Type"]
      164 GETUPVAL                         R20 7
      165 MOVE                             R21 R15
      166 MOVE                             R22 R13
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K49 ["Uid"]
      170 SETTABLEKS                       R19 R18 K32 ["Creator"]
      172 SETTABLEKS                       R17 R18 K33 ["Source"]
      174 SETTABLEKS                       R16 R18 K34 ["Archived"]
      176 GETTABLEKS                       R19 R9 K51 ["isPackage"]
      178 SETTABLEKS                       R19 R18 K35 ["IsPackage"]
      180 GETUPVAL                         R21 8
      181 GETTABLEKS                       R20 R21 K52 ["_fetchTotalAssets"]
      183 ADD                              R19 R20 R7
      184 SETTABLEKS                       R19 R18 K36 ["SearchRank"]
      186 FASTCALL2                        TABLE_INSERT R2 R18 ; [+5]
      188 MOVE                             R20 R2
      189 MOVE                             R21 R18
      190 GETIMPORT                        R19 K55 [table.insert]
      192 CALL                             R19 2 0
      193 GETTABLEKS                       R20 R18 K32 ["Creator"]
      195 GETTABLEKS                       R19 R20 K47 ["Name"]
      197 GETTABLEKS                       R20 R18 K32 ["Creator"]
      199 SETTABLE                         R20 R3 R19
      200 FORGLOOP                         R4 2 ; [-193]
      202 RETURN                           R2 2

PROTO_12:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R8 R9 K0 ["_fetchScopeId"]
        3 JUMPIFEQ                         R0 R8 ; [+17]
        5 GETUPVAL                         R8 1
        6 LOADN                            R9 0
        7 MOVE                             R10 R2
        8 MOVE                             R11 R7
        9 CALL                             R8 3 0
       10 MOVE                             R8 R5
       11 NEWTABLE                         R9 0 0
       13 NEWTABLE                         R10 0 0
       15 CALL                             R8 2 0
       16 MOVE                             R8 R1
       17 LOADB                            R9 1
       18 CALL                             R8 1 0
       19 LOADB                            R8 0
       20 RETURN                           R8 1
       21 JUMPIFEQKN                       R3 K1 [200] ; [+14]
       23 MOVE                             R8 R6
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R10 R3
       26 GETIMPORT                        R9 K3 [tostring]
       28 CALL                             R9 1 1
       29 MOVE                             R10 R3
       30 CALL                             R8 2 0
       31 MOVE                             R8 R1
       32 LOADB                            R9 0
       33 CALL                             R8 1 0
       34 LOADB                            R8 0
       35 RETURN                           R8 1
       36 JUMPIFNOTEQKN                    R4 K4 [0] ; [+17]
       38 GETUPVAL                         R8 1
       39 LOADN                            R9 0
       40 MOVE                             R10 R2
       41 MOVE                             R11 R7
       42 CALL                             R8 3 0
       43 MOVE                             R8 R5
       44 NEWTABLE                         R9 0 0
       46 NEWTABLE                         R10 0 0
       48 CALL                             R8 2 0
       49 MOVE                             R8 R1
       50 LOADB                            R9 0
       51 CALL                             R8 1 0
       52 LOADB                            R8 0
       53 RETURN                           R8 1
       54 LOADB                            R8 1
       55 RETURN                           R8 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_checkResponse"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["FetchSessionId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Resolve"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["ScopeInfo"]
       12 GETTABLEKS                       R4 R5 K4 ["Uid"]
       14 GETTABLEKS                       R5 R0 K5 ["responseCode"]
       16 GETTABLEKS                       R8 R0 K6 ["responseBody"]
       18 GETTABLEKS                       R7 R8 K7 ["items"]
       20 LENGTH                           R6 R7
       21 GETUPVAL                         R7 2
       22 GETUPVAL                         R8 3
       23 GETUPVAL                         R9 4
       24 CALL                             R1 8 1
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K8 ["_convertResponseToItemsData"]
       30 GETTABLEKS                       R4 R0 K6 ["responseBody"]
       32 GETTABLEKS                       R3 R4 K7 ["items"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K3 ["ScopeInfo"]
       37 CALL                             R2 2 2
       38 GETUPVAL                         R4 5
       39 LENGTH                           R5 R2
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K3 ["ScopeInfo"]
       43 GETTABLEKS                       R6 R7 K4 ["Uid"]
       45 GETUPVAL                         R7 4
       46 CALL                             R4 3 0
       47 GETTABLEKS                       R5 R0 K6 ["responseBody"]
       49 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       51 GETUPVAL                         R5 2
       52 MOVE                             R6 R2
       53 MOVE                             R7 R3
       54 LOADNIL                          R8
       55 MOVE                             R9 R4
       56 CALL                             R5 4 1
       57 MOVE                             R1 R5
       58 GETUPVAL                         R5 6
       59 CALL                             R5 0 1
       60 JUMPIFNOT                        R5 ; [+7]
       61 JUMPIF                           R1 ; [+6]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R5 R6 K2 ["Resolve"]
       65 LOADB                            R6 0
       66 CALL                             R5 1 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R5 6
       69 CALL                             R5 0 1
       70 JUMPIFNOT                        R5 ; [+13]
       71 GETUPVAL                         R5 1
       72 SETTABLEKS                       R4 R5 K10 ["PageToken"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R5 R6 K11 ["_fetchAssetsImplAsync"]
       77 GETUPVAL                         R6 1
       78 GETUPVAL                         R7 4
       79 GETUPVAL                         R8 2
       80 GETUPVAL                         R9 3
       81 GETUPVAL                         R10 7
       82 CALL                             R5 5 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R6 R7 K12 ["_fetchTotalAssets"]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R7 R8 K13 ["_fetchLimit"]
       90 JUMPIFLT                         R6 R7 ; [+2]
       92 LOADB                            R5 0 +1
       93 LOADB                            R5 1
       94 JUMPIFNOT                        R4 ; [+16]
       95 JUMPIFEQKS                       R4 K14 [""] ; [+15]
       97 JUMPIFNOT                        R5 ; [+13]
       98 GETUPVAL                         R6 1
       99 SETTABLEKS                       R4 R6 K10 ["PageToken"]
      101 GETUPVAL                         R7 0
      102 GETTABLEKS                       R6 R7 K11 ["_fetchAssetsImplAsync"]
      104 GETUPVAL                         R7 1
      105 GETUPVAL                         R8 4
      106 GETUPVAL                         R9 2
      107 GETUPVAL                         R10 3
      108 GETUPVAL                         R11 7
      109 CALL                             R6 5 0
      110 RETURN                           R0 0
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R6 R7 K2 ["Resolve"]
      114 LOADB                            R7 0
      115 CALL                             R6 1 0
      116 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["pretty"]
        4 GETTABLEKS                       R4 R0 K1 ["responseBody"]
        6 GETTABLEKS                       R3 R4 K2 ["errors"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K3 ["Resolve"]
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R5 K2 [{"maxPageSize", "pageToken"}]
        1 GETTABLEKS                       R6 R0 K3 ["MaxPageSize"]
        3 SETTABLEKS                       R6 R5 K0 ["maxPageSize"]
        5 GETTABLEKS                       R6 R0 K4 ["PageToken"]
        7 SETTABLEKS                       R6 R5 K1 ["pageToken"]
        9 MOVE                             R6 R4
       10 GETTABLEKS                       R8 R0 K5 ["ScopeInfo"]
       12 GETTABLEKS                       R7 R8 K6 ["Id"]
       14 MOVE                             R8 R5
       15 CALL                             R6 2 1
       16 NAMECALL                         R6 R6 K7 ["makeRequest"]
       18 CALL                             R6 1 1
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R4
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R6 R6 K8 ["andThen"]
       34 CALL                             R6 3 0
       35 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 1 0
        4 GETTABLEKS                       R4 R1 K0 ["Name"]
        6 DUPTABLE                         R5 K4 [{"Id", "Name", "Type", "Uid"}]
        7 GETTABLEKS                       R6 R1 K1 ["Id"]
        9 SETTABLEKS                       R6 R5 K1 ["Id"]
       11 GETTABLEKS                       R6 R1 K0 ["Name"]
       13 SETTABLEKS                       R6 R5 K0 ["Name"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R7 K6 ["Universe"]
       20 SETTABLEKS                       R6 R5 K2 ["Type"]
       22 GETUPVAL                         R6 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K5 ["ScopeType"]
       26 GETTABLEKS                       R7 R8 K6 ["Universe"]
       28 GETTABLEKS                       R8 R1 K1 ["Id"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["Uid"]
       33 SETTABLE                         R5 R3 R4
       34 LOADNIL                          R4
       35 GETTABLEKS                       R5 R0 K7 ["responseBody"]
       37 GETTABLEKS                       R6 R5 K8 ["data"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 DUPTABLE                         R11 K20 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "SearchRank"}]
       43 GETUPVAL                         R13 2
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+8]
       46 GETUPVAL                         R12 3
       47 GETTABLEKS                       R14 R1 K0 ["Name"]
       49 GETTABLE                         R13 R3 R14
       50 GETTABLEKS                       R14 R10 K21 ["id"]
       52 CALL                             R12 2 1
       53 JUMP                             ; [+1]
       54 LOADK                            R12 K22 [""]
       55 SETTABLEKS                       R12 R11 K9 ["Path"]
       57 GETTABLEKS                       R12 R10 K21 ["id"]
       59 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K11 ["AssetType"]
       64 GETTABLEKS                       R12 R13 K23 ["Place"]
       66 SETTABLEKS                       R12 R11 K11 ["AssetType"]
       68 GETTABLEKS                       R12 R10 K24 ["name"]
       70 SETTABLEKS                       R12 R11 K12 ["DisplayName"]
       72 GETTABLEKS                       R12 R10 K25 ["created"]
       74 SETTABLEKS                       R12 R11 K13 ["Created"]
       76 GETTABLEKS                       R12 R10 K26 ["updated"]
       78 SETTABLEKS                       R12 R11 K14 ["Modified"]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K15 ["ModerationStatus"]
       83 GETTABLEKS                       R12 R13 K27 ["Placeholder"]
       85 SETTABLEKS                       R12 R11 K15 ["ModerationStatus"]
       87 GETTABLEKS                       R13 R1 K0 ["Name"]
       89 GETTABLE                         R12 R3 R13
       90 SETTABLEKS                       R12 R11 K16 ["Creator"]
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R13 R14 K28 ["AssetSource"]
       95 GETTABLEKS                       R12 R13 K29 ["Uploaded"]
       97 SETTABLEKS                       R12 R11 K17 ["Source"]
       99 LOADB                            R12 0
      100 SETTABLEKS                       R12 R11 K18 ["Archived"]
      102 GETUPVAL                         R14 4
      103 GETTABLEKS                       R13 R14 K30 ["_fetchTotalAssets"]
      105 ADD                              R12 R13 R9
      106 SETTABLEKS                       R12 R11 K19 ["SearchRank"]
      108 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      110 MOVE                             R13 R2
      111 MOVE                             R14 R11
      112 GETIMPORT                        R12 K33 [table.insert]
      114 CALL                             R12 2 0
      115 GETTABLEKS                       R12 R10 K34 ["isRootPlace"]
      117 JUMPIFNOT                        R12 ; [+2]
      118 GETTABLEKS                       R4 R10 K21 ["id"]
      120 FORGLOOP                         R6 2 ; [-79]
      122 MOVE                             R6 R2
      123 MOVE                             R7 R3
      124 MOVE                             R8 R4
      125 GETTABLEKS                       R9 R5 K35 ["nextPageCursor"]
      127 RETURN                           R6 4

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_parseFetchPlacesResponse"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R3 R5 K1 ["ScopeInfo"]
        7 CALL                             R1 2 4
        8 GETUPVAL                         R5 2
        9 LENGTH                           R6 R1
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K1 ["ScopeInfo"]
       13 GETTABLEKS                       R7 R8 K2 ["Uid"]
       15 GETUPVAL                         R8 3
       16 CALL                             R5 3 0
       17 GETUPVAL                         R5 4
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 CALL                             R5 4 0
       23 JUMPIFNOT                        R4 ; [+26]
       24 JUMPIFEQKS                       R4 K3 [""] ; [+25]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K4 ["_fetchTotalAssets"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K5 ["_fetchLimit"]
       32 JUMPIFNOTLT                      R5 R6 ; [+17]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R7 R0 K6 ["responseBody"]
       37 GETTABLEKS                       R6 R7 K7 ["nextPageCursor"]
       39 SETTABLEKS                       R6 R5 K8 ["PageToken"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K9 ["fetchPlacesAsync"]
       44 GETUPVAL                         R6 1
       45 GETUPVAL                         R7 3
       46 GETUPVAL                         R8 4
       47 GETUPVAL                         R9 5
       48 CALL                             R5 4 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K10 ["Resolve"]
       53 LOADB                            R6 0
       54 CALL                             R5 1 0
       55 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Resolve"]
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R4 R5 K1 ["Type"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
        7 GETTABLEKS                       R5 R6 K3 ["Universe"]
        9 JUMPIFEQ                         R4 R5 ; [+17]
       11 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R4 R5 K1 ["Type"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       18 GETTABLEKS                       R5 R6 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R4 R5 ; [+6]
       22 GETTABLEKS                       R4 R0 K5 ["Resolve"]
       24 LOADB                            R5 0
       25 CALL                             R4 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R0 K7 ["PageToken"]
       29 ORK                              R4 R5 K6 [""]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K8 ["CreateFetchPlacesRequest"]
       33 GETTABLEKS                       R7 R0 K0 ["ScopeInfo"]
       35 GETTABLEKS                       R6 R7 K9 ["Id"]
       37 MOVE                             R7 R4
       38 LOADN                            R8 100
       39 CALL                             R5 3 1
       40 NAMECALL                         R5 R5 K10 ["makeRequest"]
       42 CALL                             R5 1 1
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R0
       53 NAMECALL                         R5 R5 K11 ["andThen"]
       55 CALL                             R5 3 0
       56 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R4
        1 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
        3 GETTABLEKS                       R5 R6 K1 ["Type"]
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K2 ["ScopeType"]
        8 GETTABLEKS                       R6 R7 K3 ["User"]
       10 JUMPIFNOTEQ                      R5 R6 ; [+5]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["CreateFetchAssetsForUserRequest"]
       15 JUMP                             ; [+65]
       16 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
       18 GETTABLEKS                       R5 R6 K1 ["Type"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K2 ["ScopeType"]
       23 GETTABLEKS                       R6 R7 K5 ["Group"]
       25 JUMPIFNOTEQ                      R5 R6 ; [+5]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K6 ["CreateFetchAssetsForGroupRequest"]
       30 JUMP                             ; [+50]
       31 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
       33 GETTABLEKS                       R5 R6 K1 ["Type"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K2 ["ScopeType"]
       38 GETTABLEKS                       R6 R7 K7 ["Universe"]
       40 JUMPIFEQ                         R5 R6 ; [+12]
       42 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
       44 GETTABLEKS                       R5 R6 K1 ["Type"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K2 ["ScopeType"]
       49 GETTABLEKS                       R6 R7 K8 ["ProjectShared"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+5]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K9 ["CreateFetchAssetsForUniverseRequest"]
       56 JUMP                             ; [+24]
       57 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
       59 GETTABLEKS                       R5 R6 K1 ["Type"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R7 R8 K2 ["ScopeType"]
       64 GETTABLEKS                       R6 R7 K10 ["ProjectPlaces"]
       66 JUMPIFNOTEQ                      R5 R6 ; [+6]
       68 GETTABLEKS                       R5 R0 K11 ["Resolve"]
       70 LOADB                            R6 0
       71 CALL                             R5 1 0
       72 RETURN                           R0 0
       73 MOVE                             R5 R3
       74 LOADK                            R6 K12 ["Unsupported scope type"]
       75 CALL                             R5 1 0
       76 GETTABLEKS                       R5 R0 K11 ["Resolve"]
       78 LOADB                            R6 0
       79 CALL                             R5 1 0
       80 RETURN                           R0 0
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R5 R6 K13 ["_fetchAssetsImplAsync"]
       84 MOVE                             R6 R0
       85 MOVE                             R7 R1
       86 MOVE                             R8 R2
       87 MOVE                             R9 R3
       88 MOVE                             R10 R4
       89 CALL                             R5 5 0
       90 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_checkResponse"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["FetchSessionId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Resolve"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["ScopeInfo"]
       12 GETTABLEKS                       R4 R5 K4 ["Uid"]
       14 GETTABLEKS                       R5 R0 K5 ["responseCode"]
       16 GETTABLEKS                       R8 R0 K6 ["responseBody"]
       18 GETTABLEKS                       R7 R8 K7 ["items"]
       20 LENGTH                           R6 R7
       21 GETUPVAL                         R7 2
       22 GETUPVAL                         R8 3
       23 GETUPVAL                         R9 4
       24 CALL                             R1 8 1
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K8 ["_convertResponseToItemsData"]
       30 GETTABLEKS                       R4 R0 K6 ["responseBody"]
       32 GETTABLEKS                       R3 R4 K7 ["items"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K3 ["ScopeInfo"]
       37 CALL                             R2 2 2
       38 GETUPVAL                         R4 5
       39 LENGTH                           R5 R2
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K3 ["ScopeInfo"]
       43 GETTABLEKS                       R6 R7 K4 ["Uid"]
       45 GETUPVAL                         R7 4
       46 CALL                             R4 3 0
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R2
       49 MOVE                             R6 R3
       50 GETTABLEKS                       R8 R0 K6 ["responseBody"]
       52 GETTABLEKS                       R7 R8 K9 ["nextPageToken"]
       54 CALL                             R4 3 0
       55 GETTABLEKS                       R5 R0 K6 ["responseBody"]
       57 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       59 JUMPIFNOT                        R4 ; [+29]
       60 GETTABLEKS                       R5 R0 K6 ["responseBody"]
       62 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       64 JUMPIFEQKS                       R4 K10 [""] ; [+24]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R4 R5 K11 ["_fetchTotalAssets"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R5 R6 K12 ["_fetchLimit"]
       72 JUMPIFNOTLT                      R4 R5 ; [+16]
       74 GETUPVAL                         R4 1
       75 GETTABLEKS                       R6 R0 K6 ["responseBody"]
       77 GETTABLEKS                       R5 R6 K9 ["nextPageToken"]
       79 SETTABLEKS                       R5 R4 K13 ["PageToken"]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R4 R5 K14 ["_searchAssetsImplAsync"]
       84 GETUPVAL                         R5 1
       85 GETUPVAL                         R6 2
       86 GETUPVAL                         R7 3
       87 CALL                             R4 3 0
       88 RETURN                           R0 0
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R4 R5 K2 ["Resolve"]
       92 LOADB                            R5 0
       93 CALL                             R4 1 0
       94 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["Resolve"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R4 K2 [{"Type", "Id"}]
        1 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
        3 GETTABLEKS                       R5 R6 K0 ["Type"]
        5 SETTABLEKS                       R5 R4 K0 ["Type"]
        7 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
        9 GETTABLEKS                       R5 R6 K1 ["Id"]
       11 SETTABLEKS                       R5 R4 K1 ["Id"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["CreateSearchAssetsRequest"]
       16 GETTABLEKS                       R6 R0 K5 ["SearchTerm"]
       18 GETTABLEKS                       R7 R0 K6 ["AssetType"]
       20 MOVE                             R8 R4
       21 GETTABLEKS                       R9 R0 K7 ["MaxPageSize"]
       23 GETTABLEKS                       R10 R0 K8 ["PageToken"]
       25 CALL                             R5 5 1
       26 NAMECALL                         R5 R5 K9 ["makeRequest"]
       28 CALL                             R5 1 1
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U2
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R5 R5 K10 ["andThen"]
       42 CALL                             R5 3 0
       43 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_searchAssetsImplAsync"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        4 JUMPIFEQKN                       R2 K2 [200] ; [+14]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K3 ["Failed to grant permissions to assets: %*"]
        8 GETTABLEKS                       R6 R0 K1 ["responseCode"]
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 LOADB                            R2 0
       16 NEWTABLE                         R3 0 0
       18 RETURN                           R2 2
       19 GETTABLEKS                       R2 R1 K5 ["errors"]
       21 JUMPIFNOT                        R2 ; [+22]
       22 GETTABLEKS                       R3 R1 K5 ["errors"]
       24 LENGTH                           R2 R3
       25 JUMPIFEQKN                       R2 K6 [0] ; [+18]
       27 GETUPVAL                         R2 0
       28 LOADK                            R4 K7 ["Failed to grant permissions to assets: %*\")"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K8 ["pretty"]
       32 GETTABLEKS                       R7 R1 K5 ["errors"]
       34 CALL                             R6 1 1
       35 NAMECALL                         R4 R4 K4 ["format"]
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 CALL                             R2 1 0
       40 LOADB                            R2 0
       41 GETTABLEKS                       R3 R1 K5 ["errors"]
       43 RETURN                           R2 2
       44 LOADB                            R2 1
       45 NEWTABLE                         R3 0 0
       47 RETURN                           R2 2

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to grant permissions to assets: %* %*"]
        2 GETTABLEKS                       R5 R0 K1 ["responseCode"]
        4 GETTABLEKS                       R6 R0 K2 ["requestErrorMessage"]
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 LOADB                            R1 0
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R1 2

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["PatchAssetsPermissionsRequest"]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Universe"]
        8 MOVE                             R6 R1
        9 LOADK                            R7 K2 ["Use"]
       10 CALL                             R3 4 1
       11 NAMECALL                         R3 R3 K3 ["makeRequest"]
       13 CALL                             R3 1 1
       14 DUPCLOSURE                       R5 K4 [PROTO_25]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R3 R3 K5 ["andThen"]
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R5 K6 [PROTO_26]
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R3 R3 K7 ["catch"]
       24 CALL                             R3 2 1
       25 NAMECALL                         R3 R3 K8 ["await"]
       27 CALL                             R3 1 2
       28 RETURN                           R3 2

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        4 JUMPIFEQKN                       R2 K2 [200] ; [+16]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K3 ["Failed to grant permissions to assets: %*"]
        8 GETTABLEKS                       R6 R0 K1 ["responseCode"]
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 LOADB                            R3 0
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
       21 GETTABLEKS                       R2 R1 K5 ["errors"]
       23 JUMPIFNOT                        R2 ; [+24]
       24 GETTABLEKS                       R3 R1 K5 ["errors"]
       26 LENGTH                           R2 R3
       27 JUMPIFEQKN                       R2 K6 [0] ; [+20]
       29 GETUPVAL                         R2 0
       30 LOADK                            R4 K7 ["Failed to grant permissions to assets: %*\")"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K8 ["pretty"]
       34 GETTABLEKS                       R7 R1 K5 ["errors"]
       36 CALL                             R6 1 1
       37 NAMECALL                         R4 R4 K4 ["format"]
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 1
       43 LOADB                            R3 0
       44 GETTABLEKS                       R4 R1 K5 ["errors"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1
       48 GETUPVAL                         R2 1
       49 LOADB                            R3 1
       50 NEWTABLE                         R4 0 0
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to grant permissions to assets: %* %*"]
        2 GETTABLEKS                       R5 R0 K1 ["responseCode"]
        4 GETTABLEKS                       R6 R0 K2 ["requestErrorMessage"]
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 LOADB                            R2 0
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R4
        3 CALL                             R6 2 1
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K0 ["PatchAssetsPermissionsRequest"]
        7 MOVE                             R8 R6
        8 GETUPVAL                         R11 2
        9 GETTABLEKS                       R10 R11 K1 ["PermissionsGrantSubject"]
       11 GETTABLE                         R9 R10 R1
       12 MOVE                             R10 R2
       13 GETUPVAL                         R13 2
       14 GETTABLEKS                       R12 R13 K2 ["PermissionsGrantAction"]
       16 GETTABLE                         R11 R12 R3
       17 CALL                             R7 4 1
       18 NAMECALL                         R7 R7 K3 ["makeRequest"]
       20 CALL                             R7 1 1
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R7 R7 K4 ["andThen"]
       27 CALL                             R7 2 1
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R5
       31 NAMECALL                         R7 R7 K5 ["catch"]
       33 CALL                             R7 2 0
       34 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R3 K2 ["User"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+9]
        9 LOADK                            R2 K3 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       10 GETTABLEKS                       R4 R0 K4 ["Id"]
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K0 ["Type"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       22 GETTABLEKS                       R2 R3 K6 ["Group"]
       24 JUMPIFNOTEQ                      R1 R2 ; [+9]
       26 LOADK                            R2 K7 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
       27 GETTABLEKS                       R4 R0 K4 ["Id"]
       29 NAMECALL                         R2 R2 K5 ["format"]
       31 CALL                             R2 2 1
       32 MOVE                             R1 R2
       33 RETURN                           R1 1
       34 GETTABLEKS                       R1 R0 K0 ["Type"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       39 GETTABLEKS                       R2 R3 K8 ["Universe"]
       41 JUMPIFEQ                         R1 R2 ; [+19]
       43 GETTABLEKS                       R1 R0 K0 ["Type"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       48 GETTABLEKS                       R2 R3 K9 ["ProjectPlaces"]
       50 JUMPIFEQ                         R1 R2 ; [+10]
       52 GETTABLEKS                       R1 R0 K0 ["Type"]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       57 GETTABLEKS                       R2 R3 K10 ["ProjectShared"]
       59 JUMPIFNOTEQ                      R1 R2 ; [+9]
       61 LOADK                            R2 K11 ["rbxthumb://type=GameIcon&id=%*&w=150&h=150"]
       62 GETTABLEKS                       R4 R0 K4 ["Id"]
       64 NAMECALL                         R2 R2 K5 ["format"]
       66 CALL                             R2 2 1
       67 MOVE                             R1 R2
       68 RETURN                           R1 1
       69 GETUPVAL                         R1 1
       70 LOADK                            R3 K12 ["ExplorerRow: Unsupported Scope type for image icon %*"]
       71 GETTABLEKS                       R5 R0 K0 ["Type"]
       73 NAMECALL                         R3 R3 K5 ["format"]
       75 CALL                             R3 2 1
       76 MOVE                             R2 R3
       77 CALL                             R1 1 0
       78 LOADK                            R1 K13 [""]
       79 RETURN                           R1 1

PROTO_32:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 GETUPVAL                         R3 2
        9 JUMP                             ; [+1]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 3
       14 LOADK                            R4 K4 ["Failed to fetch thumbnail for scope %*"]
       15 GETUPVAL                         R6 4
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 LOADK                            R3 K6 [""]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getThumbnailUriForScope"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R5 0 1
        8 MOVE                             R6 R2
        9 SETLIST                          R5 R6 1 [1]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R3 R3 K1 ["PreloadAsync"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["AssetType"]
        3 GETTABLEKS                       R2 R3 K1 ["Place"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 LOADK                            R3 K2 ["rbxthumb://type=AutoGeneratedAsset&id=%*&w=150&h=150"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 RETURN                           R2 1
       14 LOADK                            R3 K4 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R3 R3 K3 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 RETURN                           R2 1

PROTO_35:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 LOADK                            R4 K4 ["Failed to fetch thumbnail for item %*"]
       11 GETUPVAL                         R6 3
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 0
       18 LOADK                            R3 K6 [""]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETUPVAL                         R0 1
        4 NEWTABLE                         R2 0 1
        6 GETUPVAL                         R3 2
        7 SETLIST                          R2 R3 1 [1]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       16 CALL                             R0 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 NEWTABLE                         R2 0 1
       21 GETUPVAL                         R3 2
       22 SETLIST                          R2 R3 1 [1]
       24 GETUPVAL                         R3 3
       25 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       27 CALL                             R0 3 0
       28 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getThumbnailForItem"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K3 [task.spawn]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R4 1 0
       16 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["data"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R3 R1 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetPluginInfoRequest"]
        3 NEWTABLE                         R4 0 1
        5 MOVE                             R5 R0
        6 SETLIST                          R4 R5 1 [1]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K1 ["makeRequest"]
       11 CALL                             R3 1 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R2
       16 NAMECALL                         R3 R3 K2 ["andThen"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["results"]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R7 K2 ["assetId"]
       12 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       14 MOVE                             R9 R2
       15 GETIMPORT                        R8 K5 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-9]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch asset dependencies for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K1 ["pretty"]
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 NEWTABLE                         R2 0 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GetAssetDependenciesRequest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R3 K1 ["data"]
        4 GETTABLEN                        R1 R2 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETTABLEKS                       R2 R1 K2 ["assetId"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETTABLEKS                       R2 R1 K3 ["assetVersionNumber"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R2 0
       13 LOADB                            R3 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch package metadata for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K1 ["pretty"]
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PostPackageMetadataGetRequest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_47:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["fetchAssetInfoAsync"]
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 1
        9 GETUPVAL                         R9 2
       10 GETUPVAL                         R10 3
       11 CALL                             R6 4 0
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R3 R1 K1 ["creationContext"]
        4 GETTABLEKS                       R2 R3 K2 ["creator"]
        6 GETTABLEKS                       R4 R2 K3 ["userId"]
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["groupId"]
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K6 [tonumber]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K7 [""]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K8 ["Id"]
       19 JUMPIFNOTEQ                      R3 R5 ; [+5]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K9 ["Name"]
       24 JUMP                             ; [+31]
       25 GETTABLEKS                       R5 R2 K3 ["userId"]
       27 JUMPIFNOT                        R5 ; [+14]
       28 GETIMPORT                        R5 K11 [pcall]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K12 ["GetNameFromUserIdAsync"]
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R3
       35 CALL                             R5 3 2
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R4 R6
       38 JUMP                             ; [+17]
       39 GETTABLEKS                       R4 R2 K3 ["userId"]
       41 JUMP                             ; [+14]
       42 GETIMPORT                        R5 K11 [pcall]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R6 R7 K13 ["GetGroupInfoAsync"]
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R3
       49 CALL                             R5 3 2
       50 JUMPIFNOT                        R5 ; [+3]
       51 GETTABLEKS                       R4 R6 K9 ["Name"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R4 R2 K4 ["groupId"]
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R6 R1 K14 ["assetType"]
       59 CALL                             R5 1 1
       60 JUMPIF                           R5 ; [+1]
       61 RETURN                           R0 0
       62 GETTABLEKS                       R9 R1 K1 ["creationContext"]
       64 GETTABLEKS                       R8 R9 K2 ["creator"]
       66 GETTABLEKS                       R7 R8 K3 ["userId"]
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R7 R8 K15 ["ScopeType"]
       72 GETTABLEKS                       R6 R7 K16 ["User"]
       74 JUMP                             ; [+5]
       75 GETUPVAL                         R8 4
       76 GETTABLEKS                       R7 R8 K15 ["ScopeType"]
       78 GETTABLEKS                       R6 R7 K17 ["Group"]
       80 DUPTABLE                         R7 K20 [{"Id", "Name", "Type", "Uid"}]
       81 SETTABLEKS                       R3 R7 K8 ["Id"]
       83 SETTABLEKS                       R4 R7 K9 ["Name"]
       85 SETTABLEKS                       R6 R7 K18 ["Type"]
       87 GETUPVAL                         R8 5
       88 MOVE                             R9 R6
       89 MOVE                             R10 R3
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K19 ["Uid"]
       93 DUPTABLE                         R8 K32 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage"}]
       94 GETUPVAL                         R10 6
       95 CALL                             R10 0 1
       96 JUMPIFNOT                        R10 ; [+5]
       97 GETUPVAL                         R9 7
       98 MOVE                             R10 R7
       99 GETUPVAL                         R11 8
      100 CALL                             R9 2 1
      101 JUMP                             ; [+1]
      102 LOADK                            R9 K7 [""]
      103 SETTABLEKS                       R9 R8 K21 ["Path"]
      105 GETUPVAL                         R9 8
      106 SETTABLEKS                       R9 R8 K22 ["AssetId"]
      108 SETTABLEKS                       R5 R8 K23 ["AssetType"]
      110 GETTABLEKS                       R9 R1 K33 ["displayName"]
      112 SETTABLEKS                       R9 R8 K24 ["DisplayName"]
      114 GETTABLEKS                       R9 R1 K34 ["revisionCreateTime"]
      116 SETTABLEKS                       R9 R8 K25 ["Created"]
      118 GETTABLEKS                       R9 R1 K34 ["revisionCreateTime"]
      120 SETTABLEKS                       R9 R8 K26 ["Modified"]
      122 GETUPVAL                         R9 9
      123 GETTABLEKS                       R11 R1 K35 ["moderationResult"]
      125 GETTABLEKS                       R10 R11 K36 ["moderationState"]
      127 CALL                             R9 1 1
      128 SETTABLEKS                       R9 R8 K27 ["ModerationStatus"]
      130 SETTABLEKS                       R7 R8 K28 ["Creator"]
      132 GETUPVAL                         R11 4
      133 GETTABLEKS                       R10 R11 K37 ["AssetSource"]
      135 GETTABLEKS                       R9 R10 K38 ["Uploaded"]
      137 SETTABLEKS                       R9 R8 K29 ["Source"]
      139 GETTABLEKS                       R10 R1 K39 ["state"]
      141 JUMPIFNOTEQKS                    R10 K40 ["Active"] ; [+2]
      143 LOADB                            R9 0 +1
      144 LOADB                            R9 1
      145 SETTABLEKS                       R9 R8 K30 ["Archived"]
      147 GETUPVAL                         R10 10
      148 CALL                             R10 0 1
      149 JUMPIFNOT                        R10 ; [+2]
      150 LOADNIL                          R9
      151 JUMP                             ; [+1]
      152 LOADB                            R9 0
      153 SETTABLEKS                       R9 R8 K31 ["IsPackage"]
      155 GETUPVAL                         R9 11
      156 GETTABLEKS                       R10 R8 K23 ["AssetType"]
      158 CALL                             R9 1 1
      159 JUMPIFNOT                        R9 ; [+10]
      160 GETUPVAL                         R10 12
      161 GETTABLEKS                       R9 R10 K41 ["_fetchAssetDependenciesAsync"]
      163 GETUPVAL                         R10 8
      164 NEWCLOSURE                       R11 P0
      165 CAPTURE                          UPVAL U12
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          UPVAL U14
      169 CALL                             R9 2 0
      170 GETUPVAL                         R9 15
      171 GETTABLEKS                       R10 R8 K23 ["AssetType"]
      173 CALL                             R9 1 1
      174 JUMPIFNOT                        R9 ; [+9]
      175 GETUPVAL                         R10 12
      176 GETTABLEKS                       R9 R10 K42 ["_fetchIsPackageAsync"]
      178 GETUPVAL                         R10 8
      179 NEWCLOSURE                       R11 P1
      180 CAPTURE                          VAL R8
      181 CAPTURE                          UPVAL U13
      182 CALL                             R9 2 0
      183 RETURN                           R0 0
      184 GETUPVAL                         R9 13
      185 MOVE                             R10 R8
      186 CALL                             R9 1 0
      187 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch asset details for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K1 ["pretty"]
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["GetFetchAssetDataRequest"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 NAMECALL                         R4 R4 K1 ["makeRequest"]
        7 CALL                             R4 1 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U12
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          UPVAL U13
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U14
       29 CAPTURE                          VAL R3
       30 NAMECALL                         R4 R4 K2 ["andThen"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_52:
        0 MOVE                             R3 R1
        1 NEWTABLE                         R4 0 0
        3 NEWTABLE                         R5 0 0
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["folderItem"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R1 K2 ["path"]
        9 CALL                             R3 3 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R3
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to create folder: %*"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CreateCreateFolderRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 CALL                             R2 3 1
        7 NAMECALL                         R2 R2 K1 ["makeRequest"]
        9 CALL                             R2 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R2 R2 K2 ["andThen"]
       16 CALL                             R2 2 1
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R2 R2 K3 ["catch"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_56:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["ParentScope"]
        3 GETTABLEKS                       R2 R3 K1 ["Id"]
        5 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
        7 GETTABLEKS                       R4 R5 K2 ["Type"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["ScopeType"]
       12 GETTABLEKS                       R5 R6 K4 ["User"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+3]
       16 LOADK                            R3 K5 ["users"]
       17 JUMP                             ; [+20]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K3 ["ScopeType"]
       21 GETTABLEKS                       R5 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+3]
       25 LOADK                            R3 K7 ["groups"]
       26 JUMP                             ; [+11]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K3 ["ScopeType"]
       30 GETTABLEKS                       R5 R6 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+3]
       34 LOADK                            R3 K9 ["universe"]
       35 JUMP                             ; [+2]
       36 LOADK                            R3 K10 [""]
       37 JUMP                             ; [0]
       38 GETTABLEKS                       R4 R0 K11 ["RootScope"]
       40 GETTABLEKS                       R6 R0 K0 ["ParentScope"]
       42 GETTABLEKS                       R5 R6 K2 ["Type"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       47 GETTABLEKS                       R6 R7 K12 ["Folder"]
       49 JUMPIFNOTEQ                      R5 R6 ; [+38]
       51 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       53 GETTABLEKS                       R1 R5 K1 ["Id"]
       55 GETTABLEKS                       R2 R4 K1 ["Id"]
       57 GETTABLEKS                       R5 R4 K2 ["Type"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       62 GETTABLEKS                       R6 R7 K4 ["User"]
       64 JUMPIFNOTEQ                      R5 R6 ; [+3]
       66 LOADK                            R3 K5 ["users"]
       67 JUMP                             ; [+20]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       71 GETTABLEKS                       R6 R7 K6 ["Group"]
       73 JUMPIFNOTEQ                      R5 R6 ; [+3]
       75 LOADK                            R3 K7 ["groups"]
       76 JUMP                             ; [+11]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       80 GETTABLEKS                       R6 R7 K8 ["Universe"]
       82 JUMPIFNOTEQ                      R5 R6 ; [+3]
       84 LOADK                            R3 K9 ["universe"]
       85 JUMP                             ; [+2]
       86 LOADK                            R3 K10 [""]
       87 JUMP                             ; [0]
       88 DUPTABLE                         R5 K14 [{"folderItem"}]
       89 DUPTABLE                         R6 K16 [{"folder"}]
       90 DUPTABLE                         R7 K19 [{"displayName", "parentFolderId"}]
       91 GETTABLEKS                       R8 R0 K20 ["FolderName"]
       93 SETTABLEKS                       R8 R7 K17 ["displayName"]
       95 SETTABLEKS                       R1 R7 K18 ["parentFolderId"]
       97 SETTABLEKS                       R7 R6 K15 ["folder"]
       99 SETTABLEKS                       R6 R5 K13 ["folderItem"]
      101 GETUPVAL                         R7 1
      102 GETTABLEKS                       R6 R7 K21 ["new"]
      104 NEWCLOSURE                       R7 P0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          REF R2
      107 CAPTURE                          REF R3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U5
      113 CALL                             R6 1 -1
      114 CLOSEUPVALS                      R2
      115 RETURN                           R6 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to delete folder: %*"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CreateDeleteFolderRequest"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R2 R2 K2 ["andThen"]
       12 CALL                             R2 2 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R2 R2 K3 ["catch"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to update folder metadata: %*"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_63:
        0 DUPTABLE                         R2 K1 [{"folderItem"}]
        1 DUPTABLE                         R3 K3 [{"folder"}]
        2 DUPTABLE                         R4 K5 [{"displayName"}]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K4 ["displayName"]
        6 SETTABLEKS                       R4 R3 K2 ["folder"]
        8 SETTABLEKS                       R3 R2 K0 ["folderItem"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K6 ["CreateFolderMetadataRequest"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 NAMECALL                         R3 R3 K7 ["makeRequest"]
       18 CALL                             R3 1 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R3 R3 K8 ["andThen"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R3 R3 K9 ["catch"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to move items: %*"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CreateMoveItemsRequest"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Id"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["Type"]
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       12 GETTABLEKS                       R6 R7 K4 ["User"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+3]
       16 LOADK                            R4 K5 ["users"]
       17 JUMP                             ; [+20]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R7 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+11]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R7 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R5 R6 ; [+3]
       34 LOADK                            R4 K9 ["universe"]
       35 JUMP                             ; [+2]
       36 LOADK                            R4 K10 [""]
       37 JUMP                             ; [0]
       38 GETUPVAL                         R5 3
       39 CALL                             R2 3 1
       40 NAMECALL                         R2 R2 K11 ["makeRequest"]
       42 CALL                             R2 1 1
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R2 R2 K12 ["andThen"]
       47 CALL                             R2 2 1
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R2 R2 K13 ["catch"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_68:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 DUPTABLE                         R12 K1 [{"path"}]
        7 SETTABLEKS                       R9 R12 K0 ["path"]
        9 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       11 MOVE                             R11 R4
       12 GETIMPORT                        R10 K4 [table.insert]
       14 CALL                             R10 2 0
       15 FORGLOOP                         R5 2 ; [-10]
       17 DUPTABLE                         R5 K8 [{"originFolderId", "destinationFolderId", "requests"}]
       18 SETTABLEKS                       R2 R5 K5 ["originFolderId"]
       20 SETTABLEKS                       R3 R5 K6 ["destinationFolderId"]
       22 SETTABLEKS                       R4 R5 K7 ["requests"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K9 ["new"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CALL                             R6 1 -1
       35 RETURN                           R6 -1

PROTO_69:
        0 PREPVARARGS                      1
        1 LOADB                            R1 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K11 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["Urls"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Flags"]
       43 GETTABLEKS                       R6 R7 K14 ["getFFlagAmrImproveNetworkingTesting"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Util"]
       52 GETTABLEKS                       R7 R8 K16 ["Services"]
       54 CALL                             R6 1 1
       55 MOVE                             R8 R5
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+5]
       58 GETTABLEKS                       R7 R6 K17 ["GetService"]
       60 LOADK                            R8 K18 ["ContentProvider"]
       61 CALL                             R7 1 1
       62 JUMP                             ; [+6]
       63 GETIMPORT                        R7 K20 [game]
       65 LOADK                            R9 K18 ["ContentProvider"]
       66 NAMECALL                         R7 R7 K17 ["GetService"]
       68 CALL                             R7 2 1
       69 MOVE                             R9 R5
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R9 ; [+5]
       72 GETTABLEKS                       R8 R6 K17 ["GetService"]
       74 LOADK                            R9 K21 ["GroupService"]
       75 CALL                             R8 1 1
       76 JUMP                             ; [+6]
       77 GETIMPORT                        R8 K20 [game]
       79 LOADK                            R10 K21 ["GroupService"]
       80 NAMECALL                         R8 R8 K17 ["GetService"]
       82 CALL                             R8 2 1
       83 MOVE                             R10 R5
       84 CALL                             R10 0 1
       85 JUMPIFNOT                        R10 ; [+5]
       86 GETTABLEKS                       R9 R6 K17 ["GetService"]
       88 LOADK                            R10 K22 ["Players"]
       89 CALL                             R9 1 1
       90 JUMP                             ; [+6]
       91 GETIMPORT                        R9 K20 [game]
       93 LOADK                            R11 K22 ["Players"]
       94 NAMECALL                         R9 R9 K17 ["GetService"]
       96 CALL                             R9 2 1
       97 MOVE                             R11 R5
       98 CALL                             R11 0 1
       99 JUMPIFNOT                        R11 ; [+5]
      100 GETTABLEKS                       R10 R6 K17 ["GetService"]
      102 LOADK                            R11 K23 ["StudioService"]
      103 CALL                             R10 1 1
      104 JUMP                             ; [+6]
      105 GETIMPORT                        R10 K20 [game]
      107 LOADK                            R12 K23 ["StudioService"]
      108 NAMECALL                         R10 R10 K17 ["GetService"]
      110 CALL                             R10 2 1
      111 MOVE                             R12 R5
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+5]
      114 GETTABLEKS                       R11 R6 K17 ["GetService"]
      116 LOADK                            R12 K24 ["UserService"]
      117 CALL                             R11 1 1
      118 JUMP                             ; [+6]
      119 GETIMPORT                        R11 K20 [game]
      121 LOADK                            R13 K24 ["UserService"]
      122 NAMECALL                         R11 R11 K17 ["GetService"]
      124 CALL                             R11 2 1
      125 GETIMPORT                        R12 K5 [require]
      127 GETTABLEKS                       R15 R0 K6 ["Src"]
      129 GETTABLEKS                       R14 R15 K15 ["Util"]
      131 GETTABLEKS                       R13 R14 K25 ["constructItemPath"]
      133 CALL                             R12 1 1
      134 GETIMPORT                        R13 K5 [require]
      136 GETTABLEKS                       R16 R0 K6 ["Src"]
      138 GETTABLEKS                       R15 R16 K15 ["Util"]
      140 GETTABLEKS                       R14 R15 K26 ["convertAssetTypeStringToEnum"]
      142 CALL                             R13 1 1
      143 GETIMPORT                        R14 K5 [require]
      145 GETTABLEKS                       R17 R0 K6 ["Src"]
      147 GETTABLEKS                       R16 R17 K15 ["Util"]
      149 GETTABLEKS                       R15 R16 K27 ["convertFolderResponseToItem"]
      151 CALL                             R14 1 1
      152 GETIMPORT                        R15 K5 [require]
      154 GETTABLEKS                       R18 R0 K6 ["Src"]
      156 GETTABLEKS                       R17 R18 K15 ["Util"]
      158 GETTABLEKS                       R16 R17 K28 ["convertModerationStringToEnum"]
      160 CALL                             R15 1 1
      161 GETIMPORT                        R16 K5 [require]
      163 GETTABLEKS                       R19 R0 K6 ["Src"]
      165 GETTABLEKS                       R18 R19 K15 ["Util"]
      167 GETTABLEKS                       R17 R18 K29 ["createAssetGrantRequests"]
      169 CALL                             R16 1 1
      170 GETIMPORT                        R17 K5 [require]
      172 GETTABLEKS                       R20 R0 K6 ["Src"]
      174 GETTABLEKS                       R19 R20 K15 ["Util"]
      176 GETTABLEKS                       R18 R19 K30 ["createScopeUid"]
      178 CALL                             R17 1 1
      179 GETIMPORT                        R18 K5 [require]
      181 GETTABLEKS                       R21 R0 K6 ["Src"]
      183 GETTABLEKS                       R20 R21 K15 ["Util"]
      185 GETTABLEKS                       R19 R20 K31 ["isAssetTypeComposite"]
      187 CALL                             R18 1 1
      188 GETIMPORT                        R19 K5 [require]
      190 GETTABLEKS                       R22 R0 K6 ["Src"]
      192 GETTABLEKS                       R21 R22 K15 ["Util"]
      194 GETTABLEKS                       R20 R21 K32 ["isAssetTypePackageCompat"]
      196 CALL                             R19 1 1
      197 GETIMPORT                        R20 K5 [require]
      199 GETTABLEKS                       R23 R0 K6 ["Src"]
      201 GETTABLEKS                       R22 R23 K33 ["Networking"]
      203 GETTABLEKS                       R21 R22 K34 ["isAssetOk"]
      205 CALL                             R20 1 1
      206 GETIMPORT                        R21 K5 [require]
      208 GETTABLEKS                       R24 R0 K6 ["Src"]
      210 GETTABLEKS                       R23 R24 K15 ["Util"]
      212 GETTABLEKS                       R22 R23 K35 ["logIfDebug"]
      214 CALL                             R21 1 1
      215 GETIMPORT                        R22 K5 [require]
      217 GETTABLEKS                       R25 R0 K6 ["Src"]
      219 GETTABLEKS                       R24 R25 K13 ["Flags"]
      221 GETTABLEKS                       R23 R24 K36 ["getFIntAmrAssetFetchCount"]
      223 CALL                             R22 1 1
      224 GETIMPORT                        R23 K5 [require]
      226 GETTABLEKS                       R26 R0 K6 ["Src"]
      228 GETTABLEKS                       R25 R26 K13 ["Flags"]
      230 GETTABLEKS                       R24 R25 K37 ["getFFlagAmrUpdatedItemsCache"]
      232 CALL                             R23 1 1
      233 NEWTABLE                         R24 32 0
      235 LOADN                            R25 0
      236 SETTABLEKS                       R25 R24 K38 ["_fetchScopeId"]
      238 LOADN                            R25 0
      239 SETTABLEKS                       R25 R24 K39 ["_fetchTotalAssets"]
      241 MOVE                             R25 R22
      242 CALL                             R25 0 1
      243 SETTABLEKS                       R25 R24 K40 ["_fetchLimit"]
      245 DUPCLOSURE                       R25 K41 [PROTO_0]
      246 CAPTURE                          VAL R1
      247 DUPCLOSURE                       R26 K42 [PROTO_1]
      248 CAPTURE                          VAL R24
      249 SETTABLEKS                       R26 R24 K43 ["setupNewFetchSession"]
      251 DUPCLOSURE                       R26 K44 [PROTO_2]
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R23
      254 DUPCLOSURE                       R27 K45 [PROTO_4]
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R11
      257 SETTABLEKS                       R27 R24 K46 ["fetchUsername"]
      259 DUPCLOSURE                       R27 K47 [PROTO_7]
      260 CAPTURE                          VAL R4
      261 SETTABLEKS                       R27 R24 K48 ["fetchUniverseInfoAsync"]
      263 DUPCLOSURE                       R27 K49 [PROTO_10]
      264 CAPTURE                          VAL R4
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R17
      267 SETTABLEKS                       R27 R24 K50 ["fetchGroupsAsync"]
      269 DUPCLOSURE                       R27 K51 [PROTO_11]
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R1
      274 CAPTURE                          VAL R23
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R13
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R24
      279 SETTABLEKS                       R27 R24 K52 ["_convertResponseToItemsData"]
      281 DUPCLOSURE                       R27 K53 [PROTO_12]
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R26
      284 SETTABLEKS                       R27 R24 K54 ["_checkResponse"]
      286 DUPCLOSURE                       R27 K55 [PROTO_15]
      287 CAPTURE                          VAL R24
      288 CAPTURE                          VAL R26
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R3
      291 SETTABLEKS                       R27 R24 K56 ["_fetchAssetsImplAsync"]
      293 DUPCLOSURE                       R27 K57 [PROTO_16]
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R17
      296 CAPTURE                          VAL R23
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R24
      299 SETTABLEKS                       R27 R24 K58 ["_parseFetchPlacesResponse"]
      301 DUPCLOSURE                       R27 K59 [PROTO_19]
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R4
      304 CAPTURE                          VAL R24
      305 CAPTURE                          VAL R26
      306 SETTABLEKS                       R27 R24 K60 ["fetchPlacesAsync"]
      308 DUPCLOSURE                       R27 K61 [PROTO_20]
      309 CAPTURE                          VAL R1
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R24
      312 SETTABLEKS                       R27 R24 K62 ["fetchAssetsAsync"]
      314 DUPCLOSURE                       R27 K63 [PROTO_23]
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R26
      318 CAPTURE                          VAL R3
      319 SETTABLEKS                       R27 R24 K64 ["_searchAssetsImplAsync"]
      321 DUPCLOSURE                       R27 K65 [PROTO_24]
      322 CAPTURE                          VAL R24
      323 SETTABLEKS                       R27 R24 K66 ["searchAssetsAsync"]
      325 DUPCLOSURE                       R27 K67 [PROTO_27]
      326 CAPTURE                          VAL R16
      327 CAPTURE                          VAL R4
      328 CAPTURE                          VAL R21
      329 CAPTURE                          VAL R3
      330 SETTABLEKS                       R27 R24 K68 ["grantUniverseUseAssetsPermissions"]
      332 DUPCLOSURE                       R27 K69 [PROTO_30]
      333 CAPTURE                          VAL R16
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R21
      337 CAPTURE                          VAL R3
      338 SETTABLEKS                       R27 R24 K70 ["grantAssetsPermissions"]
      340 DUPCLOSURE                       R27 K71 [PROTO_31]
      341 CAPTURE                          VAL R1
      342 CAPTURE                          VAL R21
      343 SETTABLEKS                       R27 R24 K72 ["getThumbnailUriForScope"]
      345 DUPCLOSURE                       R27 K73 [PROTO_33]
      346 CAPTURE                          VAL R24
      347 CAPTURE                          VAL R7
      348 CAPTURE                          VAL R5
      349 CAPTURE                          VAL R21
      350 SETTABLEKS                       R27 R24 K74 ["getThumbnailForScopeAsync"]
      352 DUPCLOSURE                       R27 K75 [PROTO_34]
      353 CAPTURE                          VAL R1
      354 SETTABLEKS                       R27 R24 K76 ["getThumbnailForItem"]
      356 DUPCLOSURE                       R27 K77 [PROTO_37]
      357 CAPTURE                          VAL R24
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R7
      360 CAPTURE                          VAL R21
      361 SETTABLEKS                       R27 R24 K78 ["getThumbnailForItemAsync"]
      363 DUPCLOSURE                       R27 K79 [PROTO_40]
      364 CAPTURE                          VAL R4
      365 SETTABLEKS                       R27 R24 K80 ["fetchPluginInfoAsync"]
      367 DUPCLOSURE                       R27 K81 [PROTO_43]
      368 CAPTURE                          VAL R4
      369 CAPTURE                          VAL R21
      370 CAPTURE                          VAL R3
      371 SETTABLEKS                       R27 R24 K82 ["_fetchAssetDependenciesAsync"]
      373 DUPCLOSURE                       R27 K83 [PROTO_46]
      374 CAPTURE                          VAL R4
      375 CAPTURE                          VAL R21
      376 CAPTURE                          VAL R3
      377 SETTABLEKS                       R27 R24 K84 ["_fetchIsPackageAsync"]
      379 DUPCLOSURE                       R27 K85 [PROTO_51]
      380 CAPTURE                          VAL R4
      381 CAPTURE                          VAL R9
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R13
      384 CAPTURE                          VAL R1
      385 CAPTURE                          VAL R17
      386 CAPTURE                          VAL R23
      387 CAPTURE                          VAL R12
      388 CAPTURE                          VAL R15
      389 CAPTURE                          VAL R5
      390 CAPTURE                          VAL R18
      391 CAPTURE                          VAL R24
      392 CAPTURE                          VAL R19
      393 CAPTURE                          VAL R21
      394 CAPTURE                          VAL R3
      395 SETTABLEKS                       R27 R24 K86 ["fetchAssetInfoAsync"]
      397 DUPCLOSURE                       R27 K87 [PROTO_52]
      398 SETTABLEKS                       R27 R24 K88 ["fetchFoldersAsync"]
      400 DUPCLOSURE                       R27 K89 [PROTO_56]
      401 CAPTURE                          VAL R1
      402 CAPTURE                          VAL R2
      403 CAPTURE                          VAL R4
      404 CAPTURE                          VAL R14
      405 CAPTURE                          VAL R21
      406 CAPTURE                          VAL R3
      407 SETTABLEKS                       R27 R24 K90 ["createFolderAsync"]
      409 DUPCLOSURE                       R27 K91 [PROTO_60]
      410 CAPTURE                          VAL R2
      411 CAPTURE                          VAL R4
      412 CAPTURE                          VAL R21
      413 CAPTURE                          VAL R3
      414 SETTABLEKS                       R27 R24 K92 ["deleteFolderAsync"]
      416 DUPCLOSURE                       R27 K93 [PROTO_64]
      417 CAPTURE                          VAL R2
      418 CAPTURE                          VAL R4
      419 CAPTURE                          VAL R21
      420 CAPTURE                          VAL R3
      421 SETTABLEKS                       R27 R24 K94 ["updateFolderMetadataAsync"]
      423 DUPCLOSURE                       R27 K95 [PROTO_68]
      424 CAPTURE                          VAL R2
      425 CAPTURE                          VAL R4
      426 CAPTURE                          VAL R1
      427 CAPTURE                          VAL R21
      428 CAPTURE                          VAL R3
      429 SETTABLEKS                       R27 R24 K96 ["moveItemsAsync"]
      431 DUPCLOSURE                       R27 K97 [PROTO_69]
      432 SETTABLEKS                       R27 R24 K98 ["resume"]
      434 RETURN                           R24 1
