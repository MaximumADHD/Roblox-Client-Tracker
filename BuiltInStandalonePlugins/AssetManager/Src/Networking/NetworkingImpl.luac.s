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
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIF                           R0 ; [+19]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       10 ADDK                             R1 R1 K2 [1]
       11 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K1 ["_fetchScopeId"]
       16 JUMPIFNOTEQKN                    R0 K3 [∞] ; [+5]
       18 GETUPVAL                         R0 0
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R0 R1 K1 ["_fetchScopeId"]
       25 RETURN                           R0 1
       26 LOADN                            R0 0
       27 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["_fetchTotalAssets"]
        3 ADD                              R2 R2 R0
        4 SETTABLEKS                       R2 R1 K0 ["_fetchTotalAssets"]
        6 RETURN                           R0 0

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
       24 JUMP                             ; [+170]
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
      106 GETTABLEKS                       R20 R8 K38 ["path"]
      108 JUMPIFNOT                        R20 ; [+7]
      109 GETTABLEKS                       R20 R8 K38 ["path"]
      111 JUMPIFEQKS                       R20 K39 [""] ; [+4]
      113 GETTABLEKS                       R19 R8 K38 ["path"]
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R19 4
      117 MOVE                             R20 R1
      118 GETTABLEKS                       R21 R10 K40 ["assetId"]
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K25 ["Path"]
      123 GETTABLEKS                       R19 R10 K40 ["assetId"]
      125 SETTABLEKS                       R19 R18 K26 ["AssetId"]
      127 GETUPVAL                         R19 5
      128 GETTABLEKS                       R20 R10 K41 ["assetType"]
      130 CALL                             R19 1 1
      131 SETTABLEKS                       R19 R18 K27 ["AssetType"]
      133 GETTABLEKS                       R19 R10 K42 ["displayName"]
      135 SETTABLEKS                       R19 R18 K28 ["DisplayName"]
      137 GETTABLEKS                       R19 R10 K43 ["createTime"]
      139 SETTABLEKS                       R19 R18 K29 ["Created"]
      141 GETTABLEKS                       R19 R10 K44 ["updateTime"]
      143 SETTABLEKS                       R19 R18 K30 ["Modified"]
      145 GETUPVAL                         R21 3
      146 GETTABLEKS                       R20 R21 K31 ["ModerationStatus"]
      148 GETTABLEKS                       R19 R20 K45 ["Placeholder"]
      150 SETTABLEKS                       R19 R18 K31 ["ModerationStatus"]
      152 DUPTABLE                         R19 K50 [{"Id", "Name", "Type", "Uid"}]
      153 SETTABLEKS                       R13 R19 K46 ["Id"]
      155 SETTABLEKS                       R14 R19 K47 ["Name"]
      157 SETTABLEKS                       R15 R19 K48 ["Type"]
      159 GETUPVAL                         R20 6
      160 MOVE                             R21 R15
      161 MOVE                             R22 R13
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K49 ["Uid"]
      165 SETTABLEKS                       R19 R18 K32 ["Creator"]
      167 SETTABLEKS                       R17 R18 K33 ["Source"]
      169 SETTABLEKS                       R16 R18 K34 ["Archived"]
      171 GETTABLEKS                       R19 R9 K51 ["isPackage"]
      173 SETTABLEKS                       R19 R18 K35 ["IsPackage"]
      175 GETUPVAL                         R21 7
      176 GETTABLEKS                       R20 R21 K52 ["_fetchTotalAssets"]
      178 ADD                              R19 R20 R7
      179 SETTABLEKS                       R19 R18 K36 ["SearchRank"]
      181 FASTCALL2                        TABLE_INSERT R2 R18 ; [+5]
      183 MOVE                             R20 R2
      184 MOVE                             R21 R18
      185 GETIMPORT                        R19 K55 [table.insert]
      187 CALL                             R19 2 0
      188 GETTABLEKS                       R20 R18 K32 ["Creator"]
      190 GETTABLEKS                       R19 R20 K47 ["Name"]
      192 GETTABLEKS                       R20 R18 K32 ["Creator"]
      194 SETTABLE                         R20 R3 R19
      195 FORGLOOP                         R4 2 ; [-188]
      197 RETURN                           R2 2

