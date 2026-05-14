PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R1 K1 ["User"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["users"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R1 K3 ["Group"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["groups"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R1 K5 ["Universe"]
       23 JUMPIFEQ                         R0 R1 ; [+8]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       28 GETTABLEKS                       R1 R1 K6 ["ProjectShared"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+3]
       32 LOADK                            R1 K7 ["universes"]
       33 RETURN                           R1 1
       34 LOADK                            R1 K8 [""]
       35 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_fetchTotalAssets"]
        4 LOADN                            R0 0
        5 RETURN                           R0 1

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
       12 GETTABLEN                        R5 R3 1
       13 GETTABLEKS                       R5 R5 K3 ["Username"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetUniverseInfoRequest"]
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
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["groups"]
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
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       18 GETTABLEKS                       R8 R8 K8 ["Group"]
       20 SETTABLEKS                       R8 R7 K2 ["Type"]
       22 GETUPVAL                         R8 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K7 ["ScopeType"]
       26 GETTABLEKS                       R9 R9 K8 ["Group"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateFetchGroupsRequest"]
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
        0 GETIMPORT                        R2 K2 [task.delay]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["inventoryStatus"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["InventoryFolderStatus"]
        7 GETTABLEKS                       R3 R3 K3 ["FoldersReady"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+9]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["InventoryFolderStatus"]
       15 GETTABLEKS                       R4 R4 K3 ["FoldersReady"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["FolderReadinessRetryCount"]
       23 JUMPIFNOTLT                      R3 R4 ; [+34]
       25 GETUPVAL                         R4 2
       26 ADDK                             R3 R4 K5 [1]
       27 GETUPVAL                         R4 4
       28 LOADK                            R6 K6 ["Inventory status for %* is %*, retrying %*/%*..."]
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R8 R8 K7 ["Uid"]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R3
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R11 R11 K4 ["FolderReadinessRetryCount"]
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 5 1
       40 MOVE                             R5 R6
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 6
       43 GETTABLEKS                       R4 R4 K9 ["_delay"]
       45 LOADN                            R6 2
       46 FASTCALL2                        MATH_POW R6 R3 ; [+4]
       48 MOVE                             R7 R3
       49 GETIMPORT                        R5 K12 [math.pow]
       51 CALL                             R5 2 1
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R3
       56 CALL                             R4 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 4
       59 LOADK                            R5 K13 ["Inventory status for %* is %*, not ready after %* retries"]
       60 GETUPVAL                         R7 5
       61 GETTABLEKS                       R7 R7 K7 ["Uid"]
       63 MOVE                             R8 R2
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K4 ["FolderReadinessRetryCount"]
       67 NAMECALL                         R5 R5 K8 ["format"]
       69 CALL                             R5 4 1
       70 MOVE                             R4 R5
       71 CALL                             R3 1 0
       72 GETUPVAL                         R3 1
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K2 ["InventoryFolderStatus"]
       76 GETTABLEKS                       R4 R4 K14 ["FoldersNotReady"]
       78 CALL                             R3 1 0
       79 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch folder ready for %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["Uid"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K2 ["pretty"]
        8 MOVE                             R7 R0
        9 CALL                             R6 1 1
       10 NAMECALL                         R3 R3 K3 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 LOADK                            R3 K4 ["WARN"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K5 ["InventoryFolderStatus"]
       20 GETTABLEKS                       R2 R2 K6 ["FoldersNotReady"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateGetItemsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Id"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["Type"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       12 GETTABLEKS                       R6 R6 K4 ["User"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+3]
       16 LOADK                            R4 K5 ["users"]
       17 JUMP                             ; [+26]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+17]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R6 K8 ["Universe"]
       32 JUMPIFEQ                         R5 R6 ; [+8]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       37 GETTABLEKS                       R6 R6 K9 ["ProjectShared"]
       39 JUMPIFNOTEQ                      R5 R6 ; [+3]
       41 LOADK                            R4 K10 ["universes"]
       42 JUMP                             ; [+1]
       43 LOADK                            R4 K11 [""]
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 3
       46 CALL                             R2 4 1
       47 NAMECALL                         R2 R2 K12 ["makeRequest"]
       49 CALL                             R2 1 1
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 NAMECALL                         R2 R2 K13 ["andThen"]
       61 CALL                             R2 2 1
       62 NEWCLOSURE                       R4 P1
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 NAMECALL                         R2 R2 K14 ["catch"]
       70 CALL                             R2 2 0
       71 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADN                            R4 0
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"maxPageSize"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["maxPageSize"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U5
       14 GETUPVAL                         R3 6
       15 GETTABLEKS                       R3 R3 K2 ["new"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETUPVAL                         R9 0
        9 CALL                             R9 0 1
       10 JUMPIFNOT                        R9 ; [+26]
       11 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       13 JUMPIFNOT                        R9 ; [+23]
       14 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       16 GETUPVAL                         R10 1
       17 MOVE                             R11 R9
       18 MOVE                             R12 R1
       19 GETTABLEKS                       R13 R8 K1 ["path"]
       21 GETUPVAL                         R15 2
       22 GETTABLEKS                       R15 R15 K2 ["_fetchTotalAssets"]
       24 ADD                              R14 R15 R7
       25 CALL                             R10 4 1
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       28 MOVE                             R12 R2
       29 MOVE                             R13 R10
       30 GETIMPORT                        R11 K5 [table.insert]
       32 CALL                             R11 2 0
       33 GETTABLEKS                       R11 R1 K6 ["Name"]
       35 SETTABLE                         R1 R3 R11
       36 JUMP                             ; [+191]
       37 GETUPVAL                         R9 3
       38 MOVE                             R10 R8
       39 CALL                             R9 1 1
       40 JUMPIF                           R9 ; [+13]
       41 GETUPVAL                         R9 4
       42 LOADK                            R11 K7 ["Could not convert asset response for asset %*"]
       43 GETUPVAL                         R13 5
       44 GETTABLEKS                       R13 R13 K8 ["pretty"]
       46 MOVE                             R14 R8
       47 CALL                             R13 1 1
       48 NAMECALL                         R11 R11 K9 ["format"]
       50 CALL                             R11 2 1
       51 MOVE                             R10 R11
       52 CALL                             R9 1 0
       53 JUMP                             ; [+174]
       54 GETTABLEKS                       R9 R8 K10 ["assetItem"]
       56 GETTABLEKS                       R10 R9 K11 ["asset"]
       58 GETTABLEKS                       R12 R9 K12 ["sources"]
       60 GETTABLEN                        R11 R12 1
       61 GETTABLEKS                       R12 R9 K11 ["asset"]
       63 GETTABLEKS                       R12 R12 K13 ["creationContext"]
       65 GETTABLEKS                       R12 R12 K14 ["creator"]
       67 GETTABLEKS                       R14 R12 K15 ["userId"]
       69 JUMPIFNOT                        R14 ; [+3]
       70 GETTABLEKS                       R13 R12 K15 ["userId"]
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R13 R12 K16 ["groupId"]
       75 GETTABLEKS                       R15 R12 K17 ["name"]
       77 JUMPIFNOT                        R15 ; [+3]
       78 GETTABLEKS                       R14 R12 K17 ["name"]
       80 JUMP                             ; [+5]
       81 FASTCALL1                        TOSTRING R13 ; [+3]
       82 MOVE                             R15 R13
       83 GETIMPORT                        R14 K19 [tostring]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R16 R12 K15 ["userId"]
       88 JUMPIFNOT                        R16 ; [+6]
       89 GETUPVAL                         R15 6
       90 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       92 GETTABLEKS                       R15 R15 K21 ["User"]
       94 JUMP                             ; [+5]
       95 GETUPVAL                         R15 6
       96 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       98 GETTABLEKS                       R15 R15 K22 ["Group"]
      100 GETTABLEKS                       R17 R10 K23 ["state"]
      102 JUMPIFEQKS                       R17 K24 ["STATE_ARCHIVED"] ; [+2]
      104 LOADB                            R16 0 +1
      105 LOADB                            R16 1
      106 GETTABLEKS                       R18 R11 K25 ["createdDetails"]
      108 JUMPIFNOT                        R18 ; [+6]
      109 GETUPVAL                         R17 6
      110 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      112 GETTABLEKS                       R17 R17 K27 ["Uploaded"]
      114 JUMP                             ; [+23]
      115 GETTABLEKS                       R18 R11 K28 ["purchasedDetails"]
      117 JUMPIFNOT                        R18 ; [+6]
      118 GETUPVAL                         R17 6
      119 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      121 GETTABLEKS                       R17 R17 K29 ["CreatorStore"]
      123 JUMP                             ; [+14]
      124 GETTABLEKS                       R18 R11 K30 ["sharedDetails"]
      126 JUMPIFNOT                        R18 ; [+6]
      127 GETUPVAL                         R17 6
      128 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      130 GETTABLEKS                       R17 R17 K31 ["SharedWithMe"]
      132 JUMP                             ; [+5]
      133 GETUPVAL                         R17 6
      134 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      136 GETTABLEKS                       R17 R17 K32 ["Unknown"]
      138 DUPTABLE                         R18 K45 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      139 GETTABLEKS                       R20 R8 K1 ["path"]
      141 JUMPIFNOT                        R20 ; [+7]
      142 GETTABLEKS                       R20 R8 K1 ["path"]
      144 JUMPIFEQKS                       R20 K46 [""] ; [+4]
      146 GETTABLEKS                       R19 R8 K1 ["path"]
      148 JUMP                             ; [+5]
      149 GETUPVAL                         R19 7
      150 MOVE                             R20 R1
      151 GETTABLEKS                       R21 R10 K47 ["assetId"]
      153 CALL                             R19 2 1
      154 SETTABLEKS                       R19 R18 K33 ["Path"]
      156 GETTABLEKS                       R19 R10 K47 ["assetId"]
      158 SETTABLEKS                       R19 R18 K34 ["AssetId"]
      160 GETUPVAL                         R19 8
      161 GETTABLEKS                       R20 R10 K48 ["assetType"]
      163 CALL                             R19 1 1
      164 SETTABLEKS                       R19 R18 K35 ["AssetType"]
      166 GETTABLEKS                       R19 R10 K49 ["displayName"]
      168 SETTABLEKS                       R19 R18 K36 ["DisplayName"]
      170 GETTABLEKS                       R19 R10 K50 ["createTime"]
      172 SETTABLEKS                       R19 R18 K37 ["Created"]
      174 GETTABLEKS                       R19 R10 K51 ["updateTime"]
      176 SETTABLEKS                       R19 R18 K38 ["Modified"]
      178 GETUPVAL                         R19 6
      179 GETTABLEKS                       R19 R19 K39 ["ModerationStatus"]
      181 GETTABLEKS                       R19 R19 K52 ["Placeholder"]
      183 SETTABLEKS                       R19 R18 K39 ["ModerationStatus"]
      185 DUPTABLE                         R19 K56 [{"Id", "Name", "Type", "Uid"}]
      186 SETTABLEKS                       R13 R19 K53 ["Id"]
      188 SETTABLEKS                       R14 R19 K6 ["Name"]
      190 SETTABLEKS                       R15 R19 K54 ["Type"]
      192 GETUPVAL                         R20 9
      193 MOVE                             R21 R15
      194 MOVE                             R22 R13
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K55 ["Uid"]
      198 SETTABLEKS                       R19 R18 K40 ["Creator"]
      200 SETTABLEKS                       R17 R18 K41 ["Source"]
      202 SETTABLEKS                       R16 R18 K42 ["Archived"]
      204 GETTABLEKS                       R19 R9 K57 ["isPackage"]
      206 SETTABLEKS                       R19 R18 K43 ["IsPackage"]
      208 GETUPVAL                         R20 2
      209 GETTABLEKS                       R20 R20 K2 ["_fetchTotalAssets"]
      211 ADD                              R19 R20 R7
      212 SETTABLEKS                       R19 R18 K44 ["SearchRank"]
      214 FASTCALL2                        TABLE_INSERT R2 R18 ; [+5]
      216 MOVE                             R20 R2
      217 MOVE                             R21 R18
      218 GETIMPORT                        R19 K5 [table.insert]
      220 CALL                             R19 2 0
      221 GETTABLEKS                       R19 R18 K40 ["Creator"]
      223 GETTABLEKS                       R19 R19 K6 ["Name"]
      225 GETTABLEKS                       R20 R18 K40 ["Creator"]
      227 SETTABLE                         R20 R3 R19
      228 FORGLOOP                         R4 2 ; [-221]
      230 RETURN                           R2 2

PROTO_19:
        0 JUMPIFEQKN                       R2 K0 [200] ; [+21]
        2 MOVE                             R5 R4
        3 FASTCALL1                        TOSTRING R2 ; [+3]
        4 MOVE                             R7 R2
        5 GETIMPORT                        R6 K2 [tostring]
        7 CALL                             R6 1 1
        8 MOVE                             R7 R2
        9 CALL                             R5 2 0
       10 MOVE                             R5 R3
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 MOVE                             R8 R0
       16 CALL                             R5 3 0
       17 MOVE                             R5 R1
       18 LOADB                            R6 0
       19 CALL                             R5 1 0
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 LOADB                            R5 1
       23 RETURN                           R5 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["_checkResponse"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["FetchSessionId"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Resolve"]
       11 GETTABLEKS                       R5 R0 K4 ["responseCode"]
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R7 3
       15 CALL                             R2 5 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K5 ["Type"]
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K6 ["ScopeType"]
       24 GETTABLEKS                       R5 R5 K7 ["Folder"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+9]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["RootScope"]
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K8 ["RootScope"]
       35 JUMP                             ; [+1]
       36 GETUPVAL                         R3 4
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K9 ["_convertResponseToItemsData"]
       40 GETTABLEKS                       R5 R1 K10 ["items"]
       42 MOVE                             R6 R3
       43 CALL                             R4 2 2
       44 LENGTH                           R6 R4
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R8 R7 K11 ["_fetchTotalAssets"]
       48 ADD                              R8 R8 R6
       49 SETTABLEKS                       R8 R7 K11 ["_fetchTotalAssets"]
       51 GETTABLEKS                       R6 R1 K12 ["nextPageToken"]
       53 GETUPVAL                         R7 2
       54 MOVE                             R8 R4
       55 MOVE                             R9 R5
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K2 ["FetchSessionId"]
       59 LOADNIL                          R11
       60 MOVE                             R12 R6
       61 CALL                             R7 5 1
       62 MOVE                             R2 R7
       63 JUMPIF                           R2 ; [+6]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K3 ["Resolve"]
       67 LOADB                            R8 0
       68 CALL                             R7 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R7 1
       71 SETTABLEKS                       R6 R7 K13 ["PageToken"]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K14 ["_fetchAssetsImplAsync"]
       76 GETUPVAL                         R8 1
       77 GETUPVAL                         R9 2
       78 GETUPVAL                         R10 3
       79 GETUPVAL                         R11 6
       80 CALL                             R7 4 0
       81 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["FetchSessionId"]
       19 LOADNIL                          R5
       20 LOADK                            R6 K3 [""]
       21 CALL                             R1 5 0
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K4 ["Resolve"]
       25 LOADB                            R2 0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_checkResponse"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FetchSessionId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Resolve"]
        9 GETTABLEKS                       R4 R0 K3 ["responseCode"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R1 5 1
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["_convertResponseToItemsData"]
       19 GETTABLEKS                       R3 R0 K5 ["responseBody"]
       21 GETTABLEKS                       R3 R3 K6 ["items"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["ScopeInfo"]
       26 CALL                             R2 2 2
       27 LENGTH                           R4 R2
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       31 ADD                              R6 R6 R4
       32 SETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       34 GETTABLEKS                       R4 R0 K5 ["responseBody"]
       36 GETTABLEKS                       R4 R4 K9 ["nextPageToken"]
       38 GETUPVAL                         R5 2
       39 MOVE                             R6 R2
       40 MOVE                             R7 R3
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K1 ["FetchSessionId"]
       44 LOADNIL                          R9
       45 MOVE                             R10 R4
       46 CALL                             R5 5 1
       47 MOVE                             R1 R5
       48 JUMPIF                           R1 ; [+6]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K2 ["Resolve"]
       52 LOADB                            R6 0
       53 CALL                             R5 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R5 1
       56 SETTABLEKS                       R4 R5 K10 ["PageToken"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K11 ["_fetchAssetsImplAsync"]
       61 GETUPVAL                         R6 1
       62 GETUPVAL                         R7 2
       63 GETUPVAL                         R8 3
       64 GETUPVAL                         R9 4
       65 CALL                             R5 4 0
       66 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["pretty"]
        4 GETTABLEKS                       R3 R0 K1 ["responseBody"]
        6 GETTABLEKS                       R3 R3 K2 ["errors"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 2
       11 NEWTABLE                         R2 0 0
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["FetchSessionId"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K4 ["Resolve"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R4 K2 [{"maxPageSize", "pageToken"}]
        1 GETTABLEKS                       R5 R0 K3 ["MaxPageSize"]
        3 SETTABLEKS                       R5 R4 K0 ["maxPageSize"]
        5 GETTABLEKS                       R5 R0 K4 ["PageToken"]
        7 SETTABLEKS                       R5 R4 K1 ["pageToken"]
        9 GETUPVAL                         R5 0
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+81]
       12 GETTABLEKS                       R5 R0 K5 ["ScopeInfo"]
       14 GETTABLEKS                       R7 R5 K6 ["Type"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       19 GETTABLEKS                       R8 R8 K8 ["Folder"]
       21 JUMPIFNOTEQ                      R7 R8 ; [+4]
       23 GETTABLEKS                       R6 R5 K9 ["Path"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["CreateGetItemsRequest"]
       30 GETTABLEKS                       R8 R5 K11 ["Id"]
       32 GETTABLEKS                       R10 R5 K6 ["Type"]
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       37 GETTABLEKS                       R11 R11 K12 ["User"]
       39 JUMPIFNOTEQ                      R10 R11 ; [+3]
       41 LOADK                            R9 K13 ["users"]
       42 JUMP                             ; [+26]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       46 GETTABLEKS                       R11 R11 K14 ["Group"]
       48 JUMPIFNOTEQ                      R10 R11 ; [+3]
       50 LOADK                            R9 K15 ["groups"]
       51 JUMP                             ; [+17]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       55 GETTABLEKS                       R11 R11 K16 ["Universe"]
       57 JUMPIFEQ                         R10 R11 ; [+8]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       62 GETTABLEKS                       R11 R11 K17 ["ProjectShared"]
       64 JUMPIFNOTEQ                      R10 R11 ; [+3]
       66 LOADK                            R9 K18 ["universes"]
       67 JUMP                             ; [+1]
       68 LOADK                            R9 K19 [""]
       69 MOVE                             R10 R6
       70 MOVE                             R11 R4
       71 CALL                             R7 4 1
       72 NAMECALL                         R7 R7 K20 ["makeRequest"]
       74 CALL                             R7 1 1
       75 NEWCLOSURE                       R9 P0
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R3
       83 NEWCLOSURE                       R10 P1
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R7 R7 K21 ["andThen"]
       91 CALL                             R7 3 0
       92 RETURN                           R0 0
       93 MOVE                             R5 R3
       94 GETTABLEKS                       R6 R0 K5 ["ScopeInfo"]
       96 GETTABLEKS                       R6 R6 K11 ["Id"]
       98 MOVE                             R7 R4
       99 CALL                             R5 2 1
      100 NAMECALL                         R5 R5 K20 ["makeRequest"]
      102 CALL                             R5 1 1
      103 NEWCLOSURE                       R7 P2
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 NEWCLOSURE                       R8 P3
      110 CAPTURE                          VAL R2
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R0
      114 NAMECALL                         R5 R5 K21 ["andThen"]
      116 CALL                             R5 3 0
      117 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 1 0
        4 GETTABLEKS                       R4 R1 K0 ["Name"]
        6 DUPTABLE                         R5 K4 [{"Id", "Name", "Type", "Uid"}]
        7 GETTABLEKS                       R6 R1 K1 ["Id"]
        9 SETTABLEKS                       R6 R5 K1 ["Id"]
       11 GETTABLEKS                       R6 R1 K0 ["Name"]
       13 SETTABLEKS                       R6 R5 K0 ["Name"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R6 K6 ["Universe"]
       20 SETTABLEKS                       R6 R5 K2 ["Type"]
       22 GETUPVAL                         R6 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K5 ["ScopeType"]
       26 GETTABLEKS                       R7 R7 K6 ["Universe"]
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
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K11 ["AssetType"]
       59 GETTABLEKS                       R12 R12 K22 ["Place"]
       61 SETTABLEKS                       R12 R11 K11 ["AssetType"]
       63 GETTABLEKS                       R12 R10 K23 ["name"]
       65 SETTABLEKS                       R12 R11 K12 ["DisplayName"]
       67 GETTABLEKS                       R12 R10 K24 ["created"]
       69 SETTABLEKS                       R12 R11 K13 ["Created"]
       71 GETTABLEKS                       R12 R10 K25 ["updated"]
       73 SETTABLEKS                       R12 R11 K14 ["Modified"]
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K15 ["ModerationStatus"]
       78 GETTABLEKS                       R12 R12 K26 ["Placeholder"]
       80 SETTABLEKS                       R12 R11 K15 ["ModerationStatus"]
       82 GETTABLEKS                       R13 R1 K0 ["Name"]
       84 GETTABLE                         R12 R3 R13
       85 SETTABLEKS                       R12 R11 K16 ["Creator"]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K27 ["AssetSource"]
       90 GETTABLEKS                       R12 R12 K28 ["Uploaded"]
       92 SETTABLEKS                       R12 R11 K17 ["Source"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K18 ["Archived"]
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R13 R13 K29 ["_fetchTotalAssets"]
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_parseFetchPlacesResponse"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["ScopeInfo"]
        7 CALL                             R1 2 4
        8 LENGTH                           R5 R1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       12 ADD                              R7 R7 R5
       13 SETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K3 ["FetchSessionId"]
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 CALL                             R5 5 1
       24 JUMPIF                           R5 ; [+6]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K4 ["Resolve"]
       28 LOADB                            R7 0
       29 CALL                             R6 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R7 R0 K5 ["responseBody"]
       34 GETTABLEKS                       R7 R7 K6 ["nextPageCursor"]
       36 SETTABLEKS                       R7 R6 K7 ["PageToken"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K8 ["fetchPlacesAsync"]
       41 GETUPVAL                         R7 1
       42 GETUPVAL                         R8 2
       43 GETUPVAL                         R9 3
       44 CALL                             R6 3 0
       45 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["FetchSessionId"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["Resolve"]
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R3 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R4 K3 ["Universe"]
        9 JUMPIFEQ                         R3 R4 ; [+17]
       11 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R3 R3 K1 ["Type"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       18 GETTABLEKS                       R4 R4 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R3 R4 ; [+6]
       22 GETTABLEKS                       R3 R0 K5 ["Resolve"]
       24 LOADB                            R4 0
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R0 K7 ["PageToken"]
       29 ORK                              R3 R4 K6 [""]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K8 ["CreateFetchPlacesRequest"]
       33 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       35 GETTABLEKS                       R5 R5 K9 ["Id"]
       37 MOVE                             R6 R3
       38 LOADN                            R7 100
       39 CALL                             R4 3 1
       40 NAMECALL                         R4 R4 K10 ["makeRequest"]
       42 CALL                             R4 1 1
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R4 R4 K11 ["andThen"]
       54 CALL                             R4 3 0
       55 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+27]
        3 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        5 GETTABLEKS                       R3 R3 K1 ["Type"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       10 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+9]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["fetchPlacesAsync"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R3 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["_fetchAssetsImplAsync"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 CALL                             R3 3 0
       29 RETURN                           R0 0
       30 LOADNIL                          R3
       31 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       33 GETTABLEKS                       R4 R4 K1 ["Type"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       38 GETTABLEKS                       R5 R5 K6 ["User"]
       40 JUMPIFNOTEQ                      R4 R5 ; [+5]
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R3 R4 K7 ["CreateFetchAssetsForUserRequest"]
       45 JUMP                             ; [+73]
       46 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       48 GETTABLEKS                       R4 R4 K1 ["Type"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       53 GETTABLEKS                       R5 R5 K8 ["Group"]
       55 JUMPIFNOTEQ                      R4 R5 ; [+5]
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R3 R4 K9 ["CreateFetchAssetsForGroupRequest"]
       60 JUMP                             ; [+58]
       61 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       63 GETTABLEKS                       R4 R4 K1 ["Type"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       68 GETTABLEKS                       R5 R5 K10 ["Universe"]
       70 JUMPIFEQ                         R4 R5 ; [+12]
       72 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       74 GETTABLEKS                       R4 R4 K1 ["Type"]
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       79 GETTABLEKS                       R5 R5 K11 ["ProjectShared"]
       81 JUMPIFNOTEQ                      R4 R5 ; [+5]
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R3 R4 K12 ["CreateFetchAssetsForUniverseRequest"]
       86 JUMP                             ; [+32]
       87 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       89 GETTABLEKS                       R4 R4 K1 ["Type"]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       94 GETTABLEKS                       R5 R5 K3 ["ProjectPlaces"]
       96 JUMPIFNOTEQ                      R4 R5 ; [+6]
       98 GETTABLEKS                       R4 R0 K13 ["Resolve"]
      100 LOADB                            R5 0
      101 CALL                             R4 1 0
      102 RETURN                           R0 0
      103 MOVE                             R4 R2
      104 LOADK                            R5 K14 ["Unsupported scope type"]
      105 CALL                             R4 1 0
      106 MOVE                             R4 R1
      107 NEWTABLE                         R5 0 0
      109 NEWTABLE                         R6 0 0
      111 GETTABLEKS                       R7 R0 K15 ["FetchSessionId"]
      113 CALL                             R4 3 0
      114 GETTABLEKS                       R4 R0 K13 ["Resolve"]
      116 LOADB                            R5 0
      117 CALL                             R4 1 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R4 R4 K5 ["_fetchAssetsImplAsync"]
      122 MOVE                             R5 R0
      123 MOVE                             R6 R1
      124 MOVE                             R7 R2
      125 MOVE                             R8 R3
      126 CALL                             R4 4 0
      127 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_checkResponse"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FetchSessionId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Resolve"]
        9 GETTABLEKS                       R4 R0 K3 ["responseCode"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R1 5 1
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["_convertResponseToItemsData"]
       19 GETTABLEKS                       R3 R0 K5 ["responseBody"]
       21 GETTABLEKS                       R3 R3 K6 ["items"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["ScopeInfo"]
       26 CALL                             R2 2 2
       27 LENGTH                           R4 R2
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       31 ADD                              R6 R6 R4
       32 SETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 MOVE                             R6 R3
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K1 ["FetchSessionId"]
       40 LOADNIL                          R8
       41 GETTABLEKS                       R9 R0 K5 ["responseBody"]
       43 GETTABLEKS                       R9 R9 K9 ["nextPageToken"]
       45 CALL                             R4 5 1
       46 MOVE                             R1 R4
       47 JUMPIF                           R1 ; [+6]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K2 ["Resolve"]
       51 LOADB                            R5 0
       52 CALL                             R4 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R5 R0 K5 ["responseBody"]
       57 GETTABLEKS                       R5 R5 K9 ["nextPageToken"]
       59 SETTABLEKS                       R5 R4 K10 ["PageToken"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K11 ["_searchAssetsImplAsync"]
       64 GETUPVAL                         R5 1
       65 GETUPVAL                         R6 2
       66 GETUPVAL                         R7 3
       67 CALL                             R4 3 0
       68 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R2 0 0
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["FetchSessionId"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["Resolve"]
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_32:
        0 DUPTABLE                         R3 K2 [{"Type", "Id"}]
        1 GETTABLEKS                       R4 R0 K3 ["ScopeInfo"]
        3 GETTABLEKS                       R4 R4 K0 ["Type"]
        5 SETTABLEKS                       R4 R3 K0 ["Type"]
        7 GETTABLEKS                       R4 R0 K3 ["ScopeInfo"]
        9 GETTABLEKS                       R4 R4 K1 ["Id"]
       11 SETTABLEKS                       R4 R3 K1 ["Id"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["CreateSearchAssetsRequest"]
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
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R4 R4 K11 ["andThen"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_searchAssetsImplAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_34:
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
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K8 ["pretty"]
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["PatchAssetsPermissionsRequest"]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Universe"]
        8 MOVE                             R6 R1
        9 LOADK                            R7 K2 ["Use"]
       10 CALL                             R3 4 1
       11 NAMECALL                         R3 R3 K3 ["makeRequest"]
       13 CALL                             R3 1 1
       14 DUPCLOSURE                       R5 K4 [PROTO_34]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R3 R3 K5 ["andThen"]
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R5 K6 [PROTO_35]
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R3 R3 K7 ["catch"]
       24 CALL                             R3 2 1
       25 NAMECALL                         R3 R3 K8 ["await"]
       27 CALL                             R3 1 2
       28 RETURN                           R3 2

PROTO_37:
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
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K8 ["pretty"]
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R4
        3 CALL                             R6 2 1
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["PatchAssetsPermissionsRequest"]
        7 MOVE                             R8 R6
        8 GETUPVAL                         R10 2
        9 GETTABLEKS                       R10 R10 K1 ["PermissionsSubject"]
       11 GETTABLE                         R9 R10 R1
       12 MOVE                             R10 R2
       13 GETUPVAL                         R12 2
       14 GETTABLEKS                       R12 R12 K2 ["PermissionsAction"]
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R0
        5 CALL                             R5 4 1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["CheckAssetsPermissionsRequest"]
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

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R2 K2 ["User"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+9]
        9 LOADK                            R2 K3 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       10 GETTABLEKS                       R4 R0 K4 ["Id"]
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K0 ["Type"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       22 GETTABLEKS                       R2 R2 K6 ["Group"]
       24 JUMPIFNOTEQ                      R1 R2 ; [+9]
       26 LOADK                            R2 K7 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
       27 GETTABLEKS                       R4 R0 K4 ["Id"]
       29 NAMECALL                         R2 R2 K5 ["format"]
       31 CALL                             R2 2 1
       32 MOVE                             R1 R2
       33 RETURN                           R1 1
       34 GETTABLEKS                       R1 R0 K0 ["Type"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       39 GETTABLEKS                       R2 R2 K8 ["Universe"]
       41 JUMPIFEQ                         R1 R2 ; [+19]
       43 GETTABLEKS                       R1 R0 K0 ["Type"]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       48 GETTABLEKS                       R2 R2 K9 ["ProjectPlaces"]
       50 JUMPIFEQ                         R1 R2 ; [+10]
       52 GETTABLEKS                       R1 R0 K0 ["Type"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       57 GETTABLEKS                       R2 R2 K10 ["ProjectShared"]
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

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getThumbnailUriForScope"]
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

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        3 GETTABLEKS                       R2 R2 K1 ["Place"]
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getThumbnailForItem"]
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

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R3 R1 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetPluginInfoRequest"]
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

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["results"]
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch asset dependencies for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["pretty"]
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

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetAssetDependenciesRequest"]
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

PROTO_56:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["data"]
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

PROTO_57:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch package metadata for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["pretty"]
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

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PostPackageMetadataGetRequest"]
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

PROTO_59:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["fetchAssetInfoAsync"]
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 1
        9 LOADB                            R9 1
       10 GETUPVAL                         R10 2
       11 GETUPVAL                         R11 3
       12 CALL                             R6 5 0
       13 FORGLOOP                         R1 2 ; [-10]
       15 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["creationContext"]
        4 GETTABLEKS                       R2 R2 K2 ["creator"]
        6 GETTABLEKS                       R4 R2 K3 ["userId"]
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["groupId"]
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K6 [tonumber]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K7 [""]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["Id"]
       19 JUMPIFNOTEQ                      R3 R5 ; [+5]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K9 ["Name"]
       24 JUMP                             ; [+31]
       25 GETTABLEKS                       R5 R2 K3 ["userId"]
       27 JUMPIFNOT                        R5 ; [+14]
       28 GETIMPORT                        R5 K11 [pcall]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["GetNameFromUserIdAsync"]
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R3
       35 CALL                             R5 3 2
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R4 R6
       38 JUMP                             ; [+17]
       39 GETTABLEKS                       R4 R2 K3 ["userId"]
       41 JUMP                             ; [+14]
       42 GETIMPORT                        R5 K11 [pcall]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K13 ["GetGroupInfoAsync"]
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
       62 GETTABLEKS                       R7 R1 K1 ["creationContext"]
       64 GETTABLEKS                       R7 R7 K2 ["creator"]
       66 GETTABLEKS                       R7 R7 K3 ["userId"]
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K15 ["ScopeType"]
       72 GETTABLEKS                       R6 R6 K16 ["User"]
       74 JUMP                             ; [+5]
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R6 R6 K15 ["ScopeType"]
       78 GETTABLEKS                       R6 R6 K17 ["Group"]
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
      118 GETTABLEKS                       R10 R1 K35 ["moderationResult"]
      120 GETTABLEKS                       R10 R10 K36 ["moderationState"]
      122 CALL                             R9 1 1
      123 SETTABLEKS                       R9 R8 K27 ["ModerationStatus"]
      125 SETTABLEKS                       R7 R8 K28 ["Creator"]
      127 GETUPVAL                         R9 4
      128 GETTABLEKS                       R9 R9 K37 ["AssetSource"]
      130 GETTABLEKS                       R9 R9 K38 ["Uploaded"]
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
      152 GETUPVAL                         R9 11
      153 GETTABLEKS                       R9 R9 K41 ["_fetchAssetDependenciesAsync"]
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
      167 GETUPVAL                         R9 11
      168 GETTABLEKS                       R9 R9 K42 ["_fetchIsPackageAsync"]
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

PROTO_62:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to fetch asset details for asset %*: %*"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["pretty"]
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

PROTO_63:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["GetFetchAssetDataRequest"]
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

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Uid"]
        3 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        5 GETTABLEKS                       R3 R0 K2 ["responseBody"]
        7 GETTABLEKS                       R5 R3 K3 ["items"]
        9 LENGTH                           R4 R5
       10 JUMPIFEQKN                       R2 K4 [200] ; [+10]
       12 GETUPVAL                         R5 1
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R7 R2
       15 GETIMPORT                        R6 K6 [tostring]
       17 CALL                             R6 1 1
       18 MOVE                             R7 R2
       19 CALL                             R5 2 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKN                    R4 K7 [0] ; [+6]
       23 GETUPVAL                         R5 2
       24 NEWTABLE                         R6 0 0
       26 CALL                             R5 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K8 ["_convertResponseToItemsData"]
       31 GETTABLEKS                       R6 R3 K3 ["items"]
       33 GETUPVAL                         R7 4
       34 CALL                             R5 2 2
       35 NEWTABLE                         R7 0 0
       37 MOVE                             R8 R5
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLEKS                       R13 R12 K9 ["AssetType"]
       43 GETUPVAL                         R14 5
       44 GETTABLEKS                       R14 R14 K9 ["AssetType"]
       46 GETTABLEKS                       R14 R14 K10 ["Folder"]
       48 JUMPIFNOTEQ                      R13 R14 ; [+8]
       50 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       52 MOVE                             R14 R7
       53 MOVE                             R15 R12
       54 GETIMPORT                        R13 K13 [table.insert]
       56 CALL                             R13 2 0
       57 FORGLOOP                         R8 2 ; [-17]
       59 GETUPVAL                         R8 2
       60 NEWTABLE                         R9 1 0
       62 SETTABLE                         R7 R9 R1
       63 CALL                             R8 1 0
       64 RETURN                           R0 0

PROTO_65:
        0 DUPTABLE                         R3 K1 [{"maxPageSize"}]
        1 GETTABLEKS                       R4 R0 K2 ["MaxPageSize"]
        3 SETTABLEKS                       R4 R3 K0 ["maxPageSize"]
        5 GETTABLEKS                       R4 R0 K3 ["Scope"]
        7 GETTABLEKS                       R5 R0 K4 ["Root"]
        9 GETTABLEKS                       R7 R5 K5 ["Type"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       14 GETTABLEKS                       R8 R8 K7 ["User"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+3]
       18 LOADK                            R6 K8 ["users"]
       19 JUMP                             ; [+26]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       23 GETTABLEKS                       R8 R8 K9 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K10 ["groups"]
       28 JUMP                             ; [+17]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       32 GETTABLEKS                       R8 R8 K11 ["Universe"]
       34 JUMPIFEQ                         R7 R8 ; [+8]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       39 GETTABLEKS                       R8 R8 K12 ["ProjectShared"]
       41 JUMPIFNOTEQ                      R7 R8 ; [+3]
       43 LOADK                            R6 K13 ["universes"]
       44 JUMP                             ; [+1]
       45 LOADK                            R6 K14 [""]
       46 GETTABLEKS                       R8 R4 K5 ["Type"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K6 ["ScopeType"]
       51 GETTABLEKS                       R9 R9 K15 ["Folder"]
       53 JUMPIFNOTEQ                      R8 R9 ; [+4]
       55 GETTABLEKS                       R7 R4 K16 ["Path"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K17 ["CreateGetItemsRequest"]
       62 GETTABLEKS                       R9 R5 K18 ["Id"]
       64 MOVE                             R10 R6
       65 MOVE                             R11 R7
       66 MOVE                             R12 R3
       67 CALL                             R8 4 1
       68 NAMECALL                         R8 R8 K19 ["makeRequest"]
       70 CALL                             R8 1 1
       71 NEWCLOSURE                       R10 P0
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          UPVAL U0
       78 NAMECALL                         R8 R8 K20 ["andThen"]
       80 CALL                             R8 2 1
       81 MOVE                             R10 R2
       82 NAMECALL                         R8 R8 K21 ["catch"]
       84 CALL                             R8 2 0
       85 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to create folder: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateCreateFolderRequest"]
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

PROTO_69:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["ParentScope"]
        3 GETTABLEKS                       R2 R2 K1 ["Id"]
        5 GETTABLEKS                       R4 R0 K0 ["ParentScope"]
        7 GETTABLEKS                       R4 R4 K2 ["Type"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       12 GETTABLEKS                       R5 R5 K4 ["User"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+3]
       16 LOADK                            R3 K5 ["users"]
       17 JUMP                             ; [+26]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       21 GETTABLEKS                       R5 R5 K6 ["Group"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+3]
       25 LOADK                            R3 K7 ["groups"]
       26 JUMP                             ; [+17]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       30 GETTABLEKS                       R5 R5 K8 ["Universe"]
       32 JUMPIFEQ                         R4 R5 ; [+8]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       37 GETTABLEKS                       R5 R5 K9 ["ProjectShared"]
       39 JUMPIFNOTEQ                      R4 R5 ; [+3]
       41 LOADK                            R3 K10 ["universes"]
       42 JUMP                             ; [+1]
       43 LOADK                            R3 K11 [""]
       44 GETTABLEKS                       R4 R0 K12 ["RootScope"]
       46 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       48 GETTABLEKS                       R5 R5 K2 ["Type"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       53 GETTABLEKS                       R6 R6 K13 ["Folder"]
       55 JUMPIFNOTEQ                      R5 R6 ; [+44]
       57 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       59 GETTABLEKS                       R1 R5 K1 ["Id"]
       61 GETTABLEKS                       R2 R4 K1 ["Id"]
       63 GETTABLEKS                       R5 R4 K2 ["Type"]
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       68 GETTABLEKS                       R6 R6 K4 ["User"]
       70 JUMPIFNOTEQ                      R5 R6 ; [+3]
       72 LOADK                            R3 K5 ["users"]
       73 JUMP                             ; [+26]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       77 GETTABLEKS                       R6 R6 K6 ["Group"]
       79 JUMPIFNOTEQ                      R5 R6 ; [+3]
       81 LOADK                            R3 K7 ["groups"]
       82 JUMP                             ; [+17]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       86 GETTABLEKS                       R6 R6 K8 ["Universe"]
       88 JUMPIFEQ                         R5 R6 ; [+8]
       90 GETUPVAL                         R6 0
       91 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       93 GETTABLEKS                       R6 R6 K9 ["ProjectShared"]
       95 JUMPIFNOTEQ                      R5 R6 ; [+3]
       97 LOADK                            R3 K10 ["universes"]
       98 JUMP                             ; [+1]
       99 LOADK                            R3 K11 [""]
      100 DUPTABLE                         R5 K15 [{"folderItem"}]
      101 DUPTABLE                         R6 K17 [{"folder"}]
      102 DUPTABLE                         R7 K20 [{"displayName", "parentFolderId"}]
      103 GETTABLEKS                       R8 R0 K21 ["FolderName"]
      105 SETTABLEKS                       R8 R7 K18 ["displayName"]
      107 SETTABLEKS                       R1 R7 K19 ["parentFolderId"]
      109 SETTABLEKS                       R7 R6 K16 ["folder"]
      111 SETTABLEKS                       R6 R5 K14 ["folderItem"]
      113 GETUPVAL                         R6 1
      114 GETTABLEKS                       R6 R6 K22 ["new"]
      116 NEWCLOSURE                       R7 P0
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          REF R2
      119 CAPTURE                          REF R3
      120 CAPTURE                          VAL R5
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          UPVAL U5
      125 CALL                             R6 1 -1
      126 CLOSEUPVALS                      R2
      127 RETURN                           R6 -1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to delete folder: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateDeleteFolderRequest"]
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to update folder metadata: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_76:
        0 DUPTABLE                         R2 K1 [{"folderItem"}]
        1 DUPTABLE                         R3 K3 [{"folder"}]
        2 DUPTABLE                         R4 K5 [{"displayName"}]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K4 ["displayName"]
        6 SETTABLEKS                       R4 R3 K2 ["folder"]
        8 SETTABLEKS                       R3 R2 K0 ["folderItem"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K6 ["CreateFolderMetadataRequest"]
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

PROTO_77:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to move items: %*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["pretty"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 LOADK                            R3 K3 ["WARN"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateMoveItemsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Id"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["Type"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       12 GETTABLEKS                       R6 R6 K4 ["User"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+3]
       16 LOADK                            R4 K5 ["users"]
       17 JUMP                             ; [+26]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+17]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R6 K8 ["Universe"]
       32 JUMPIFEQ                         R5 R6 ; [+8]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       37 GETTABLEKS                       R6 R6 K9 ["ProjectShared"]
       39 JUMPIFNOTEQ                      R5 R6 ; [+3]
       41 LOADK                            R4 K10 ["universes"]
       42 JUMP                             ; [+1]
       43 LOADK                            R4 K11 [""]
       44 GETUPVAL                         R5 3
       45 CALL                             R2 3 1
       46 NAMECALL                         R2 R2 K12 ["makeRequest"]
       48 CALL                             R2 1 1
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R2 R2 K13 ["andThen"]
       53 CALL                             R2 2 1
       54 NEWCLOSURE                       R4 P1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R1
       58 NAMECALL                         R2 R2 K14 ["catch"]
       60 CALL                             R2 2 0
       61 RETURN                           R0 0

PROTO_81:
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
       17 DUPTABLE                         R5 K8 [{"originFolderId", "destinationFolderId", "items"}]
       18 SETTABLEKS                       R2 R5 K5 ["originFolderId"]
       20 SETTABLEKS                       R3 R5 K6 ["destinationFolderId"]
       22 SETTABLEKS                       R4 R5 K7 ["items"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K9 ["new"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CALL                             R6 1 -1
       35 RETURN                           R6 -1

PROTO_82:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["Urls"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["Services"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K17 ["GetService"]
       57 LOADK                            R8 K18 ["ContentProvider"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R6 K17 ["GetService"]
       61 LOADK                            R9 K19 ["GroupService"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R6 K17 ["GetService"]
       65 LOADK                            R10 K20 ["Players"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R6 K17 ["GetService"]
       69 LOADK                            R11 K21 ["StudioService"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R6 K17 ["GetService"]
       73 LOADK                            R12 K22 ["UserService"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R13 R13 K15 ["Util"]
       81 GETTABLEKS                       R13 R13 K23 ["constructItemPath"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K15 ["Util"]
       90 GETTABLEKS                       R14 R14 K24 ["convertAssetTypeStringToEnum"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K15 ["Util"]
       99 GETTABLEKS                       R15 R15 K25 ["convertFolderResponseToItem"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K6 ["Src"]
      106 GETTABLEKS                       R16 R16 K15 ["Util"]
      108 GETTABLEKS                       R16 R16 K26 ["convertModerationStringToEnum"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K6 ["Src"]
      115 GETTABLEKS                       R17 R17 K15 ["Util"]
      117 GETTABLEKS                       R17 R17 K27 ["createAssetGrantRequests"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K6 ["Src"]
      124 GETTABLEKS                       R18 R18 K15 ["Util"]
      126 GETTABLEKS                       R18 R18 K28 ["createCheckAssetPermissionRequests"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K5 [require]
      131 GETTABLEKS                       R19 R0 K6 ["Src"]
      133 GETTABLEKS                       R19 R19 K15 ["Util"]
      135 GETTABLEKS                       R19 R19 K29 ["createScopeUid"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R20 R0 K6 ["Src"]
      142 GETTABLEKS                       R20 R20 K15 ["Util"]
      144 GETTABLEKS                       R20 R20 K30 ["isAssetTypeComposite"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K5 [require]
      149 GETTABLEKS                       R21 R0 K6 ["Src"]
      151 GETTABLEKS                       R21 R21 K15 ["Util"]
      153 GETTABLEKS                       R21 R21 K31 ["isAssetTypePackageCompat"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K5 [require]
      158 GETTABLEKS                       R22 R0 K6 ["Src"]
      160 GETTABLEKS                       R22 R22 K32 ["Networking"]
      162 GETTABLEKS                       R22 R22 K33 ["isAssetOk"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K5 [require]
      167 GETTABLEKS                       R23 R0 K6 ["Src"]
      169 GETTABLEKS                       R23 R23 K15 ["Util"]
      171 GETTABLEKS                       R23 R23 K34 ["logIfDebug"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K5 [require]
      176 GETTABLEKS                       R24 R0 K6 ["Src"]
      178 GETTABLEKS                       R24 R24 K35 ["Flags"]
      180 GETTABLEKS                       R24 R24 K36 ["getFFlagAmrOrganizationFoundation"]
      182 CALL                             R23 1 1
      183 NEWTABLE                         R24 32 0
      185 LOADN                            R25 0
      186 SETTABLEKS                       R25 R24 K37 ["_fetchTotalAssets"]
      188 DUPCLOSURE                       R25 K38 [PROTO_0]
      189 CAPTURE                          VAL R1
      190 DUPCLOSURE                       R26 K39 [PROTO_1]
      191 CAPTURE                          VAL R24
      192 SETTABLEKS                       R26 R24 K40 ["setupNewFetchSession"]
      194 DUPCLOSURE                       R26 K41 [PROTO_2]
      195 CAPTURE                          VAL R24
      196 DUPCLOSURE                       R27 K42 [PROTO_4]
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R11
      199 SETTABLEKS                       R27 R24 K43 ["fetchUsername"]
      201 DUPCLOSURE                       R27 K44 [PROTO_7]
      202 CAPTURE                          VAL R5
      203 SETTABLEKS                       R27 R24 K45 ["fetchUniverseInfoAsync"]
      205 DUPCLOSURE                       R27 K46 [PROTO_10]
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R18
      209 SETTABLEKS                       R27 R24 K47 ["fetchGroupsAsync"]
      211 DUPCLOSURE                       R27 K48 [PROTO_11]
      212 SETTABLEKS                       R27 R24 K49 ["_delay"]
      214 DUPCLOSURE                       R27 K50 [PROTO_17]
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R3
      222 SETTABLEKS                       R27 R24 K51 ["fetchInventoryFolderReadyAsync"]
      224 DUPCLOSURE                       R27 K52 [PROTO_18]
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R18
      235 SETTABLEKS                       R27 R24 K53 ["_convertResponseToItemsData"]
      237 DUPCLOSURE                       R27 K54 [PROTO_19]
      238 SETTABLEKS                       R27 R24 K55 ["_checkResponse"]
      240 DUPCLOSURE                       R27 K56 [PROTO_24]
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R22
      246 CAPTURE                          VAL R4
      247 SETTABLEKS                       R27 R24 K57 ["_fetchAssetsImplAsync"]
      249 DUPCLOSURE                       R27 K58 [PROTO_25]
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R24
      254 SETTABLEKS                       R27 R24 K59 ["_parseFetchPlacesResponse"]
      256 DUPCLOSURE                       R27 K60 [PROTO_28]
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R24
      260 SETTABLEKS                       R27 R24 K61 ["fetchPlacesAsync"]
      262 DUPCLOSURE                       R27 K62 [PROTO_29]
      263 CAPTURE                          VAL R23
      264 CAPTURE                          VAL R1
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R5
      267 SETTABLEKS                       R27 R24 K63 ["fetchAssetsAsync"]
      269 DUPCLOSURE                       R27 K64 [PROTO_32]
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R4
      273 SETTABLEKS                       R27 R24 K65 ["_searchAssetsImplAsync"]
      275 DUPCLOSURE                       R27 K66 [PROTO_33]
      276 CAPTURE                          VAL R24
      277 SETTABLEKS                       R27 R24 K67 ["searchAssetsAsync"]
      279 DUPCLOSURE                       R27 K68 [PROTO_36]
      280 CAPTURE                          VAL R16
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R4
      284 SETTABLEKS                       R27 R24 K69 ["grantUniverseUseAssetsPermissions"]
      286 DUPCLOSURE                       R27 K70 [PROTO_39]
      287 CAPTURE                          VAL R16
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R22
      291 CAPTURE                          VAL R4
      292 SETTABLEKS                       R27 R24 K71 ["grantAssetsPermissionsAsync"]
      294 DUPCLOSURE                       R27 K72 [PROTO_42]
      295 CAPTURE                          VAL R17
      296 CAPTURE                          VAL R5
      297 CAPTURE                          VAL R22
      298 SETTABLEKS                       R27 R24 K73 ["checkAssetsPermissionsAsync"]
      300 DUPCLOSURE                       R27 K74 [PROTO_43]
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R22
      303 SETTABLEKS                       R27 R24 K75 ["getThumbnailUriForScope"]
      305 DUPCLOSURE                       R27 K76 [PROTO_45]
      306 CAPTURE                          VAL R24
      307 CAPTURE                          VAL R7
      308 CAPTURE                          VAL R22
      309 SETTABLEKS                       R27 R24 K77 ["getThumbnailForScopeAsync"]
      311 DUPCLOSURE                       R27 K78 [PROTO_46]
      312 CAPTURE                          VAL R1
      313 SETTABLEKS                       R27 R24 K79 ["getThumbnailForItem"]
      315 DUPCLOSURE                       R27 K80 [PROTO_49]
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R7
      318 CAPTURE                          VAL R22
      319 SETTABLEKS                       R27 R24 K81 ["getThumbnailForItemAsync"]
      321 DUPCLOSURE                       R27 K82 [PROTO_52]
      322 CAPTURE                          VAL R5
      323 SETTABLEKS                       R27 R24 K83 ["fetchPluginInfoAsync"]
      325 DUPCLOSURE                       R27 K84 [PROTO_55]
      326 CAPTURE                          VAL R5
      327 CAPTURE                          VAL R22
      328 CAPTURE                          VAL R4
      329 SETTABLEKS                       R27 R24 K85 ["_fetchAssetDependenciesAsync"]
      331 DUPCLOSURE                       R27 K86 [PROTO_58]
      332 CAPTURE                          VAL R5
      333 CAPTURE                          VAL R22
      334 CAPTURE                          VAL R4
      335 SETTABLEKS                       R27 R24 K87 ["_fetchIsPackageAsync"]
      337 DUPCLOSURE                       R27 K88 [PROTO_63]
      338 CAPTURE                          VAL R5
      339 CAPTURE                          VAL R9
      340 CAPTURE                          VAL R8
      341 CAPTURE                          VAL R13
      342 CAPTURE                          VAL R1
      343 CAPTURE                          VAL R18
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R15
      346 CAPTURE                          VAL R19
      347 CAPTURE                          VAL R24
      348 CAPTURE                          VAL R20
      349 CAPTURE                          VAL R22
      350 CAPTURE                          VAL R4
      351 SETTABLEKS                       R27 R24 K89 ["fetchAssetInfoAsync"]
      353 DUPCLOSURE                       R27 K90 [PROTO_65]
      354 CAPTURE                          VAL R1
      355 CAPTURE                          VAL R5
      356 CAPTURE                          VAL R24
      357 SETTABLEKS                       R27 R24 K91 ["fetchFoldersAsync"]
      359 DUPCLOSURE                       R27 K92 [PROTO_69]
      360 CAPTURE                          VAL R1
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R5
      363 CAPTURE                          VAL R14
      364 CAPTURE                          VAL R22
      365 CAPTURE                          VAL R4
      366 SETTABLEKS                       R27 R24 K93 ["createFolderAsync"]
      368 DUPCLOSURE                       R27 K94 [PROTO_73]
      369 CAPTURE                          VAL R3
      370 CAPTURE                          VAL R5
      371 CAPTURE                          VAL R22
      372 CAPTURE                          VAL R4
      373 SETTABLEKS                       R27 R24 K95 ["deleteFolderAsync"]
      375 DUPCLOSURE                       R27 K96 [PROTO_77]
      376 CAPTURE                          VAL R3
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R22
      379 CAPTURE                          VAL R4
      380 SETTABLEKS                       R27 R24 K97 ["updateFolderMetadataAsync"]
      382 DUPCLOSURE                       R27 K98 [PROTO_81]
      383 CAPTURE                          VAL R3
      384 CAPTURE                          VAL R5
      385 CAPTURE                          VAL R1
      386 CAPTURE                          VAL R22
      387 CAPTURE                          VAL R4
      388 SETTABLEKS                       R27 R24 K99 ["moveItemsAsync"]
      390 DUPCLOSURE                       R27 K100 [PROTO_82]
      391 SETTABLEKS                       R27 R24 K101 ["resume"]
      393 RETURN                           R24 1
