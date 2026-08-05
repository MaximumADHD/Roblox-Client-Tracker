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
        0 DUPTABLE                         R1 K2 [{[1] = 1}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U5
       11 GETUPVAL                         R3 6
       12 GETTABLEKS                       R3 R3 K3 ["new"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       10 JUMPIFNOT                        R9 ; [+23]
       11 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 MOVE                             R12 R1
       16 GETTABLEKS                       R13 R8 K1 ["path"]
       18 GETUPVAL                         R15 1
       19 GETTABLEKS                       R15 R15 K2 ["_fetchTotalAssets"]
       21 ADD                              R14 R15 R7
       22 CALL                             R10 4 1
       23 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       25 MOVE                             R12 R2
       26 MOVE                             R13 R10
       27 GETIMPORT                        R11 K5 [table.insert]
       29 CALL                             R11 2 0
       30 GETTABLEKS                       R11 R1 K6 ["Name"]
       32 SETTABLE                         R1 R3 R11
       33 JUMP                             ; [+227]
       34 GETUPVAL                         R9 2
       35 MOVE                             R10 R8
       36 CALL                             R9 1 1
       37 JUMPIF                           R9 ; [+13]
       38 GETUPVAL                         R9 3
       39 LOADK                            R11 K7 ["Could not convert asset response for asset %*"]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K8 ["pretty"]
       43 MOVE                             R14 R8
       44 CALL                             R13 1 1
       45 NAMECALL                         R11 R11 K9 ["format"]
       47 CALL                             R11 2 1
       48 MOVE                             R10 R11
       49 CALL                             R9 1 0
       50 JUMP                             ; [+210]
       51 GETTABLEKS                       R9 R8 K10 ["assetItem"]
       53 GETTABLEKS                       R10 R9 K11 ["asset"]
       55 GETTABLEKS                       R12 R9 K12 ["sources"]
       57 GETTABLEN                        R11 R12 1
       58 GETTABLEKS                       R12 R9 K11 ["asset"]
       60 GETTABLEKS                       R12 R12 K13 ["creationContext"]
       62 GETTABLEKS                       R12 R12 K14 ["creator"]
       64 GETTABLEKS                       R14 R12 K15 ["userId"]
       66 JUMPIFNOT                        R14 ; [+3]
       67 GETTABLEKS                       R13 R12 K15 ["userId"]
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R13 R12 K16 ["groupId"]
       72 GETTABLEKS                       R15 R12 K17 ["name"]
       74 JUMPIFNOT                        R15 ; [+3]
       75 GETTABLEKS                       R14 R12 K17 ["name"]
       77 JUMP                             ; [+5]
       78 FASTCALL1                        TOSTRING R13 ; [+3]
       79 MOVE                             R15 R13
       80 GETIMPORT                        R14 K19 [tostring]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R16 R12 K15 ["userId"]
       85 JUMPIFNOT                        R16 ; [+6]
       86 GETUPVAL                         R15 5
       87 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       89 GETTABLEKS                       R15 R15 K21 ["User"]
       91 JUMP                             ; [+5]
       92 GETUPVAL                         R15 5
       93 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       95 GETTABLEKS                       R15 R15 K22 ["Group"]
       97 GETTABLEKS                       R17 R10 K23 ["state"]
       99 JUMPIFEQKS                       R17 K24 ["STATE_ARCHIVED"] ; [+2]
      101 LOADB                            R16 0 +1
      102 LOADB                            R16 1
      103 GETTABLEKS                       R18 R11 K25 ["createdDetails"]
      105 JUMPIFNOT                        R18 ; [+6]
      106 GETUPVAL                         R17 5
      107 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      109 GETTABLEKS                       R17 R17 K27 ["Uploaded"]
      111 JUMP                             ; [+23]
      112 GETTABLEKS                       R18 R11 K28 ["purchasedDetails"]
      114 JUMPIFNOT                        R18 ; [+6]
      115 GETUPVAL                         R17 5
      116 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      118 GETTABLEKS                       R17 R17 K29 ["CreatorStore"]
      120 JUMP                             ; [+14]
      121 GETTABLEKS                       R18 R11 K30 ["sharedDetails"]
      123 JUMPIFNOT                        R18 ; [+6]
      124 GETUPVAL                         R17 5
      125 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      127 GETTABLEKS                       R17 R17 K31 ["SharedWithMe"]
      129 JUMP                             ; [+5]
      130 GETUPVAL                         R17 5
      131 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      133 GETTABLEKS                       R17 R17 K32 ["Unknown"]
      135 GETIMPORT                        R18 K35 [DateTime.fromIsoDate]
      137 GETTABLEKS                       R19 R10 K36 ["createTime"]
      139 CALL                             R18 1 1
      140 GETUPVAL                         R20 6
      141 CALL                             R20 0 1
      142 JUMPIFNOT                        R20 ; [+4]
      143 JUMPIFNOT                        R18 ; [+3]
      144 GETTABLEKS                       R19 R18 K37 ["UnixTimestampMillis"]
      146 JUMP                             ; [+1]
      147 LOADN                            R19 0
      148 GETIMPORT                        R20 K35 [DateTime.fromIsoDate]
      150 GETTABLEKS                       R21 R10 K38 ["updateTime"]
      152 CALL                             R20 1 1
      153 GETUPVAL                         R22 6
      154 CALL                             R22 0 1
      155 JUMPIFNOT                        R22 ; [+4]
      156 JUMPIFNOT                        R20 ; [+3]
      157 GETTABLEKS                       R21 R20 K37 ["UnixTimestampMillis"]
      159 JUMP                             ; [+1]
      160 LOADN                            R21 0
      161 DUPTABLE                         R22 K51 [{"Path", "AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      162 GETTABLEKS                       R24 R8 K1 ["path"]
      164 JUMPIFNOT                        R24 ; [+7]
      165 GETTABLEKS                       R24 R8 K1 ["path"]
      167 JUMPIFEQKS                       R24 K52 [""] ; [+4]
      169 GETTABLEKS                       R23 R8 K1 ["path"]
      171 JUMP                             ; [+5]
      172 GETUPVAL                         R23 7
      173 MOVE                             R24 R1
      174 GETTABLEKS                       R25 R10 K53 ["assetId"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K39 ["Path"]
      179 GETTABLEKS                       R23 R10 K53 ["assetId"]
      181 SETTABLEKS                       R23 R22 K40 ["AssetId"]
      183 GETUPVAL                         R23 8
      184 GETTABLEKS                       R24 R10 K54 ["assetType"]
      186 CALL                             R23 1 1
      187 SETTABLEKS                       R23 R22 K41 ["AssetType"]
      189 GETTABLEKS                       R23 R10 K55 ["displayName"]
      191 SETTABLEKS                       R23 R22 K42 ["DisplayName"]
      193 GETUPVAL                         R24 6
      194 CALL                             R24 0 1
      195 JUMPIFNOT                        R24 ; [+2]
      196 MOVE                             R23 R19
      197 JUMP                             ; [+2]
      198 GETTABLEKS                       R23 R10 K36 ["createTime"]
      200 SETTABLEKS                       R23 R22 K43 ["Created"]
      202 GETUPVAL                         R24 6
      203 CALL                             R24 0 1
      204 JUMPIFNOT                        R24 ; [+2]
      205 MOVE                             R23 R21
      206 JUMP                             ; [+2]
      207 GETTABLEKS                       R23 R10 K38 ["updateTime"]
      209 SETTABLEKS                       R23 R22 K44 ["Modified"]
      211 GETUPVAL                         R23 5
      212 GETTABLEKS                       R23 R23 K45 ["ModerationStatus"]
      214 GETTABLEKS                       R23 R23 K56 ["Placeholder"]
      216 SETTABLEKS                       R23 R22 K45 ["ModerationStatus"]
      218 DUPTABLE                         R23 K60 [{"Id", "Name", "Type", "Uid"}]
      219 SETTABLEKS                       R13 R23 K57 ["Id"]
      221 SETTABLEKS                       R14 R23 K6 ["Name"]
      223 SETTABLEKS                       R15 R23 K58 ["Type"]
      225 GETUPVAL                         R24 9
      226 MOVE                             R25 R15
      227 MOVE                             R26 R13
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K59 ["Uid"]
      231 SETTABLEKS                       R23 R22 K46 ["Creator"]
      233 SETTABLEKS                       R17 R22 K47 ["Source"]
      235 SETTABLEKS                       R16 R22 K48 ["Archived"]
      237 GETTABLEKS                       R23 R9 K61 ["isPackage"]
      239 SETTABLEKS                       R23 R22 K49 ["IsPackage"]
      241 GETUPVAL                         R24 1
      242 GETTABLEKS                       R24 R24 K2 ["_fetchTotalAssets"]
      244 ADD                              R23 R24 R7
      245 SETTABLEKS                       R23 R22 K50 ["SearchRank"]
      247 FASTCALL2                        TABLE_INSERT R2 R22 ; [+5]
      249 MOVE                             R24 R2
      250 MOVE                             R25 R22
      251 GETIMPORT                        R23 K5 [table.insert]
      253 CALL                             R23 2 0
      254 GETTABLEKS                       R23 R22 K46 ["Creator"]
      256 GETTABLEKS                       R23 R23 K6 ["Name"]
      258 GETTABLEKS                       R24 R22 K46 ["Creator"]
      260 SETTABLE                         R24 R3 R23
      261 FORGLOOP                         R4 2 ; [-254]
      263 RETURN                           R2 2

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
        0 DUPTABLE                         R4 K2 [{"maxPageSize", "pageToken"}]
        1 GETTABLEKS                       R5 R0 K3 ["MaxPageSize"]
        3 SETTABLEKS                       R5 R4 K0 ["maxPageSize"]
        5 GETTABLEKS                       R5 R0 K4 ["PageToken"]
        7 SETTABLEKS                       R5 R4 K1 ["pageToken"]
        9 GETTABLEKS                       R5 R0 K5 ["ScopeInfo"]
       11 GETTABLEKS                       R7 R5 K6 ["Type"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       16 GETTABLEKS                       R8 R8 K8 ["Folder"]
       18 JUMPIFNOTEQ                      R7 R8 ; [+4]
       20 GETTABLEKS                       R6 R5 K9 ["Path"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K10 ["CreateGetItemsRequest"]
       27 GETTABLEKS                       R8 R5 K11 ["Id"]
       29 GETTABLEKS                       R10 R5 K6 ["Type"]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       34 GETTABLEKS                       R11 R11 K12 ["User"]
       36 JUMPIFNOTEQ                      R10 R11 ; [+3]
       38 LOADK                            R9 K13 ["users"]
       39 JUMP                             ; [+26]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       43 GETTABLEKS                       R11 R11 K14 ["Group"]
       45 JUMPIFNOTEQ                      R10 R11 ; [+3]
       47 LOADK                            R9 K15 ["groups"]
       48 JUMP                             ; [+17]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       52 GETTABLEKS                       R11 R11 K16 ["Universe"]
       54 JUMPIFEQ                         R10 R11 ; [+8]
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       59 GETTABLEKS                       R11 R11 K17 ["ProjectShared"]
       61 JUMPIFNOTEQ                      R10 R11 ; [+3]
       63 LOADK                            R9 K18 ["universes"]
       64 JUMP                             ; [+1]
       65 LOADK                            R9 K19 [""]
       66 MOVE                             R10 R6
       67 MOVE                             R11 R4
       68 CALL                             R7 4 1
       69 NAMECALL                         R7 R7 K20 ["makeRequest"]
       71 CALL                             R7 1 1
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          VAL R3
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R0
       86 NAMECALL                         R7 R7 K21 ["andThen"]
       88 CALL                             R7 3 0
       89 RETURN                           R0 0

PROTO_23:
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
       42 GETIMPORT                        R11 K11 [DateTime.fromIsoDate]
       44 GETTABLEKS                       R12 R10 K12 ["created"]
       46 CALL                             R11 1 1
       47 GETUPVAL                         R13 2
       48 CALL                             R13 0 1
       49 JUMPIFNOT                        R13 ; [+4]
       50 JUMPIFNOT                        R11 ; [+3]
       51 GETTABLEKS                       R12 R11 K13 ["UnixTimestampMillis"]
       53 JUMP                             ; [+1]
       54 LOADN                            R12 0
       55 GETIMPORT                        R13 K11 [DateTime.fromIsoDate]
       57 GETTABLEKS                       R14 R10 K14 ["updated"]
       59 CALL                             R13 1 1
       60 GETUPVAL                         R15 2
       61 CALL                             R15 0 1
       62 JUMPIFNOT                        R15 ; [+4]
       63 JUMPIFNOT                        R13 ; [+3]
       64 GETTABLEKS                       R14 R13 K13 ["UnixTimestampMillis"]
       66 JUMP                             ; [+1]
       67 LOADN                            R14 0
       68 DUPTABLE                         R15 K27 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"]}]
       69 GETUPVAL                         R16 3
       70 GETTABLEKS                       R18 R1 K0 ["Name"]
       72 GETTABLE                         R17 R3 R18
       73 GETTABLEKS                       R18 R10 K28 ["id"]
       75 CALL                             R16 2 1
       76 SETTABLEKS                       R16 R15 K15 ["Path"]
       78 GETTABLEKS                       R16 R10 K28 ["id"]
       80 SETTABLEKS                       R16 R15 K16 ["AssetId"]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K17 ["AssetType"]
       85 GETTABLEKS                       R16 R16 K29 ["Place"]
       87 SETTABLEKS                       R16 R15 K17 ["AssetType"]
       89 GETTABLEKS                       R16 R10 K30 ["name"]
       91 SETTABLEKS                       R16 R15 K18 ["DisplayName"]
       93 GETUPVAL                         R17 2
       94 CALL                             R17 0 1
       95 JUMPIFNOT                        R17 ; [+2]
       96 MOVE                             R16 R12
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R16 R10 K12 ["created"]
      100 SETTABLEKS                       R16 R15 K19 ["Created"]
      102 GETUPVAL                         R17 2
      103 CALL                             R17 0 1
      104 JUMPIFNOT                        R17 ; [+2]
      105 MOVE                             R16 R14
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R16 R10 K14 ["updated"]
      109 SETTABLEKS                       R16 R15 K20 ["Modified"]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K21 ["ModerationStatus"]
      114 GETTABLEKS                       R16 R16 K31 ["Placeholder"]
      116 SETTABLEKS                       R16 R15 K21 ["ModerationStatus"]
      118 GETTABLEKS                       R17 R1 K0 ["Name"]
      120 GETTABLE                         R16 R3 R17
      121 SETTABLEKS                       R16 R15 K22 ["Creator"]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K32 ["AssetSource"]
      126 GETTABLEKS                       R16 R16 K33 ["Uploaded"]
      128 SETTABLEKS                       R16 R15 K23 ["Source"]
      130 GETUPVAL                         R17 4
      131 GETTABLEKS                       R17 R17 K34 ["_fetchTotalAssets"]
      133 ADD                              R16 R17 R9
      134 SETTABLEKS                       R16 R15 K26 ["SearchRank"]
      136 FASTCALL2                        TABLE_INSERT R2 R15 ; [+5]
      138 MOVE                             R17 R2
      139 MOVE                             R18 R15
      140 GETIMPORT                        R16 K37 [table.insert]
      142 CALL                             R16 2 0
      143 GETTABLEKS                       R16 R10 K38 ["isRootPlace"]
      145 JUMPIFNOT                        R16 ; [+2]
      146 GETTABLEKS                       R4 R10 K28 ["id"]
      148 FORGLOOP                         R6 2 ; [-107]
      150 MOVE                             R6 R2
      151 MOVE                             R7 R3
      152 MOVE                             R8 R4
      153 GETTABLEKS                       R9 R5 K39 ["nextPageCursor"]
      155 RETURN                           R6 4

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+17]
        3 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        5 GETTABLEKS                       R3 R3 K1 ["Type"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       10 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       12 JUMPIFEQ                         R3 R4 ; [+34]
       14 GETTABLEKS                       R3 R0 K4 ["Resolve"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 JUMP                             ; [+27]
       20 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
       22 GETTABLEKS                       R3 R3 K1 ["Type"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       27 GETTABLEKS                       R4 R4 K5 ["Universe"]
       29 JUMPIFEQ                         R3 R4 ; [+17]
       31 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
       33 GETTABLEKS                       R3 R3 K1 ["Type"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       38 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       40 JUMPIFEQ                         R3 R4 ; [+6]
       42 GETTABLEKS                       R3 R0 K4 ["Resolve"]
       44 LOADB                            R4 0
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
       47 GETTABLEKS                       R4 R0 K7 ["PageToken"]
       49 ORK                              R3 R4 K6 [""]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R4 R4 K8 ["CreateFetchPlacesRequest"]
       53 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       55 GETTABLEKS                       R5 R5 K9 ["Id"]
       57 MOVE                             R6 R3
       58 LOADN                            R7 100
       59 CALL                             R4 3 1
       60 NAMECALL                         R4 R4 K10 ["makeRequest"]
       62 CALL                             R4 1 1
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 NEWCLOSURE                       R7 P1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R0
       72 NAMECALL                         R4 R4 K11 ["andThen"]
       74 CALL                             R4 3 0
       75 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+12]
        3 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        5 GETTABLEKS                       R3 R3 K1 ["Type"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       10 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 CALL                             R3 0 1
       17 JUMPIF                           R3 ; [+19]
       18 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
       20 GETTABLEKS                       R3 R3 K1 ["Type"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
       25 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+9]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K4 ["fetchPlacesAsync"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R3 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K5 ["_fetchAssetsImplAsync"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R1
       42 MOVE                             R6 R2
       43 CALL                             R3 3 0
       44 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_searchAssetsImplAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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
       14 DUPCLOSURE                       R5 K4 [PROTO_32]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R3 R3 K5 ["andThen"]
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R5 K6 [PROTO_33]
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R3 R3 K7 ["catch"]
       24 CALL                             R3 2 1
       25 NAMECALL                         R3 R3 K8 ["await"]
       27 CALL                             R3 1 2
       28 RETURN                           R3 2

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R3 R1 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_59:
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
       93 GETIMPORT                        R8 K23 [DateTime.fromIsoDate]
       95 GETTABLEKS                       R9 R1 K24 ["revisionCreateTime"]
       97 CALL                             R8 1 1
       98 GETUPVAL                         R10 6
       99 CALL                             R10 0 1
      100 JUMPIFNOT                        R10 ; [+4]
      101 JUMPIFNOT                        R8 ; [+3]
      102 GETTABLEKS                       R9 R8 K25 ["UnixTimestampMillis"]
      104 JUMP                             ; [+1]
      105 LOADN                            R9 0
      106 GETIMPORT                        R10 K23 [DateTime.fromIsoDate]
      108 GETTABLEKS                       R11 R1 K24 ["revisionCreateTime"]
      110 CALL                             R10 1 1
      111 GETUPVAL                         R12 6
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+4]
      114 JUMPIFNOT                        R10 ; [+3]
      115 GETTABLEKS                       R11 R10 K25 ["UnixTimestampMillis"]
      117 JUMP                             ; [+1]
      118 LOADN                            R11 0
      119 DUPTABLE                         R12 K38 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"], ["IsPackage"] = }]
      120 GETUPVAL                         R13 7
      121 MOVE                             R14 R7
      122 GETUPVAL                         R15 8
      123 CALL                             R13 2 1
      124 SETTABLEKS                       R13 R12 K26 ["Path"]
      126 GETUPVAL                         R13 8
      127 SETTABLEKS                       R13 R12 K27 ["AssetId"]
      129 SETTABLEKS                       R5 R12 K28 ["AssetType"]
      131 GETTABLEKS                       R13 R1 K39 ["displayName"]
      133 SETTABLEKS                       R13 R12 K29 ["DisplayName"]
      135 GETUPVAL                         R14 6
      136 CALL                             R14 0 1
      137 JUMPIFNOT                        R14 ; [+2]
      138 MOVE                             R13 R9
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R13 R1 K24 ["revisionCreateTime"]
      142 SETTABLEKS                       R13 R12 K30 ["Created"]
      144 GETUPVAL                         R14 6
      145 CALL                             R14 0 1
      146 JUMPIFNOT                        R14 ; [+2]
      147 MOVE                             R13 R11
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R13 R1 K24 ["revisionCreateTime"]
      151 SETTABLEKS                       R13 R12 K31 ["Modified"]
      153 GETUPVAL                         R13 9
      154 GETTABLEKS                       R14 R1 K40 ["moderationResult"]
      156 GETTABLEKS                       R14 R14 K41 ["moderationState"]
      158 CALL                             R13 1 1
      159 SETTABLEKS                       R13 R12 K32 ["ModerationStatus"]
      161 SETTABLEKS                       R7 R12 K33 ["Creator"]
      163 GETUPVAL                         R13 4
      164 GETTABLEKS                       R13 R13 K42 ["AssetSource"]
      166 GETTABLEKS                       R13 R13 K43 ["Uploaded"]
      168 SETTABLEKS                       R13 R12 K34 ["Source"]
      170 GETTABLEKS                       R14 R1 K44 ["state"]
      172 JUMPIFNOTEQKS                    R14 K45 ["Active"] ; [+2]
      174 LOADB                            R13 0 +1
      175 LOADB                            R13 1
      176 SETTABLEKS                       R13 R12 K35 ["Archived"]
      178 GETUPVAL                         R13 10
      179 JUMPIFNOT                        R13 ; [+15]
      180 GETUPVAL                         R13 11
      181 GETTABLEKS                       R14 R12 K28 ["AssetType"]
      183 CALL                             R13 1 1
      184 JUMPIFNOT                        R13 ; [+10]
      185 GETUPVAL                         R13 12
      186 GETTABLEKS                       R13 R13 K46 ["_fetchAssetDependenciesAsync"]
      188 GETUPVAL                         R14 8
      189 NEWCLOSURE                       R15 P0
      190 CAPTURE                          UPVAL U12
      191 CAPTURE                          UPVAL U0
      192 CAPTURE                          UPVAL U13
      193 CAPTURE                          UPVAL U14
      194 CALL                             R13 2 0
      195 GETUPVAL                         R13 15
      196 GETTABLEKS                       R14 R12 K28 ["AssetType"]
      198 CALL                             R13 1 1
      199 JUMPIFNOT                        R13 ; [+9]
      200 GETUPVAL                         R13 12
      201 GETTABLEKS                       R13 R13 K47 ["_fetchIsPackageAsync"]
      203 GETUPVAL                         R14 8
      204 NEWCLOSURE                       R15 P1
      205 CAPTURE                          VAL R12
      206 CAPTURE                          UPVAL U13
      207 CALL                             R13 2 0
      208 RETURN                           R0 0
      209 GETUPVAL                         R13 13
      210 MOVE                             R14 R12
      211 CALL                             R13 1 0
      212 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
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
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U11
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          UPVAL U12
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U13
       29 CAPTURE                          VAL R4
       30 NAMECALL                         R5 R5 K2 ["andThen"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateCreateFolderRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 CALL                             R2 4 1
        8 NAMECALL                         R2 R2 K1 ["makeRequest"]
       10 CALL                             R2 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R2 R2 K3 ["catch"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_67:
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
      100 NEWTABLE                         R5 1 0
      102 GETTABLEKS                       R6 R0 K14 ["PluginSessionId"]
      104 SETTABLEKS                       R6 R5 K15 ["rbx-inventory-session-id"]
      106 DUPTABLE                         R6 K17 [{"folderItem"}]
      107 DUPTABLE                         R7 K19 [{"folder"}]
      108 DUPTABLE                         R8 K22 [{"displayName", "parentFolderId"}]
      109 GETTABLEKS                       R9 R0 K23 ["FolderName"]
      111 SETTABLEKS                       R9 R8 K20 ["displayName"]
      113 SETTABLEKS                       R1 R8 K21 ["parentFolderId"]
      115 SETTABLEKS                       R8 R7 K18 ["folder"]
      117 SETTABLEKS                       R7 R6 K16 ["folderItem"]
      119 GETUPVAL                         R7 1
      120 GETTABLEKS                       R7 R7 K24 ["new"]
      122 NEWCLOSURE                       R8 P0
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          REF R2
      125 CAPTURE                          REF R3
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R5
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U5
      132 CALL                             R7 1 -1
      133 CLOSEUPVALS                      R2
      134 RETURN                           R7 -1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateDeleteFolderRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["makeRequest"]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["andThen"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K3 ["catch"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_71:
        0 NEWTABLE                         R2 1 0
        2 SETTABLEKS                       R1 R2 K0 ["rbx-inventory-session-id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
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
       15 GETUPVAL                         R6 3
       16 CALL                             R3 3 1
       17 NAMECALL                         R3 R3 K7 ["makeRequest"]
       19 CALL                             R3 1 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K8 ["andThen"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R3 R3 K9 ["catch"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_75:
        0 NEWTABLE                         R3 1 0
        2 SETTABLEKS                       R2 R3 K0 ["rbx-inventory-session-id"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["new"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_76:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Failed to get item parents: %*"]
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

PROTO_78:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateGetItemParentsRequest"]
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
       51 CAPTURE                          UPVAL U4
       52 NAMECALL                         R2 R2 K13 ["andThen"]
       54 CALL                             R2 2 1
       55 NEWCLOSURE                       R4 P1
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R1
       59 NAMECALL                         R2 R2 K14 ["catch"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_79:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K1 [{"path"}]
        7 SETTABLEKS                       R7 R10 K0 ["path"]
        9 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-10]
       17 DUPTABLE                         R3 K6 [{"items"}]
       18 SETTABLEKS                       R2 R3 K5 ["items"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["new"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateMoveItemsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Account"]
        6 GETTABLEKS                       R3 R3 K2 ["Id"]
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 GETUPVAL                         R6 4
       11 CALL                             R2 4 1
       12 NAMECALL                         R2 R2 K3 ["makeRequest"]
       14 CALL                             R2 1 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R2 R2 K4 ["andThen"]
       19 CALL                             R2 2 1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R2 R2 K5 ["catch"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_83:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Paths"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K2 [{"path"}]
        8 SETTABLEKS                       R6 R9 K1 ["path"]
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K5 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-10]
       18 DUPTABLE                         R2 K9 [{"originFolderId", "destinationFolderId", "items"}]
       19 GETTABLEKS                       R3 R0 K10 ["Origin"]
       21 SETTABLEKS                       R3 R2 K6 ["originFolderId"]
       23 GETTABLEKS                       R3 R0 K11 ["Destination"]
       25 SETTABLEKS                       R3 R2 K7 ["destinationFolderId"]
       27 SETTABLEKS                       R1 R2 K8 ["items"]
       29 NEWTABLE                         R3 1 0
       31 GETTABLEKS                       R4 R0 K12 ["PluginSessionId"]
       33 SETTABLEKS                       R4 R3 K13 ["rbx-inventory-session-id"]
       35 GETTABLEKS                       R5 R0 K14 ["Account"]
       37 GETTABLEKS                       R5 R5 K15 ["Type"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K17 ["User"]
       44 JUMPIFNOTEQ                      R5 R6 ; [+3]
       46 LOADK                            R4 K18 ["users"]
       47 JUMP                             ; [+26]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       51 GETTABLEKS                       R6 R6 K19 ["Group"]
       53 JUMPIFNOTEQ                      R5 R6 ; [+3]
       55 LOADK                            R4 K20 ["groups"]
       56 JUMP                             ; [+17]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       60 GETTABLEKS                       R6 R6 K21 ["Universe"]
       62 JUMPIFEQ                         R5 R6 ; [+8]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       67 GETTABLEKS                       R6 R6 K22 ["ProjectShared"]
       69 JUMPIFNOTEQ                      R5 R6 ; [+3]
       71 LOADK                            R4 K23 ["universes"]
       72 JUMP                             ; [+1]
       73 LOADK                            R4 K24 [""]
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R5 R5 K25 ["new"]
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U4
       85 CALL                             R5 1 -1
       86 RETURN                           R5 -1

PROTO_84:
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
      180 GETTABLEKS                       R24 R24 K36 ["getFFlagAmrOptimizeLoadingPerformance"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K5 [require]
      185 GETTABLEKS                       R25 R0 K6 ["Src"]
      187 GETTABLEKS                       R25 R25 K35 ["Flags"]
      189 GETTABLEKS                       R25 R25 K37 ["getFFlagAmrUnifyGameScopeType"]
      191 CALL                             R24 1 1
      192 NEWTABLE                         R25 64 0
      194 LOADN                            R26 0
      195 SETTABLEKS                       R26 R25 K38 ["_fetchTotalAssets"]
      197 DUPCLOSURE                       R26 K39 [PROTO_0]
      198 CAPTURE                          VAL R1
      199 DUPCLOSURE                       R27 K40 [PROTO_1]
      200 CAPTURE                          VAL R25
      201 SETTABLEKS                       R27 R25 K41 ["setupNewFetchSession"]
      203 DUPCLOSURE                       R27 K42 [PROTO_2]
      204 CAPTURE                          VAL R25
      205 DUPCLOSURE                       R28 K43 [PROTO_4]
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R11
      208 SETTABLEKS                       R28 R25 K44 ["fetchUsername"]
      210 DUPCLOSURE                       R28 K45 [PROTO_7]
      211 CAPTURE                          VAL R5
      212 SETTABLEKS                       R28 R25 K46 ["fetchUniverseInfoAsync"]
      214 DUPCLOSURE                       R28 K47 [PROTO_10]
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R18
      218 SETTABLEKS                       R28 R25 K48 ["fetchGroupsAsync"]
      220 DUPCLOSURE                       R28 K49 [PROTO_11]
      221 SETTABLEKS                       R28 R25 K50 ["_delay"]
      223 DUPCLOSURE                       R28 K51 [PROTO_17]
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R3
      231 SETTABLEKS                       R28 R25 K52 ["fetchInventoryFolderReadyAsync"]
      233 DUPCLOSURE                       R28 K53 [PROTO_18]
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R18
      244 SETTABLEKS                       R28 R25 K54 ["_convertResponseToItemsData"]
      246 DUPCLOSURE                       R28 K55 [PROTO_19]
      247 SETTABLEKS                       R28 R25 K56 ["_checkResponse"]
      249 DUPCLOSURE                       R28 K57 [PROTO_22]
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R4
      255 SETTABLEKS                       R28 R25 K58 ["_fetchAssetsImplAsync"]
      257 DUPCLOSURE                       R28 K59 [PROTO_23]
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R25
      263 SETTABLEKS                       R28 R25 K60 ["_parseFetchPlacesResponse"]
      265 DUPCLOSURE                       R28 K61 [PROTO_26]
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R25
      270 SETTABLEKS                       R28 R25 K62 ["fetchPlacesAsync"]
      272 DUPCLOSURE                       R28 K63 [PROTO_27]
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R25
      276 SETTABLEKS                       R28 R25 K64 ["fetchAssetsAsync"]
      278 DUPCLOSURE                       R28 K65 [PROTO_30]
      279 CAPTURE                          VAL R5
      280 CAPTURE                          VAL R25
      281 CAPTURE                          VAL R4
      282 SETTABLEKS                       R28 R25 K66 ["_searchAssetsImplAsync"]
      284 DUPCLOSURE                       R28 K67 [PROTO_31]
      285 CAPTURE                          VAL R25
      286 SETTABLEKS                       R28 R25 K68 ["searchAssetsAsync"]
      288 DUPCLOSURE                       R28 K69 [PROTO_34]
      289 CAPTURE                          VAL R16
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R22
      292 CAPTURE                          VAL R4
      293 SETTABLEKS                       R28 R25 K70 ["grantUniverseUseAssetsPermissions"]
      295 DUPCLOSURE                       R28 K71 [PROTO_37]
      296 CAPTURE                          VAL R16
      297 CAPTURE                          VAL R5
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R22
      300 CAPTURE                          VAL R4
      301 SETTABLEKS                       R28 R25 K72 ["grantAssetsPermissionsAsync"]
      303 DUPCLOSURE                       R28 K73 [PROTO_40]
      304 CAPTURE                          VAL R17
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R22
      307 SETTABLEKS                       R28 R25 K74 ["checkAssetsPermissionsAsync"]
      309 DUPCLOSURE                       R28 K75 [PROTO_41]
      310 CAPTURE                          VAL R1
      311 CAPTURE                          VAL R22
      312 SETTABLEKS                       R28 R25 K76 ["getThumbnailUriForScope"]
      314 DUPCLOSURE                       R28 K77 [PROTO_43]
      315 CAPTURE                          VAL R25
      316 CAPTURE                          VAL R7
      317 CAPTURE                          VAL R22
      318 SETTABLEKS                       R28 R25 K78 ["getThumbnailForScopeAsync"]
      320 DUPCLOSURE                       R28 K79 [PROTO_44]
      321 CAPTURE                          VAL R1
      322 SETTABLEKS                       R28 R25 K80 ["getThumbnailForItem"]
      324 DUPCLOSURE                       R28 K81 [PROTO_47]
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R7
      327 CAPTURE                          VAL R22
      328 SETTABLEKS                       R28 R25 K82 ["getThumbnailForItemAsync"]
      330 DUPCLOSURE                       R28 K83 [PROTO_50]
      331 CAPTURE                          VAL R5
      332 SETTABLEKS                       R28 R25 K84 ["fetchPluginInfoAsync"]
      334 DUPCLOSURE                       R28 K85 [PROTO_53]
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R4
      338 SETTABLEKS                       R28 R25 K86 ["_fetchAssetDependenciesAsync"]
      340 DUPCLOSURE                       R28 K87 [PROTO_56]
      341 CAPTURE                          VAL R5
      342 CAPTURE                          VAL R22
      343 CAPTURE                          VAL R4
      344 SETTABLEKS                       R28 R25 K88 ["_fetchIsPackageAsync"]
      346 DUPCLOSURE                       R28 K89 [PROTO_61]
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R9
      349 CAPTURE                          VAL R8
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R1
      352 CAPTURE                          VAL R18
      353 CAPTURE                          VAL R23
      354 CAPTURE                          VAL R12
      355 CAPTURE                          VAL R15
      356 CAPTURE                          VAL R19
      357 CAPTURE                          VAL R25
      358 CAPTURE                          VAL R20
      359 CAPTURE                          VAL R22
      360 CAPTURE                          VAL R4
      361 SETTABLEKS                       R28 R25 K90 ["fetchAssetInfoAsync"]
      363 DUPCLOSURE                       R28 K91 [PROTO_63]
      364 CAPTURE                          VAL R1
      365 CAPTURE                          VAL R5
      366 CAPTURE                          VAL R25
      367 SETTABLEKS                       R28 R25 K92 ["fetchFoldersAsync"]
      369 DUPCLOSURE                       R28 K93 [PROTO_67]
      370 CAPTURE                          VAL R1
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R5
      373 CAPTURE                          VAL R14
      374 CAPTURE                          VAL R22
      375 CAPTURE                          VAL R4
      376 SETTABLEKS                       R28 R25 K94 ["createFolderAsync"]
      378 DUPCLOSURE                       R28 K95 [PROTO_71]
      379 CAPTURE                          VAL R3
      380 CAPTURE                          VAL R5
      381 CAPTURE                          VAL R22
      382 CAPTURE                          VAL R4
      383 SETTABLEKS                       R28 R25 K96 ["deleteFolderAsync"]
      385 DUPCLOSURE                       R28 K97 [PROTO_75]
      386 CAPTURE                          VAL R3
      387 CAPTURE                          VAL R5
      388 CAPTURE                          VAL R22
      389 CAPTURE                          VAL R4
      390 SETTABLEKS                       R28 R25 K98 ["updateFolderMetadataAsync"]
      392 DUPCLOSURE                       R28 K99 [PROTO_79]
      393 CAPTURE                          VAL R3
      394 CAPTURE                          VAL R5
      395 CAPTURE                          VAL R1
      396 CAPTURE                          VAL R22
      397 CAPTURE                          VAL R4
      398 SETTABLEKS                       R28 R25 K100 ["getItemParentsAsync"]
      400 DUPCLOSURE                       R28 K101 [PROTO_83]
      401 CAPTURE                          VAL R1
      402 CAPTURE                          VAL R3
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R22
      405 CAPTURE                          VAL R4
      406 SETTABLEKS                       R28 R25 K102 ["moveItemsAsync"]
      408 DUPCLOSURE                       R28 K103 [PROTO_84]
      409 SETTABLEKS                       R28 R25 K104 ["resume"]
      411 RETURN                           R25 1