PROTO_12:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIF                           R6 ; [+23]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K0 ["_fetchScopeId"]
        6 JUMPIFEQ                         R0 R6 ; [+19]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R7 R6 K1 ["_fetchTotalAssets"]
       11 ADDK                             R7 R7 K2 [0]
       12 SETTABLEKS                       R7 R6 K1 ["_fetchTotalAssets"]
       14 MOVE                             R6 R4
       15 NEWTABLE                         R7 0 0
       17 NEWTABLE                         R8 0 0
       19 MOVE                             R9 R0
       20 CALL                             R6 3 0
       21 MOVE                             R6 R1
       22 LOADB                            R7 1
       23 CALL                             R6 1 0
       24 LOADB                            R6 0
       25 RETURN                           R6 1
       26 JUMPIFEQKN                       R2 K3 [200] ; [+24]
       28 MOVE                             R6 R5
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R8 R2
       31 GETIMPORT                        R7 K5 [tostring]
       33 CALL                             R7 1 1
       34 MOVE                             R8 R2
       35 CALL                             R6 2 0
       36 GETUPVAL                         R6 0
       37 CALL                             R6 0 1
       38 JUMPIFNOT                        R6 ; [+7]
       39 MOVE                             R6 R4
       40 NEWTABLE                         R7 0 0
       42 NEWTABLE                         R8 0 0
       44 MOVE                             R9 R0
       45 CALL                             R6 3 0
       46 MOVE                             R6 R1
       47 LOADB                            R7 0
       48 CALL                             R6 1 0
       49 LOADB                            R6 0
       50 RETURN                           R6 1
       51 GETUPVAL                         R6 0
       52 CALL                             R6 0 1
       53 JUMPIF                           R6 ; [+20]
       54 JUMPIFNOTEQKN                    R3 K2 [0] ; [+19]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R7 R6 K1 ["_fetchTotalAssets"]
       59 ADDK                             R7 R7 K2 [0]
       60 SETTABLEKS                       R7 R6 K1 ["_fetchTotalAssets"]
       62 MOVE                             R6 R4
       63 NEWTABLE                         R7 0 0
       65 NEWTABLE                         R8 0 0
       67 MOVE                             R9 R0
       68 CALL                             R6 3 0
       69 MOVE                             R6 R1
       70 LOADB                            R7 0
       71 CALL                             R6 1 0
       72 LOADB                            R6 0
       73 RETURN                           R6 1
       74 LOADB                            R6 1
       75 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_checkResponse"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["FetchSessionId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Resolve"]
        9 GETTABLEKS                       R4 R0 K3 ["responseCode"]
       11 GETTABLEKS                       R7 R0 K4 ["responseBody"]
       13 GETTABLEKS                       R6 R7 K5 ["items"]
       15 LENGTH                           R5 R6
       16 GETUPVAL                         R6 2
       17 GETUPVAL                         R7 3
       18 CALL                             R1 6 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K6 ["_convertResponseToItemsData"]
       24 GETTABLEKS                       R4 R0 K4 ["responseBody"]
       26 GETTABLEKS                       R3 R4 K5 ["items"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K7 ["ScopeInfo"]
       31 CALL                             R2 2 2
       32 LENGTH                           R4 R2
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       36 ADD                              R6 R6 R4
       37 SETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       39 GETTABLEKS                       R5 R0 K4 ["responseBody"]
       41 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R2
       45 MOVE                             R7 R3
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R8 R9 K1 ["FetchSessionId"]
       49 LOADNIL                          R9
       50 MOVE                             R10 R4
       51 CALL                             R5 5 1
       52 MOVE                             R1 R5
       53 JUMPIF                           R1 ; [+6]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K2 ["Resolve"]
       57 LOADB                            R6 0
       58 CALL                             R5 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R5 1
       61 SETTABLEKS                       R4 R5 K10 ["PageToken"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K11 ["_fetchAssetsImplAsync"]
       66 GETUPVAL                         R6 1
       67 GETUPVAL                         R7 2
       68 GETUPVAL                         R8 3
       69 GETUPVAL                         R9 4
       70 CALL                             R5 4 0
       71 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["pretty"]
        4 GETTABLEKS                       R4 R0 K1 ["responseBody"]
        6 GETTABLEKS                       R3 R4 K2 ["errors"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 2
       11 NEWTABLE                         R2 0 0
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K3 ["FetchSessionId"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K4 ["Resolve"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R4 K2 [{"maxPageSize", "pageToken"}]
        1 GETTABLEKS                       R5 R0 K3 ["MaxPageSize"]
        3 SETTABLEKS                       R5 R4 K0 ["maxPageSize"]
        5 GETTABLEKS                       R5 R0 K4 ["PageToken"]
        7 SETTABLEKS                       R5 R4 K1 ["pageToken"]
        9 MOVE                             R5 R3
       10 GETTABLEKS                       R7 R0 K5 ["ScopeInfo"]
       12 GETTABLEKS                       R6 R7 K6 ["Id"]
       14 MOVE                             R7 R4
       15 CALL                             R5 2 1
       16 NAMECALL                         R5 R5 K7 ["makeRequest"]
       18 CALL                             R5 1 1
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R5 R5 K8 ["andThen"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

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
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R14 R1 K0 ["Name"]
       46 GETTABLE                         R13 R3 R14
       47 GETTABLEKS                       R14 R10 K21 ["id"]
       49 CALL                             R12 2 1
       50 SETTABLEKS                       R12 R11 K9 ["Path"]
       52 GETTABLEKS                       R12 R10 K21 ["id"]
       54 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R13 R14 K11 ["AssetType"]
       59 GETTABLEKS                       R12 R13 K22 ["Place"]
       61 SETTABLEKS                       R12 R11 K11 ["AssetType"]
       63 GETTABLEKS                       R12 R10 K23 ["name"]
       65 SETTABLEKS                       R12 R11 K12 ["DisplayName"]
       67 GETTABLEKS                       R12 R10 K24 ["created"]
       69 SETTABLEKS                       R12 R11 K13 ["Created"]
       71 GETTABLEKS                       R12 R10 K25 ["updated"]
       73 SETTABLEKS                       R12 R11 K14 ["Modified"]
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R13 R14 K15 ["ModerationStatus"]
       78 GETTABLEKS                       R12 R13 K26 ["Placeholder"]
       80 SETTABLEKS                       R12 R11 K15 ["ModerationStatus"]
       82 GETTABLEKS                       R13 R1 K0 ["Name"]
       84 GETTABLE                         R12 R3 R13
       85 SETTABLEKS                       R12 R11 K16 ["Creator"]
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R13 R14 K27 ["AssetSource"]
       90 GETTABLEKS                       R12 R13 K28 ["Uploaded"]
       92 SETTABLEKS                       R12 R11 K17 ["Source"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K18 ["Archived"]
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R13 R14 K29 ["_fetchTotalAssets"]
      100 ADD                              R12 R13 R9
      101 SETTABLEKS                       R12 R11 K19 ["SearchRank"]
      103 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      105 MOVE                             R13 R2
      106 MOVE                             R14 R11
      107 GETIMPORT                        R12 K32 [table.insert]
      109 CALL                             R12 2 0
      110 GETTABLEKS                       R12 R10 K33 ["isRootPlace"]
      112 JUMPIFNOT                        R12 ; [+2]
      113 GETTABLEKS                       R4 R10 K21 ["id"]
      115 FORGLOOP                         R6 2 ; [-74]
      117 MOVE                             R6 R2
      118 MOVE                             R7 R3
      119 MOVE                             R8 R4
      120 GETTABLEKS                       R9 R5 K34 ["nextPageCursor"]
      122 RETURN                           R6 4

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_parseFetchPlacesResponse"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R3 R5 K1 ["ScopeInfo"]
        7 CALL                             R1 2 4
        8 LENGTH                           R5 R1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       12 ADD                              R7 R7 R5
       13 SETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K3 ["FetchSessionId"]
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 CALL                             R5 5 1
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+22]
       27 JUMPIF                           R5 ; [+6]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K4 ["Resolve"]
       31 LOADB                            R7 0
       32 CALL                             R6 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R8 R0 K5 ["responseBody"]
       37 GETTABLEKS                       R7 R8 K6 ["nextPageCursor"]
       39 SETTABLEKS                       R7 R6 K7 ["PageToken"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K8 ["fetchPlacesAsync"]
       44 GETUPVAL                         R7 1
       45 GETUPVAL                         R8 2
       46 GETUPVAL                         R9 4
       47 CALL                             R6 3 0
       48 RETURN                           R0 0
       49 JUMPIFNOT                        R4 ; [+25]
       50 JUMPIFEQKS                       R4 K9 [""] ; [+24]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K2 ["_fetchTotalAssets"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K10 ["_fetchLimit"]
       58 JUMPIFNOTLT                      R6 R7 ; [+16]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R8 R0 K5 ["responseBody"]
       63 GETTABLEKS                       R7 R8 K6 ["nextPageCursor"]
       65 SETTABLEKS                       R7 R6 K7 ["PageToken"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R6 R7 K8 ["fetchPlacesAsync"]
       70 GETUPVAL                         R7 1
       71 GETUPVAL                         R8 2
       72 GETUPVAL                         R9 4
       73 CALL                             R6 3 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R6 R7 K4 ["Resolve"]
       78 LOADB                            R7 0
       79 CALL                             R6 1 0
       80 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 2
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K0 ["FetchSessionId"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K1 ["Resolve"]
       18 LOADB                            R2 0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R4 K1 ["Type"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R5 K3 ["Universe"]
        9 JUMPIFEQ                         R3 R4 ; [+17]
       11 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R3 R4 K1 ["Type"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
       18 GETTABLEKS                       R4 R5 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R3 R4 ; [+6]
       22 GETTABLEKS                       R3 R0 K5 ["Resolve"]
       24 LOADB                            R4 0
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R0 K7 ["PageToken"]
       29 ORK                              R3 R4 K6 [""]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K8 ["CreateFetchPlacesRequest"]
       33 GETTABLEKS                       R6 R0 K0 ["ScopeInfo"]
       35 GETTABLEKS                       R5 R6 K9 ["Id"]
       37 MOVE                             R6 R3
       38 LOADN                            R7 100
       39 CALL                             R4 3 1
       40 NAMECALL                         R4 R4 K10 ["makeRequest"]
       42 CALL                             R4 1 1
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R2
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R4 R4 K11 ["andThen"]
       56 CALL                             R4 3 0
       57 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
        3 GETTABLEKS                       R4 R5 K1 ["Type"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
        8 GETTABLEKS                       R5 R6 K3 ["User"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+5]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["CreateFetchAssetsForUserRequest"]
       15 JUMP                             ; [+76]
       16 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       18 GETTABLEKS                       R4 R5 K1 ["Type"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       23 GETTABLEKS                       R5 R6 K5 ["Group"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+5]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K6 ["CreateFetchAssetsForGroupRequest"]
       30 JUMP                             ; [+61]
       31 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       33 GETTABLEKS                       R4 R5 K1 ["Type"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       38 GETTABLEKS                       R5 R6 K7 ["Universe"]
       40 JUMPIFEQ                         R4 R5 ; [+12]
       42 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       44 GETTABLEKS                       R4 R5 K1 ["Type"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       49 GETTABLEKS                       R5 R6 K8 ["ProjectShared"]
       51 JUMPIFNOTEQ                      R4 R5 ; [+5]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K9 ["CreateFetchAssetsForUniverseRequest"]
       56 JUMP                             ; [+35]
       57 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       59 GETTABLEKS                       R4 R5 K1 ["Type"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
       64 GETTABLEKS                       R5 R6 K10 ["ProjectPlaces"]
       66 JUMPIFNOTEQ                      R4 R5 ; [+6]
       68 GETTABLEKS                       R4 R0 K11 ["Resolve"]
       70 LOADB                            R5 0
       71 CALL                             R4 1 0
       72 RETURN                           R0 0
       73 MOVE                             R4 R2
       74 LOADK                            R5 K12 ["Unsupported scope type"]
       75 CALL                             R4 1 0
       76 GETUPVAL                         R4 2
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+8]
       79 MOVE                             R4 R1
       80 NEWTABLE                         R5 0 0
       82 NEWTABLE                         R6 0 0
       84 GETTABLEKS                       R7 R0 K13 ["FetchSessionId"]
       86 CALL                             R4 3 0
       87 GETTABLEKS                       R4 R0 K11 ["Resolve"]
       89 LOADB                            R5 0
       90 CALL                             R4 1 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R5 3
       93 GETTABLEKS                       R4 R5 K14 ["_fetchAssetsImplAsync"]
       95 MOVE                             R5 R0
       96 MOVE                             R6 R1
       97 MOVE                             R7 R2
       98 MOVE                             R8 R3
       99 CALL                             R4 4 0
      100 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_checkResponse"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["FetchSessionId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Resolve"]
        9 GETTABLEKS                       R4 R0 K3 ["responseCode"]
       11 GETTABLEKS                       R7 R0 K4 ["responseBody"]
       13 GETTABLEKS                       R6 R7 K5 ["items"]
       15 LENGTH                           R5 R6
       16 GETUPVAL                         R6 2
       17 GETUPVAL                         R7 3
       18 CALL                             R1 6 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K6 ["_convertResponseToItemsData"]
       24 GETTABLEKS                       R4 R0 K4 ["responseBody"]
       26 GETTABLEKS                       R3 R4 K5 ["items"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K7 ["ScopeInfo"]
       31 CALL                             R2 2 2
       32 LENGTH                           R4 R2
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       36 ADD                              R6 R6 R4
       37 SETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       39 GETUPVAL                         R4 4
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+35]
       42 GETUPVAL                         R4 2
       43 MOVE                             R5 R2
       44 MOVE                             R6 R3
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K1 ["FetchSessionId"]
       48 LOADNIL                          R8
       49 GETTABLEKS                       R10 R0 K4 ["responseBody"]
       51 GETTABLEKS                       R9 R10 K9 ["nextPageToken"]
       53 CALL                             R4 5 1
       54 MOVE                             R1 R4
       55 JUMPIF                           R1 ; [+6]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K2 ["Resolve"]
       59 LOADB                            R5 0
       60 CALL                             R4 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R6 R0 K4 ["responseBody"]
       65 GETTABLEKS                       R5 R6 K9 ["nextPageToken"]
       67 SETTABLEKS                       R5 R4 K10 ["PageToken"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K11 ["_searchAssetsImplAsync"]
       72 GETUPVAL                         R5 1
       73 GETUPVAL                         R6 2
       74 GETUPVAL                         R7 3
       75 CALL                             R4 3 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R4 2
       78 MOVE                             R5 R2
       79 MOVE                             R6 R3
       80 GETTABLEKS                       R8 R0 K4 ["responseBody"]
       82 GETTABLEKS                       R7 R8 K9 ["nextPageToken"]
       84 CALL                             R4 3 0
       85 GETTABLEKS                       R5 R0 K4 ["responseBody"]
       87 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       89 JUMPIFNOT                        R4 ; [+29]
       90 GETTABLEKS                       R5 R0 K4 ["responseBody"]
       92 GETTABLEKS                       R4 R5 K9 ["nextPageToken"]
       94 JUMPIFEQKS                       R4 K12 [""] ; [+24]
       96 GETUPVAL                         R5 0
       97 GETTABLEKS                       R4 R5 K8 ["_fetchTotalAssets"]
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R5 R6 K13 ["_fetchLimit"]
      102 JUMPIFNOTLT                      R4 R5 ; [+16]
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R6 R0 K4 ["responseBody"]
      107 GETTABLEKS                       R5 R6 K9 ["nextPageToken"]
      109 SETTABLEKS                       R5 R4 K10 ["PageToken"]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R4 R5 K11 ["_searchAssetsImplAsync"]
      114 GETUPVAL                         R5 1
      115 GETUPVAL                         R6 2
      116 GETUPVAL                         R7 3
      117 CALL                             R4 3 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R4 R5 K2 ["Resolve"]
      122 LOADB                            R5 0
      123 CALL                             R4 1 0
      124 RETURN                           R0 0
      125 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R1 3
       11 NEWTABLE                         R2 0 0
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["FetchSessionId"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R1 R2 K2 ["Resolve"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R3 K2 [{"Type", "Id"}]
        1 GETTABLEKS                       R5 R0 K3 ["ScopeInfo"]
        3 GETTABLEKS                       R4 R5 K0 ["Type"]
        5 SETTABLEKS                       R4 R3 K0 ["Type"]
        7 GETTABLEKS                       R5 R0 K3 ["ScopeInfo"]
        9 GETTABLEKS                       R4 R5 K1 ["Id"]
       11 SETTABLEKS                       R4 R3 K1 ["Id"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["CreateSearchAssetsRequest"]
       16 GETTABLEKS                       R5 R0 K5 ["SearchTerm"]
       18 GETTABLEKS                       R6 R0 K6 ["AssetType"]
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R0 K7 ["MaxPageSize"]
       23 GETTABLEKS                       R9 R0 K8 ["PageToken"]
       25 GETTABLEKS                       R10 R0 K9 ["IncludeFolders"]
       27 CALL                             R4 6 1
       28 NAMECALL                         R4 R4 K10 ["makeRequest"]
       30 CALL                             R4 1 1
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U2
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R4 R4 K11 ["andThen"]
       45 CALL                             R4 3 0
       46 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_searchAssetsImplAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

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
        9 GETTABLEKS                       R10 R11 K1 ["PermissionsSubject"]
       11 GETTABLE                         R9 R10 R1
       12 MOVE                             R10 R2
       13 GETUPVAL                         R13 2
       14 GETTABLEKS                       R12 R13 K2 ["PermissionsAction"]
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
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFEQKN                       R1 K1 [200] ; [+16]
        4 GETUPVAL                         R1 0
        5 LOADK                            R3 K2 ["Failed to check permissions for assets: %*"]
        6 GETTABLEKS                       R5 R0 K0 ["responseCode"]
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 LOADB                            R2 0
       15 NEWTABLE                         R3 0 0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 GETTABLEKS                       R1 R0 K4 ["responseBody"]
       21 GETUPVAL                         R2 1
       22 LOADB                            R3 1
       23 GETTABLEKS                       R4 R1 K5 ["results"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to check permissions for assets: %* %*"]
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

PROTO_33:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R0
        5 CALL                             R5 4 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["CheckAssetsPermissionsRequest"]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 NAMECALL                         R6 R6 K1 ["makeRequest"]
       13 CALL                             R6 1 1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R4
       17 NAMECALL                         R6 R6 K2 ["andThen"]
       19 CALL                             R6 2 1
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 NAMECALL                         R6 R6 K3 ["catch"]
       25 CALL                             R6 2 0
       26 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K4 ["Failed to fetch thumbnail for scope %*"]
       10 GETUPVAL                         R6 3
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 LOADK                            R3 K6 [""]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_36:
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
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R3 R3 K1 ["PreloadAsync"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getThumbnailForItem"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K3 [task.spawn]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["data"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R3 R1 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["fetchAssetInfoAsync"]
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 1
        9 LOADB                            R9 1
       10 GETUPVAL                         R10 2
       11 GETUPVAL                         R11 3
       12 CALL                             R6 5 0
       13 FORGLOOP                         R1 2 ; [-10]
       15 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_52:
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
       94 GETUPVAL                         R9 6
       95 MOVE                             R10 R7
       96 GETUPVAL                         R11 7
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K21 ["Path"]
      100 GETUPVAL                         R9 7
      101 SETTABLEKS                       R9 R8 K22 ["AssetId"]
      103 SETTABLEKS                       R5 R8 K23 ["AssetType"]
      105 GETTABLEKS                       R9 R1 K33 ["displayName"]
      107 SETTABLEKS                       R9 R8 K24 ["DisplayName"]
      109 GETTABLEKS                       R9 R1 K34 ["revisionCreateTime"]
      111 SETTABLEKS                       R9 R8 K25 ["Created"]
      113 GETTABLEKS                       R9 R1 K34 ["revisionCreateTime"]
      115 SETTABLEKS                       R9 R8 K26 ["Modified"]
      117 GETUPVAL                         R9 8
      118 GETTABLEKS                       R11 R1 K35 ["moderationResult"]
      120 GETTABLEKS                       R10 R11 K36 ["moderationState"]
      122 CALL                             R9 1 1
      123 SETTABLEKS                       R9 R8 K27 ["ModerationStatus"]
      125 SETTABLEKS                       R7 R8 K28 ["Creator"]
      127 GETUPVAL                         R11 4
      128 GETTABLEKS                       R10 R11 K37 ["AssetSource"]
      130 GETTABLEKS                       R9 R10 K38 ["Uploaded"]
      132 SETTABLEKS                       R9 R8 K29 ["Source"]
      134 GETTABLEKS                       R10 R1 K39 ["state"]
      136 JUMPIFNOTEQKS                    R10 K40 ["Active"] ; [+2]
      138 LOADB                            R9 0 +1
      139 LOADB                            R9 1
      140 SETTABLEKS                       R9 R8 K30 ["Archived"]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K31 ["IsPackage"]
      145 GETUPVAL                         R9 9
      146 JUMPIFNOT                        R9 ; [+15]
      147 GETUPVAL                         R9 10
      148 GETTABLEKS                       R10 R8 K23 ["AssetType"]
      150 CALL                             R9 1 1
      151 JUMPIFNOT                        R9 ; [+10]
      152 GETUPVAL                         R10 11
      153 GETTABLEKS                       R9 R10 K41 ["_fetchAssetDependenciesAsync"]
      155 GETUPVAL                         R10 7
      156 NEWCLOSURE                       R11 P0
      157 CAPTURE                          UPVAL U11
      158 CAPTURE                          UPVAL U0
      159 CAPTURE                          UPVAL U12
      160 CAPTURE                          UPVAL U13
      161 CALL                             R9 2 0
      162 GETUPVAL                         R9 14
      163 GETTABLEKS                       R10 R8 K23 ["AssetType"]
      165 CALL                             R9 1 1
      166 JUMPIFNOT                        R9 ; [+9]
      167 GETUPVAL                         R10 11
      168 GETTABLEKS                       R9 R10 K42 ["_fetchIsPackageAsync"]
      170 GETUPVAL                         R10 7
      171 NEWCLOSURE                       R11 P1
      172 CAPTURE                          VAL R8
      173 CAPTURE                          UPVAL U12
      174 CALL                             R9 2 0
      175 RETURN                           R0 0
      176 GETUPVAL                         R9 12
      177 MOVE                             R10 R8
      178 CALL                             R9 1 0
      179 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["GetFetchAssetDataRequest"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 NAMECALL                         R5 R5 K1 ["makeRequest"]
        7 CALL                             R5 1 1
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U10
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          UPVAL U11
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U12
       28 CAPTURE                          VAL R4
       29 NAMECALL                         R5 R5 K2 ["andThen"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0

PROTO_55:
        0 MOVE                             R3 R1
        1 NEWTABLE                         R4 0 0
        3 NEWTABLE                         R5 0 0
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K3 ["ScopeType"]
       21 GETTABLEKS                       R5 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+3]
       25 LOADK                            R3 K7 ["groups"]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K3 ["ScopeType"]
       30 GETTABLEKS                       R5 R6 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+3]
       34 LOADK                            R3 K9 ["universe"]
       35 JUMP                             ; [+1]
       36 LOADK                            R3 K10 [""]
       37 GETTABLEKS                       R4 R0 K11 ["RootScope"]
       39 GETTABLEKS                       R6 R0 K0 ["ParentScope"]
       41 GETTABLEKS                       R5 R6 K2 ["Type"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       46 GETTABLEKS                       R6 R7 K12 ["Folder"]
       48 JUMPIFNOTEQ                      R5 R6 ; [+37]
       50 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       52 GETTABLEKS                       R1 R5 K1 ["Id"]
       54 GETTABLEKS                       R2 R4 K1 ["Id"]
       56 GETTABLEKS                       R5 R4 K2 ["Type"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       61 GETTABLEKS                       R6 R7 K4 ["User"]
       63 JUMPIFNOTEQ                      R5 R6 ; [+3]
       65 LOADK                            R3 K5 ["users"]
       66 JUMP                             ; [+19]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       70 GETTABLEKS                       R6 R7 K6 ["Group"]
       72 JUMPIFNOTEQ                      R5 R6 ; [+3]
       74 LOADK                            R3 K7 ["groups"]
       75 JUMP                             ; [+10]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       79 GETTABLEKS                       R6 R7 K8 ["Universe"]
       81 JUMPIFNOTEQ                      R5 R6 ; [+3]
       83 LOADK                            R3 K9 ["universe"]
       84 JUMP                             ; [+1]
       85 LOADK                            R3 K10 [""]
       86 DUPTABLE                         R5 K14 [{"folderItem"}]
       87 DUPTABLE                         R6 K16 [{"folder"}]
       88 DUPTABLE                         R7 K19 [{"displayName", "parentFolderId"}]
       89 GETTABLEKS                       R8 R0 K20 ["FolderName"]
       91 SETTABLEKS                       R8 R7 K17 ["displayName"]
       93 SETTABLEKS                       R1 R7 K18 ["parentFolderId"]
       95 SETTABLEKS                       R7 R6 K15 ["folder"]
       97 SETTABLEKS                       R6 R5 K13 ["folderItem"]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R6 R7 K21 ["new"]
      102 NEWCLOSURE                       R7 P0
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          REF R2
      105 CAPTURE                          REF R3
      106 CAPTURE                          VAL R5
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          UPVAL U5
      111 CALL                             R6 1 -1
      112 CLOSEUPVALS                      R2
      113 RETURN                           R6 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
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
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R7 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R7 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R5 R6 ; [+3]
       34 LOADK                            R4 K9 ["universe"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K10 [""]
       37 GETUPVAL                         R5 3
       38 CALL                             R2 3 1
       39 NAMECALL                         R2 R2 K11 ["makeRequest"]
       41 CALL                             R2 1 1
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R2 R2 K12 ["andThen"]
       46 CALL                             R2 2 1
       47 NEWCLOSURE                       R4 P1
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R1
       51 NAMECALL                         R2 R2 K13 ["catch"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
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
       41 GETTABLEKS                       R7 R8 K13 ["Util"]
       43 GETTABLEKS                       R6 R7 K14 ["Services"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K15 ["GetService"]
       48 LOADK                            R7 K16 ["ContentProvider"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R5 K15 ["GetService"]
       52 LOADK                            R8 K17 ["GroupService"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R5 K15 ["GetService"]
       56 LOADK                            R9 K18 ["Players"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R5 K15 ["GetService"]
       60 LOADK                            R10 K19 ["StudioService"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R5 K15 ["GetService"]
       64 LOADK                            R11 K20 ["UserService"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R14 R0 K6 ["Src"]
       70 GETTABLEKS                       R13 R14 K13 ["Util"]
       72 GETTABLEKS                       R12 R13 K21 ["constructItemPath"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R15 R0 K6 ["Src"]
       79 GETTABLEKS                       R14 R15 K13 ["Util"]
       81 GETTABLEKS                       R13 R14 K22 ["convertAssetTypeStringToEnum"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R16 R0 K6 ["Src"]
       88 GETTABLEKS                       R15 R16 K13 ["Util"]
       90 GETTABLEKS                       R14 R15 K23 ["convertFolderResponseToItem"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R17 R0 K6 ["Src"]
       97 GETTABLEKS                       R16 R17 K13 ["Util"]
       99 GETTABLEKS                       R15 R16 K24 ["convertModerationStringToEnum"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R18 R0 K6 ["Src"]
      106 GETTABLEKS                       R17 R18 K13 ["Util"]
      108 GETTABLEKS                       R16 R17 K25 ["createAssetGrantRequests"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R19 R0 K6 ["Src"]
      115 GETTABLEKS                       R18 R19 K13 ["Util"]
      117 GETTABLEKS                       R17 R18 K26 ["createCheckAssetPermissionRequests"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R20 R0 K6 ["Src"]
      124 GETTABLEKS                       R19 R20 K13 ["Util"]
      126 GETTABLEKS                       R18 R19 K27 ["createScopeUid"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K5 [require]
      131 GETTABLEKS                       R21 R0 K6 ["Src"]
      133 GETTABLEKS                       R20 R21 K13 ["Util"]
      135 GETTABLEKS                       R19 R20 K28 ["isAssetTypeComposite"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R22 R0 K6 ["Src"]
      142 GETTABLEKS                       R21 R22 K13 ["Util"]
      144 GETTABLEKS                       R20 R21 K29 ["isAssetTypePackageCompat"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K5 [require]
      149 GETTABLEKS                       R23 R0 K6 ["Src"]
      151 GETTABLEKS                       R22 R23 K30 ["Networking"]
      153 GETTABLEKS                       R21 R22 K31 ["isAssetOk"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K5 [require]
      158 GETTABLEKS                       R24 R0 K6 ["Src"]
      160 GETTABLEKS                       R23 R24 K13 ["Util"]
      162 GETTABLEKS                       R22 R23 K32 ["logIfDebug"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K5 [require]
      167 GETTABLEKS                       R25 R0 K6 ["Src"]
      169 GETTABLEKS                       R24 R25 K33 ["Flags"]
      171 GETTABLEKS                       R23 R24 K34 ["getFIntAmrAssetFetchCount"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K5 [require]
      176 GETTABLEKS                       R26 R0 K6 ["Src"]
      178 GETTABLEKS                       R25 R26 K33 ["Flags"]
      180 GETTABLEKS                       R24 R25 K35 ["getFFlagAmrFixNetworkingEpochs"]
      182 CALL                             R23 1 1
      183 NEWTABLE                         R24 32 0
      185 LOADN                            R25 0
      186 SETTABLEKS                       R25 R24 K36 ["_fetchScopeId"]
      188 LOADN                            R25 0
      189 SETTABLEKS                       R25 R24 K37 ["_fetchTotalAssets"]
      191 MOVE                             R25 R22
      192 CALL                             R25 0 1
      193 SETTABLEKS                       R25 R24 K38 ["_fetchLimit"]
      195 DUPCLOSURE                       R25 K39 [PROTO_0]
      196 CAPTURE                          VAL R1
      197 DUPCLOSURE                       R26 K40 [PROTO_1]
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R23
      200 SETTABLEKS                       R26 R24 K41 ["setupNewFetchSession"]
      202 DUPCLOSURE                       R26 K42 [PROTO_2]
      203 CAPTURE                          VAL R24
      204 DUPCLOSURE                       R27 K43 [PROTO_4]
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R10
      207 SETTABLEKS                       R27 R24 K44 ["fetchUsername"]
      209 DUPCLOSURE                       R27 K45 [PROTO_7]
      210 CAPTURE                          VAL R4
      211 SETTABLEKS                       R27 R24 K46 ["fetchUniverseInfoAsync"]
      213 DUPCLOSURE                       R27 K47 [PROTO_10]
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R17
      217 SETTABLEKS                       R27 R24 K48 ["fetchGroupsAsync"]
      219 DUPCLOSURE                       R27 K49 [PROTO_11]
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R24
      228 SETTABLEKS                       R27 R24 K50 ["_convertResponseToItemsData"]
      230 DUPCLOSURE                       R27 K51 [PROTO_12]
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R24
      233 SETTABLEKS                       R27 R24 K52 ["_checkResponse"]
      235 DUPCLOSURE                       R27 K53 [PROTO_15]
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R3
      238 SETTABLEKS                       R27 R24 K54 ["_fetchAssetsImplAsync"]
      240 DUPCLOSURE                       R27 K55 [PROTO_16]
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R24
      245 SETTABLEKS                       R27 R24 K56 ["_parseFetchPlacesResponse"]
      247 DUPCLOSURE                       R27 K57 [PROTO_19]
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R23
      252 SETTABLEKS                       R27 R24 K58 ["fetchPlacesAsync"]
      254 DUPCLOSURE                       R27 K59 [PROTO_20]
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R24
      259 SETTABLEKS                       R27 R24 K60 ["fetchAssetsAsync"]
      261 DUPCLOSURE                       R27 K61 [PROTO_23]
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R23
      265 CAPTURE                          VAL R3
      266 SETTABLEKS                       R27 R24 K62 ["_searchAssetsImplAsync"]
      268 DUPCLOSURE                       R27 K63 [PROTO_24]
      269 CAPTURE                          VAL R24
      270 SETTABLEKS                       R27 R24 K64 ["searchAssetsAsync"]
      272 DUPCLOSURE                       R27 K65 [PROTO_27]
      273 CAPTURE                          VAL R15
      274 CAPTURE                          VAL R4
      275 CAPTURE                          VAL R21
      276 CAPTURE                          VAL R3
      277 SETTABLEKS                       R27 R24 K66 ["grantUniverseUseAssetsPermissions"]
      279 DUPCLOSURE                       R27 K67 [PROTO_30]
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R21
      284 CAPTURE                          VAL R3
      285 SETTABLEKS                       R27 R24 K68 ["grantAssetsPermissionsAsync"]
      287 DUPCLOSURE                       R27 K69 [PROTO_33]
      288 CAPTURE                          VAL R16
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R21
      291 SETTABLEKS                       R27 R24 K70 ["checkAssetsPermissionsAsync"]
      293 DUPCLOSURE                       R27 K71 [PROTO_34]
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R21
      296 SETTABLEKS                       R27 R24 K72 ["getThumbnailUriForScope"]
      298 DUPCLOSURE                       R27 K73 [PROTO_36]
      299 CAPTURE                          VAL R24
      300 CAPTURE                          VAL R6
      301 CAPTURE                          VAL R21
      302 SETTABLEKS                       R27 R24 K74 ["getThumbnailForScopeAsync"]
      304 DUPCLOSURE                       R27 K75 [PROTO_37]
      305 CAPTURE                          VAL R1
      306 SETTABLEKS                       R27 R24 K76 ["getThumbnailForItem"]
      308 DUPCLOSURE                       R27 K77 [PROTO_40]
      309 CAPTURE                          VAL R24
      310 CAPTURE                          VAL R6
      311 CAPTURE                          VAL R21
      312 SETTABLEKS                       R27 R24 K78 ["getThumbnailForItemAsync"]
      314 DUPCLOSURE                       R27 K79 [PROTO_43]
      315 CAPTURE                          VAL R4
      316 SETTABLEKS                       R27 R24 K80 ["fetchPluginInfoAsync"]
      318 DUPCLOSURE                       R27 K81 [PROTO_46]
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R21
      321 CAPTURE                          VAL R3
      322 SETTABLEKS                       R27 R24 K82 ["_fetchAssetDependenciesAsync"]
      324 DUPCLOSURE                       R27 K83 [PROTO_49]
      325 CAPTURE                          VAL R4
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R3
      328 SETTABLEKS                       R27 R24 K84 ["_fetchIsPackageAsync"]
      330 DUPCLOSURE                       R27 K85 [PROTO_54]
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R8
      333 CAPTURE                          VAL R7
      334 CAPTURE                          VAL R12
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R17
      337 CAPTURE                          VAL R11
      338 CAPTURE                          VAL R14
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R24
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R21
      343 CAPTURE                          VAL R3
      344 SETTABLEKS                       R27 R24 K86 ["fetchAssetInfoAsync"]
      346 DUPCLOSURE                       R27 K87 [PROTO_55]
      347 SETTABLEKS                       R27 R24 K88 ["fetchFoldersAsync"]
      349 DUPCLOSURE                       R27 K89 [PROTO_59]
      350 CAPTURE                          VAL R1
      351 CAPTURE                          VAL R2
      352 CAPTURE                          VAL R4
      353 CAPTURE                          VAL R13
      354 CAPTURE                          VAL R21
      355 CAPTURE                          VAL R3
      356 SETTABLEKS                       R27 R24 K90 ["createFolderAsync"]
      358 DUPCLOSURE                       R27 K91 [PROTO_63]
      359 CAPTURE                          VAL R2
      360 CAPTURE                          VAL R4
      361 CAPTURE                          VAL R21
      362 CAPTURE                          VAL R3
      363 SETTABLEKS                       R27 R24 K92 ["deleteFolderAsync"]
      365 DUPCLOSURE                       R27 K93 [PROTO_67]
      366 CAPTURE                          VAL R2
      367 CAPTURE                          VAL R4
      368 CAPTURE                          VAL R21
      369 CAPTURE                          VAL R3
      370 SETTABLEKS                       R27 R24 K94 ["updateFolderMetadataAsync"]
      372 DUPCLOSURE                       R27 K95 [PROTO_71]
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R4
      375 CAPTURE                          VAL R1
      376 CAPTURE                          VAL R21
      377 CAPTURE                          VAL R3
      378 SETTABLEKS                       R27 R24 K96 ["moveItemsAsync"]
      380 DUPCLOSURE                       R27 K97 [PROTO_72]
      381 SETTABLEKS                       R27 R24 K98 ["resume"]
      383 RETURN                           R24 1
